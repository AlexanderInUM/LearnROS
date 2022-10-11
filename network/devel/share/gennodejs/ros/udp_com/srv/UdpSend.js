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

class UdpSendRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.address = null;
      this.srcPort = null;
      this.dstPort = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = '';
      }
      if (initObj.hasOwnProperty('srcPort')) {
        this.srcPort = initObj.srcPort
      }
      else {
        this.srcPort = 0;
      }
      if (initObj.hasOwnProperty('dstPort')) {
        this.dstPort = initObj.dstPort
      }
      else {
        this.dstPort = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UdpSendRequest
    // Serialize message field [address]
    bufferOffset = _serializer.string(obj.address, buffer, bufferOffset);
    // Serialize message field [srcPort]
    bufferOffset = _serializer.uint16(obj.srcPort, buffer, bufferOffset);
    // Serialize message field [dstPort]
    bufferOffset = _serializer.uint16(obj.dstPort, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UdpSendRequest
    let len;
    let data = new UdpSendRequest(null);
    // Deserialize message field [address]
    data.address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [srcPort]
    data.srcPort = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [dstPort]
    data.dstPort = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.address);
    length += object.data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'udp_com/UdpSendRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25050f5ee323eed83d8e29a73150d3a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string address
    uint16 srcPort
    uint16 dstPort
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UdpSendRequest(null);
    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = ''
    }

    if (msg.srcPort !== undefined) {
      resolved.srcPort = msg.srcPort;
    }
    else {
      resolved.srcPort = 0
    }

    if (msg.dstPort !== undefined) {
      resolved.dstPort = msg.dstPort;
    }
    else {
      resolved.dstPort = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

class UdpSendResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sent = null;
      this.socketCreated = null;
    }
    else {
      if (initObj.hasOwnProperty('sent')) {
        this.sent = initObj.sent
      }
      else {
        this.sent = false;
      }
      if (initObj.hasOwnProperty('socketCreated')) {
        this.socketCreated = initObj.socketCreated
      }
      else {
        this.socketCreated = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UdpSendResponse
    // Serialize message field [sent]
    bufferOffset = _serializer.bool(obj.sent, buffer, bufferOffset);
    // Serialize message field [socketCreated]
    bufferOffset = _serializer.bool(obj.socketCreated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UdpSendResponse
    let len;
    let data = new UdpSendResponse(null);
    // Deserialize message field [sent]
    data.sent = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [socketCreated]
    data.socketCreated = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'udp_com/UdpSendResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bf1b3abebee64fbcca21c0ec4f34edf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool sent
    bool socketCreated
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UdpSendResponse(null);
    if (msg.sent !== undefined) {
      resolved.sent = msg.sent;
    }
    else {
      resolved.sent = false
    }

    if (msg.socketCreated !== undefined) {
      resolved.socketCreated = msg.socketCreated;
    }
    else {
      resolved.socketCreated = false
    }

    return resolved;
    }
};

module.exports = {
  Request: UdpSendRequest,
  Response: UdpSendResponse,
  md5sum() { return '8e83f150e6b617df95d8728e76e0c812'; },
  datatype() { return 'udp_com/UdpSend'; }
};
