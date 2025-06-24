/**
 * Network Diagnostics Utility for SIP Connections
 * 
 * This module provides functions to diagnose network connectivity issues
 * that might be preventing successful SIP registration.
 */

const { exec } = require('child_process');
const dns = require('dns');
const net = require('net');

/**
 * Extracts domain from a SIP URI
 * @param {string} sipUri - SIP URI (e.g., sip:user@domain.com)
 * @returns {string} The domain part of the URI
 */
function extractDomain(sipUri) {
  const match = sipUri.match(/^(?:sip:)?(?:[^@]+@)?([^:;>]+)/);
  return match ? match[1] : null;
}

/**
 * Performs a DNS lookup for the SIP server
 * @param {string} domain - Domain to lookup
 * @returns {Promise<Object>} Result of the DNS lookup
 */
async function checkDnsResolution(domain) {
  return new Promise((resolve) => {
    dns.lookup(domain, (err, address) => {
      if (err) {
        resolve({
          success: false,
          error: err.message,
          recommendation: 'Check if the domain name is correct or if your DNS server is working properly.'
        });
      } else {
        resolve({
          success: true,
          address,
          message: `Successfully resolved ${domain} to ${address}`
        });
      }
    });
  });
}

/**
 * Tests TCP connectivity to a host and port
 * @param {string} host - Host to connect to
 * @param {number} port - Port to connect to
 * @param {number} timeout - Connection timeout in ms
 * @returns {Promise<Object>} Result of the connection test
 */
async function testTcpConnection(host, port, timeout = 5000) {
  return new Promise((resolve) => {
    const socket = new net.Socket();
    let resolved = false;
    
    socket.setTimeout(timeout);
    
    socket.on('connect', () => {
      if (!resolved) {
        resolved = true;
        socket.destroy();
        resolve({
          success: true,
          message: `Successfully connected to ${host}:${port}`
        });
      }
    });
    
    socket.on('timeout', () => {
      if (!resolved) {
        resolved = true;
        socket.destroy();
        resolve({
          success: false,
          error: 'Connection timed out',
          recommendation: 'The server might be down or a firewall might be blocking the connection.'
        });
      }
    });
    
    socket.on('error', (err) => {
      if (!resolved) {
        resolved = true;
        socket.destroy();
        resolve({
          success: false,
          error: err.message,
          recommendation: 'Check if the server is running and accessible from your network.'
        });
      }
    });
    
    try {
      socket.connect(port, host);
    } catch (err) {
      if (!resolved) {
        resolved = true;
        resolve({
          success: false,
          error: err.message,
          recommendation: 'Check your network connection and server details.'
        });
      }
    }
  });
}

/**
 * Runs a traceroute to the target host
 * @param {string} host - Host to trace
 * @returns {Promise<Object>} Result of the traceroute
 */
async function runTraceroute(host) {
  const command = process.platform === 'win32' ? `tracert ${host}` : `traceroute -m 15 ${host}`;
  
  return new Promise((resolve) => {
    exec(command, (error, stdout, stderr) => {
      if (error) {
        resolve({
          success: false,
          error: error.message,
          output: stderr || stdout
        });
      } else {
        resolve({
          success: true,
          output: stdout
        });
      }
    });
  });
}

/**
 * Runs a comprehensive network diagnostic for SIP connectivity
 * @param {string} sipUri - SIP URI to diagnose
 * @param {number} port - SIP port (default: 5060)
 * @returns {Promise<Object>} Diagnostic results
 */
async function diagnoseSipConnection(sipUri, port = 5060) {
  const domain = extractDomain(sipUri);
  if (!domain) {
    return {
      success: false,
      error: 'Invalid SIP URI format',
      recommendation: 'Please provide a valid SIP URI (e.g., sip:user@domain.com)'
    };
  }
  
  const results = {
    sipUri,
    domain,
    port,
    timestamp: new Date().toISOString(),
    tests: {}
  };
  
  // Check DNS resolution
  results.tests.dns = await checkDnsResolution(domain);
  
  // If DNS resolution succeeded, test TCP connection
  if (results.tests.dns.success) {
    results.tests.tcp = await testTcpConnection(results.tests.dns.address, port);
    
    // If TCP connection failed, run traceroute
    if (!results.tests.tcp.success) {
      results.tests.traceroute = await runTraceroute(domain);
    }
  }
  
  // Generate overall assessment
  results.overallSuccess = results.tests.dns.success && 
                          (results.tests.tcp ? results.tests.tcp.success : false);
  
  if (!results.overallSuccess) {
    results.recommendations = [];
    
    if (!results.tests.dns.success) {
      results.recommendations.push(results.tests.dns.recommendation);
    }
    
    if (results.tests.tcp && !results.tests.tcp.success) {
      results.recommendations.push(results.tests.tcp.recommendation);
    }
    
    results.recommendations.push(
      'Consider trying alternative transport protocols (TCP/TLS instead of UDP)',
      'Check if your network or ISP is blocking SIP traffic',
      'Verify the SIP server is operational by contacting your provider'
    );
  }
  
  return results;
}

module.exports = {
  diagnoseSipConnection,
  checkDnsResolution,
  testTcpConnection,
  runTraceroute,
  extractDomain
};