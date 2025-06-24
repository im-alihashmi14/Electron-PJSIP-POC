/**
 * SIP Transport Configuration Utility
 * 
 * This module provides functions to configure different transport protocols
 * for SIP connections (UDP, TCP, TLS) to help overcome network issues.
 */

/**
 * Transport protocol options for SIP
 */
const TransportProtocol = {
  UDP: 'udp',
  TCP: 'tcp',
  TLS: 'tls'
};

/**
 * Default transport configuration
 */
const defaultConfig = {
  protocol: TransportProtocol.UDP,
  port: 0, // 0 means use default port for the protocol
  publicAddress: null,
  boundAddress: null,
  qosType: 0, // No QoS
  maxConnections: 16
};

/**
 * Creates a transport configuration object for PJSIP
 * @param {Object} options - Transport configuration options
 * @returns {Object} Transport configuration object
 */
function createTransportConfig(options = {}) {
  // Merge with default config
  const config = { ...defaultConfig, ...options };
  
  // Determine default port if not specified
  if (config.port === 0) {
    switch (config.protocol) {
      case TransportProtocol.UDP:
      case TransportProtocol.TCP:
        config.port = 5060;
        break;
      case TransportProtocol.TLS:
        config.port = 5061;
        break;
    }
  }
  
  return config;
}

/**
 * Formats a SIP URI with the specified transport protocol
 * @param {string} sipUri - Original SIP URI
 * @param {string} transport - Transport protocol (udp, tcp, tls)
 * @returns {string} SIP URI with transport parameter
 */
function formatSipUriWithTransport(sipUri, transport = TransportProtocol.UDP) {
  // Don't modify the URI if it already has a transport parameter
  if (sipUri.includes(';transport=')) {
    return sipUri;
  }
  
  // If the URI has parameters (after ';'), insert transport before them
  if (sipUri.includes(';')) {
    return sipUri.replace(';', `;transport=${transport};`);
  }
  
  // If the URI has a port specification
  if (sipUri.includes(':') && sipUri.split(':').length > 2) {
    const parts = sipUri.split(':');
    const lastPart = parts[parts.length - 1];
    
    // Check if the last part contains a port number
    const portMatch = lastPart.match(/^(\d+)(.*)$/);
    if (portMatch) {
      // Add transport after the port
      return `${sipUri};transport=${transport}`;
    }
  }
  
  // Otherwise, just append the transport parameter
  return `${sipUri};transport=${transport}`;
}

/**
 * Suggests alternative transports when a specific transport fails
 * @param {string} failedTransport - The transport that failed
 * @returns {Array<string>} List of suggested alternative transports
 */
function suggestAlternativeTransports(failedTransport = TransportProtocol.UDP) {
  const alternatives = [];
  
  switch (failedTransport.toLowerCase()) {
    case TransportProtocol.UDP:
      alternatives.push(
        TransportProtocol.TCP,
        TransportProtocol.TLS
      );
      break;
    case TransportProtocol.TCP:
      alternatives.push(
        TransportProtocol.TLS,
        TransportProtocol.UDP
      );
      break;
    case TransportProtocol.TLS:
      alternatives.push(
        TransportProtocol.TCP,
        TransportProtocol.UDP
      );
      break;
    default:
      alternatives.push(
        TransportProtocol.TCP,
        TransportProtocol.TLS,
        TransportProtocol.UDP
      );
  }
  
  return alternatives;
}

module.exports = {
  TransportProtocol,
  createTransportConfig,
  formatSipUriWithTransport,
  suggestAlternativeTransports
};