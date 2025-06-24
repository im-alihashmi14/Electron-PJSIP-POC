# Electron PJSIP Integration

This project demonstrates how to integrate PJSIP (a free and open source multimedia communication library) with Electron to create desktop VoIP applications.

## Prerequisites

- Node.js and npm
- Electron
- C++ build tools (Xcode on macOS)
- PJSIP library (already built)

## Project Structure

```
electron-pjsip/
├── binding.gyp         # Native addon build configuration
├── package.json        # Project dependencies and scripts
├── index.js            # Main Electron process
├── index.html          # UI for the application
├── src/                # C++ binding code
│   └── pjsip_binding.cc # PJSIP to Node.js bridge
└── README.md           # This file
```

## How It Works

This project uses Node.js native addons (via node-gyp) to create bindings between Electron's JavaScript environment and the PJSIP C library. The key components are:

1. **binding.gyp**: Configures how to build the native module, including paths to PJSIP libraries
2. **src/pjsip_binding.cc**: C++ code that bridges PJSIP functions to JavaScript
3. **index.js**: Main Electron process that loads the native module
4. **index.html**: User interface for the SIP client

## Building the Project

### Step 1: Build PJSIP

The PJSIP library should already be built in the parent directory. If not, build it with:

```bash
cd ../pjproject-2.15.1
./configure
make dep
make
```

### Step 2: Install Dependencies

```bash
npm install
```

### Step 3: Rebuild for Electron

After installing dependencies, rebuild the native module specifically for Electron:

```bash
npm run rebuild
```

### Step 4: Start the Application

```bash
npm start
```

## Usage

1. Launch the application
2. Enter your SIP credentials (URI, username, password)
3. Click "Register Account" to register with your SIP server
4. Enter a destination SIP URI to call
5. Click "Make Call" to initiate the call
6. Click "Hang Up" to end all active calls

## API Reference

The native module exposes these main functions:

- `initialize()`: Initialize the PJSIP library
- `registerAccount(uri, username, password)`: Register a SIP account
- `makeCall(accountId, destination)`: Make a call to a SIP URI
- `hangupAllCalls()`: End all active calls
- `cleanup()`: Clean up PJSIP resources

## Troubleshooting

### Common Issues

- **Build Errors**: Make sure PJSIP is properly built and the paths in binding.gyp are correct
- **Registration Failures**: Check your SIP credentials and network connectivity
- **Audio Issues**: Ensure your audio devices are properly configured

### Debugging

To enable more verbose logging, modify the console_level in pjsip_binding.cc:

```cpp
log_cfg.console_level = 5; // More verbose logging
```

## License

MIT

## Acknowledgements

- [PJSIP](https://www.pjsip.org/) - Open source SIP, media, and NAT traversal library
- [Electron](https://www.electronjs.org/) - Framework for building cross-platform desktop apps
- [node-addon-api](https://github.com/nodejs/node-addon-api) - C++ wrapper for building Node.js addons