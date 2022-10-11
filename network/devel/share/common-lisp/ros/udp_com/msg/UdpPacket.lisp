; Auto-generated. Do not edit!


(cl:in-package udp_com-msg)


;//! \htmlinclude UdpPacket.msg.html

(cl:defclass <UdpPacket> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (address
    :reader address
    :initarg :address
    :type cl:string
    :initform "")
   (srcPort
    :reader srcPort
    :initarg :srcPort
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UdpPacket (<UdpPacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UdpPacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UdpPacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udp_com-msg:<UdpPacket> is deprecated: use udp_com-msg:UdpPacket instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UdpPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-msg:header-val is deprecated.  Use udp_com-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <UdpPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-msg:address-val is deprecated.  Use udp_com-msg:address instead.")
  (address m))

(cl:ensure-generic-function 'srcPort-val :lambda-list '(m))
(cl:defmethod srcPort-val ((m <UdpPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-msg:srcPort-val is deprecated.  Use udp_com-msg:srcPort instead.")
  (srcPort m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UdpPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-msg:data-val is deprecated.  Use udp_com-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UdpPacket>) ostream)
  "Serializes a message object of type '<UdpPacket>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'srcPort)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'srcPort)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UdpPacket>) istream)
  "Deserializes a message object of type '<UdpPacket>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'address) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'srcPort)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'srcPort)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UdpPacket>)))
  "Returns string type for a message object of type '<UdpPacket>"
  "udp_com/UdpPacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpPacket)))
  "Returns string type for a message object of type 'UdpPacket"
  "udp_com/UdpPacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UdpPacket>)))
  "Returns md5sum for a message object of type '<UdpPacket>"
  "8198692589ba27213e2e7991f4492e00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UdpPacket)))
  "Returns md5sum for a message object of type 'UdpPacket"
  "8198692589ba27213e2e7991f4492e00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UdpPacket>)))
  "Returns full string definition for message of type '<UdpPacket>"
  (cl:format cl:nil "Header header~%string address~%uint16 srcPort~%uint8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UdpPacket)))
  "Returns full string definition for message of type 'UdpPacket"
  (cl:format cl:nil "Header header~%string address~%uint16 srcPort~%uint8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UdpPacket>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'address))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UdpPacket>))
  "Converts a ROS message object to a list"
  (cl:list 'UdpPacket
    (cl:cons ':header (header msg))
    (cl:cons ':address (address msg))
    (cl:cons ':srcPort (srcPort msg))
    (cl:cons ':data (data msg))
))
