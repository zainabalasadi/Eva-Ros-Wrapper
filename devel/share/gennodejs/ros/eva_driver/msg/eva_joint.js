// Auto-generated. Do not edit!

// (in-package eva_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class eva_joint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.j1 = null;
      this.j2 = null;
      this.j3 = null;
      this.j4 = null;
      this.j5 = null;
    }
    else {
      if (initObj.hasOwnProperty('j1')) {
        this.j1 = initObj.j1
      }
      else {
        this.j1 = 0.0;
      }
      if (initObj.hasOwnProperty('j2')) {
        this.j2 = initObj.j2
      }
      else {
        this.j2 = 0.0;
      }
      if (initObj.hasOwnProperty('j3')) {
        this.j3 = initObj.j3
      }
      else {
        this.j3 = 0.0;
      }
      if (initObj.hasOwnProperty('j4')) {
        this.j4 = initObj.j4
      }
      else {
        this.j4 = 0.0;
      }
      if (initObj.hasOwnProperty('j5')) {
        this.j5 = initObj.j5
      }
      else {
        this.j5 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type eva_joint
    // Serialize message field [j1]
    bufferOffset = _serializer.float64(obj.j1, buffer, bufferOffset);
    // Serialize message field [j2]
    bufferOffset = _serializer.float64(obj.j2, buffer, bufferOffset);
    // Serialize message field [j3]
    bufferOffset = _serializer.float64(obj.j3, buffer, bufferOffset);
    // Serialize message field [j4]
    bufferOffset = _serializer.float64(obj.j4, buffer, bufferOffset);
    // Serialize message field [j5]
    bufferOffset = _serializer.float64(obj.j5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type eva_joint
    let len;
    let data = new eva_joint(null);
    // Deserialize message field [j1]
    data.j1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j2]
    data.j2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j3]
    data.j3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j4]
    data.j4 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [j5]
    data.j5 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'eva_driver/eva_joint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7a777ce5080b0b1ffd85e732916f178';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Joint.msg
    
    float64 j1
    float64 j2
    float64 j3
    float64 j4
    float64 j5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new eva_joint(null);
    if (msg.j1 !== undefined) {
      resolved.j1 = msg.j1;
    }
    else {
      resolved.j1 = 0.0
    }

    if (msg.j2 !== undefined) {
      resolved.j2 = msg.j2;
    }
    else {
      resolved.j2 = 0.0
    }

    if (msg.j3 !== undefined) {
      resolved.j3 = msg.j3;
    }
    else {
      resolved.j3 = 0.0
    }

    if (msg.j4 !== undefined) {
      resolved.j4 = msg.j4;
    }
    else {
      resolved.j4 = 0.0
    }

    if (msg.j5 !== undefined) {
      resolved.j5 = msg.j5;
    }
    else {
      resolved.j5 = 0.0
    }

    return resolved;
    }
};

module.exports = eva_joint;
