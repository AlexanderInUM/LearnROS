; Auto-generated. Do not edit!


(cl:in-package udp_com-srv)


;//! \htmlinclude UdpSocket-request.msg.html

(cl:defclass <UdpSocket-request> (roslisp-msg-protocol:ros-message)
  ((srcAddress
    :reader srcAddress
    :initarg :srcAddress
    :type cl:string
    :initform "")
   (destAddress
    :reader destAddress
    :initarg :destAddress
    :type cl:string
    :initform "")
   (port
    :reader port
    :initarg :port
    :type cl:fixnum
    :initform 0)
   (isMulticast
    :reader isMulticast
    :initarg :isMulticast
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UdpSocket-request (<UdpSocket-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UdpSocket-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UdpSocket-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udp_com-srv:<UdpSocket-request> is deprecated: use udp_com-srv:UdpSocket-request instead.")))

(cl:ensure-generic-function 'srcAddress-val :lambda-list '(m))
(cl:defmethod srcAddress-val ((m <UdpSocket-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:srcAddress-val is deprecated.  Use udp_com-srv:srcAddress instead.")
  (srcAddress m))

(cl:ensure-generic-function 'destAddress-val :lambda-list '(m))
(cl:defmethod destAddress-val ((m <UdpSocket-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:destAddress-val is deprecated.  Use udp_com-srv:destAddress instead.")
  (destAddress m))

(cl:ensure-generic-function 'port-val :lambda-list '(m))
(cl:defmethod port-val ((m <UdpSocket-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:port-val is deprecated.  Use udp_com-srv:port instead.")
  (port m))

(cl:ensure-generic-function 'isMulticast-val :lambda-list '(m))
(cl:defmethod isMulticast-val ((m <UdpSocket-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:isMulticast-val is deprecated.  Use udp_com-srv:isMulticast instead.")
  (isMulticast m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UdpSocket-request>) ostream)
  "Serializes a message object of type '<UdpSocket-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'srcAddress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'srcAddress))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destAddress))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destAddress))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isMulticast) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UdpSocket-request>) istream)
  "Deserializes a message object of type '<UdpSocket-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'srcAddress) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'srcAddress) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destAddress) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destAddress) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'port)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isMulticast) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UdpSocket-request>)))
  "Returns string type for a service object of type '<UdpSocket-request>"
  "udp_com/UdpSocketRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpSocket-request)))
  "Returns string type for a service object of type 'UdpSocket-request"
  "udp_com/UdpSocketRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UdpSocket-request>)))
  "Returns md5sum for a message object of type '<UdpSocket-request>"
  "1f9ba3aa4d7a9f81e5e4af8aceccdf35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UdpSocket-request)))
  "Returns md5sum for a message object of type 'UdpSocket-request"
  "1f9ba3aa4d7a9f81e5e4af8aceccdf35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UdpSocket-request>)))
  "Returns full string definition for message of type '<UdpSocket-request>"
  (cl:format cl:nil "string srcAddress~%string destAddress~%uint16 port~%bool isMulticast~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UdpSocket-request)))
  "Returns full string definition for message of type 'UdpSocket-request"
  (cl:format cl:nil "string srcAddress~%string destAddress~%uint16 port~%bool isMulticast~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UdpSocket-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'srcAddress))
     4 (cl:length (cl:slot-value msg 'destAddress))
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UdpSocket-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UdpSocket-request
    (cl:cons ':srcAddress (srcAddress msg))
    (cl:cons ':destAddress (destAddress msg))
    (cl:cons ':port (port msg))
    (cl:cons ':isMulticast (isMulticast msg))
))
;//! \htmlinclude UdpSocket-response.msg.html

(cl:defclass <UdpSocket-response> (roslisp-msg-protocol:ros-message)
  ((successful
    :reader successful
    :initarg :successful
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UdpSocket-response (<UdpSocket-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UdpSocket-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UdpSocket-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udp_com-srv:<UdpSocket-response> is deprecated: use udp_com-srv:UdpSocket-response instead.")))

(cl:ensure-generic-function 'successful-val :lambda-list '(m))
(cl:defmethod successful-val ((m <UdpSocket-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:successful-val is deprecated.  Use udp_com-srv:successful instead.")
  (successful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UdpSocket-response>) ostream)
  "Serializes a message object of type '<UdpSocket-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'successful) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UdpSocket-response>) istream)
  "Deserializes a message object of type '<UdpSocket-response>"
    (cl:setf (cl:slot-value msg 'successful) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UdpSocket-response>)))
  "Returns string type for a service object of type '<UdpSocket-response>"
  "udp_com/UdpSocketResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpSocket-response)))
  "Returns string type for a service object of type 'UdpSocket-response"
  "udp_com/UdpSocketResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UdpSocket-response>)))
  "Returns md5sum for a message object of type '<UdpSocket-response>"
  "1f9ba3aa4d7a9f81e5e4af8aceccdf35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UdpSocket-response)))
  "Returns md5sum for a message object of type 'UdpSocket-response"
  "1f9ba3aa4d7a9f81e5e4af8aceccdf35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UdpSocket-response>)))
  "Returns full string definition for message of type '<UdpSocket-response>"
  (cl:format cl:nil "bool successful~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UdpSocket-response)))
  "Returns full string definition for message of type 'UdpSocket-response"
  (cl:format cl:nil "bool successful~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UdpSocket-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UdpSocket-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UdpSocket-response
    (cl:cons ':successful (successful msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UdpSocket)))
  'UdpSocket-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UdpSocket)))
  'UdpSocket-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpSocket)))
  "Returns string type for a service object of type '<UdpSocket>"
  "udp_com/UdpSocket")