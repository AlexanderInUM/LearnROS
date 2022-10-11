// Auto-generated. Do not edit!

// (in-package udp_com.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class UdpSocketRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.srcAddress = null;
      this.destAddress = null;
      this.port = null;
      this.isMulticast = null;
    }
    else {
      if (initObj.hasOwnProperty('srcAddress')) {
        this.srcAddress = initObj.srcAddress
      }
      else {
        this.srcAddress = '';
      }
      if (initObj.hasOwnProperty('destAddress')) {
        this.destAddress = initObj.destAddress
      }
      else {
        this.destAddress = '';
      }
      if (initObj.hasOwnProperty('port')) {
        this.port = initObj.port
      }
      else {
        this.port = 0;
      }
      if (initObj.hasOwnProperty('isMulticast')) {
        this.isMulticast = initObj.isMulticast
      }
      else {
        this.isMulticast = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UdpSocketRequest
    // Serialize message field [srcAddress]
    bufferOffset = _serializer.string(obj.srcAddress, buffer, bufferOffset);
    // Serialize message field [destAddress]
    bufferOffset = _serializer.string(obj.destAddress, buffer, bufferOffset);
    // Serialize message field [port]
    bufferOffset = _serializer.uint16(obj.port, buffer, bufferOffset);
    // Serialize message field [isMulticast]
    bufferOffset = _serializer.bool(obj.isMulticast, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UdpSocketRequest
    let len;
    let data = new UdpSocketRequest(null);
    // Deserialize message field [srcAddress]
    data.srcAddress = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [destAddress]
    data.destAddress = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [port]
    data.port = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [isMulticast]
    data.isMulticast = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.srcAddress);
    length += _getByteLength(object.destAddress);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'udp_com/UdpSocketRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5363341da98ddf2ad017614cf3d85382';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string srcAddress
    string destAddress
    uint16 port
    bool isMulticast
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UdpSocketRequest(null);
    if (msg.srcAddress !== undefined) {
      resolved.srcAddress = msg.srcAddress;
    }
    else {
      resolved.srcAddress = ''
    }

    if (msg.destAddress !== undefined) {
      resolved.destAddress = msg.destAddress;
    }
    else {
      resolved.destAddress = ''
    }

    if (msg.port !== undefined) {
      resolved.port = msg.port;
    }
    else {
      resolved.port = 0
    }

    if (msg.isMulticast !== undefined) {
      resolved.isMulticast = msg.isMulticast;
    }
    else {
      resolved.isMulticast = false
    }

    return resolved;
    }
};

class UdpSocketResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.successful = null;
    }
    else {
      if (initObj.hasOwnProperty('successful')) {
        this.successful = initObj.successful
      }
      else {
        this.successful = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UdpSocketResponse
    // Serialize message field [successful]
    bufferOffset = _serializer.bool(obj.successful, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UdpSocketResponse
    let len;
    let data = new UdpSocketResponse(null);
    // Deserialize message field [successful]
    data.successful = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'udp_com/UdpSocketResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ccdb752b565be6d250259ff3d0c7ea1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool successful
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UdpSocketResponse(null);
    if (msg.successful !== undefined) {
      resolved.successful = msg.successful;
    }
    else {
      resolved.successful = false
    }

    return resolved;
    }
};

module.exports = {
  Request: UdpSocketRequest,
  Response: UdpSocketResponse,
  md5sum() { return '1f9ba3aa4d7a9f81e5e4af8aceccdf35'; },
  datatype() { return 'udp_com/UdpSocket'; }
};
