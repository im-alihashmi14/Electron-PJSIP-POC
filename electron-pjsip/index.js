const { app, BrowserWindow, ipcMain } = require('electron');
const path = require('path');
const pjsip = require('bindings')('pjsip');

let mainWindow;

function createWindow() {
  mainWindow = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false
    }
  });

  mainWindow.loadFile('index.html');

  // Initialize PJSIP when the app starts
  try {
    console.log('Initializing PJSIP...',{pjsip});
    pjsip.initialize();
    console.log('PJSIP initialized successfully');

    // Set up a callback for PJSIP events (e.g., call state changes)
    // This is a hypothetical example; the actual implementation depends on your pjsip native module
    if (typeof pjsip.setCallStatusCallback === 'function') {
      pjsip.setCallStatusCallback((event) => {
        if (mainWindow && event && event.type) {
          console.log('Received PJSIP event:', event);
          // Forward the event to the renderer process
          // Example event types: 'call_state_ringing', 'call_state_connected', 'call_state_disconnected'
          mainWindow.webContents.send('pjsip-call-state-update', event);
        }
      });
      console.log('PJSIP call status callback registered.');
    } else {
      console.warn('pjsip.setCallStatusCallback is not a function. Detailed call status updates might not be available.');
    }
    
    // Set up a callback for PJSIP call state changes (native-to-JS)
    if (typeof pjsip.setCallStateCallback === 'function') {
      pjsip.setCallStateCallback((callId, state, stateText) => {
        if (mainWindow) {
          mainWindow.webContents.send('pjsip-call-state-update', {
            callId,
            state,
            stateText
          });
        }
      });
      console.log('PJSIP call state callback registered.');
    } else {
      console.warn('pjsip.setCallStateCallback is not a function. Detailed call state updates might not be available.');
    }
    
    // Example of how to register an account (commented out)
    /*
    const accountId = pjsip.registerAccount(
      'sip:yourusername@sipserver.com',
      'yourusername',
      'yourpassword'
    );
    console.log('Account registered with ID:', accountId);
    */
  } catch (error) {
    console.error('Failed to initialize PJSIP:', error);
  }

  mainWindow.on('closed', () => {
    mainWindow = null;
  });
}

// IPC Handlers
ipcMain.on('pjsip-get-initial-status', (event) => {
  try {
    // Check if pjsip was initialized successfully (this is a simplified check)
    // A more robust check might involve a flag set during initialize()
    if (pjsip && typeof pjsip.initialize === 'function') { // Basic check
      event.sender.send('pjsip-status', 'PJSIP initialized and ready');
    } else {
      event.sender.send('pjsip-status', 'PJSIP initialization failed or not ready');
    }
  } catch (error) {
    event.sender.send('pjsip-status', `Error getting initial status: ${error.message}`);
  }
});

// Import the network diagnostics utility and transport configuration
const networkDiagnostics = require('./network-diagnostics');
const transportConfig = require('./transport-config');

// Track registration attempts to handle timeouts and retries
let registrationAttempts = {};

ipcMain.on('pjsip-register', async (event, { sipUri, username, password, transport }) => {
  try {
    // Use UDP by default if not specified
    const transportProtocol = transport || transportConfig.TransportProtocol.UDP;
    
    // Format SIP URI with transport parameter if needed
    const formattedSipUri = transportConfig.formatSipUriWithTransport(sipUri, transportProtocol);
    
    // First run a quick network diagnostic to check connectivity
    const diagnosticResults = await networkDiagnostics.diagnoseSipConnection(formattedSipUri);
    
    if (!diagnosticResults.overallSuccess) {
      console.log('Network diagnostic failed:', diagnosticResults);
      // Send diagnostic information to the renderer
      event.sender.send('pjsip-network-diagnostic', diagnosticResults);
      
      // Suggest alternative transports
      const alternatives = transportConfig.suggestAlternativeTransports(transportProtocol);
      console.log(`Suggesting alternative transports: ${alternatives.join(', ')}`);
      event.sender.send('pjsip-transport-alternatives', alternatives);
      
      // Still attempt registration even if diagnostics failed
      console.log('Attempting registration despite network diagnostic failure...');
    }
    
    // Create a unique ID for this registration attempt
    const attemptId = `${username}@${diagnosticResults.domain}`;
    
    // Store registration attempt info
    registrationAttempts[attemptId] = {
      timestamp: Date.now(),
      sipUri: formattedSipUri,
      username,
      transport: transportProtocol,
      event // Store event to respond later if needed
    };
    
    // Set a timeout to detect registration failures that don't throw exceptions
    const timeoutId = setTimeout(() => {
      // Check if this registration attempt is still pending
      if (registrationAttempts[attemptId]) {
        console.log(`Registration timeout detected for ${attemptId}`);
        
        // Clean up the registration attempt
        const storedEvent = registrationAttempts[attemptId].event;
        delete registrationAttempts[attemptId];
        
        // Notify the renderer about the timeout
        storedEvent.sender.send('pjsip-registration-failed', 
          'Registration timed out. The SIP server is not responding. Check your network connection or try an alternative transport protocol.');
      }
    }, 30000); // 30 second timeout
    
    // Store the timeout ID for cleanup
    registrationAttempts[attemptId].timeoutId = timeoutId;
    
    // Attempt to register with the formatted URI
    const accountId = pjsip.registerAccount(formattedSipUri, username, password);
    
    // Registration succeeded, clear the timeout and stored attempt
    if (registrationAttempts[attemptId]) {
      clearTimeout(registrationAttempts[attemptId].timeoutId);
      delete registrationAttempts[attemptId];
    }
    
    event.sender.send('pjsip-registration-success', accountId);
  } catch (error) {
    console.error('Registration error:', error);
    event.sender.send('pjsip-registration-failed', error.message);
  }
});

// Add a new IPC handler for changing transport protocol
ipcMain.on('pjsip-change-transport', (event, { sipUri, username, password, transport }) => {
  try {
    // Format the SIP URI with the new transport
    const formattedSipUri = transportConfig.formatSipUriWithTransport(sipUri, transport);
    console.log(`Attempting registration with alternative transport: ${transport}`);
    console.log(`Formatted SIP URI: ${formattedSipUri}`);
    
    // Attempt registration with the new transport
    const accountId = pjsip.registerAccount(formattedSipUri, username, password);
    event.sender.send('pjsip-registration-success', accountId);
  } catch (error) {
    console.error(`Registration with ${transport} transport failed:`, error);
    event.sender.send('pjsip-registration-failed', `${transport} transport failed: ${error.message}`);
  }
});

ipcMain.on('pjsip-make-call', (event, { accountId, destination }) => {
  try {
    const callId = pjsip.makeCall(accountId, destination);
    event.sender.send('pjsip-call-initiated', callId);
  } catch (error) {
    event.sender.send('pjsip-call-failed', error.message);
  }
});

// Add IPC handlers for local and SIP mute/unmute
ipcMain.on('pjsip-local-mute', (event, callId) => {
  try {
    pjsip.localMuteCall(callId);
    event.sender.send('pjsip-local-mute-success', callId);
  } catch (error) {
    event.sender.send('pjsip-local-mute-failed', error.message);
  }
});

ipcMain.on('pjsip-local-unmute', (event, callId) => {
  try {
    pjsip.localUnmuteCall(callId);
    event.sender.send('pjsip-local-unmute-success', callId);
  } catch (error) {
    event.sender.send('pjsip-local-unmute-failed', error.message);
  }
});

ipcMain.on('pjsip-hold', (event, callId) => {
  try {
    pjsip.holdCall(callId);
    event.sender.send('pjsip-hold-success', callId);
  } catch (error) {
    event.sender.send('pjsip-hold-failed', error.message);
  }
});

ipcMain.on('pjsip-unhold', (event, callId) => {
  try {
    pjsip.unholdCall(callId);
    event.sender.send('pjsip-unhold-success', callId);
  } catch (error) {
    event.sender.send('pjsip-unhold-failed', error.message);
  }
});

console.log({app})
app.on('ready', createWindow);

app.on('window-all-closed', () => {
  // Clean up PJSIP before quitting
  try {
    console.log('Cleaning up PJSIP...');
    pjsip.cleanup();
    console.log('PJSIP cleanup successful');
  } catch (error) {
    console.error('Failed to clean up PJSIP:', error);
  }
  
  if (process.platform !== 'darwin') {
    app.quit();
  }
});

app.on('activate', () => {
  if (mainWindow === null) {
    createWindow();
  }
});