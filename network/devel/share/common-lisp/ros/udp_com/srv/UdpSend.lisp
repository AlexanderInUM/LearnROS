; Auto-generated. Do not edit!


(cl:in-package udp_com-srv)


;//! \htmlinclude UdpSend-request.msg.html

(cl:defclass <UdpSend-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:string
    :initform "")
   (srcPort
    :reader srcPort
    :initarg :srcPort
    :type cl:fixnum
    :initform 0)
   (dstPort
    :reader dstPort
    :initarg :dstPort
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UdpSend-request (<UdpSend-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UdpSend-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UdpSend-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udp_com-srv:<UdpSend-request> is deprecated: use udp_com-srv:UdpSend-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <UdpSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:address-val is deprecated.  Use udp_com-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'srcPort-val :lambda-list '(m))
(cl:defmethod srcPort-val ((m <UdpSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:srcPort-val is deprecated.  Use udp_com-srv:srcPort instead.")
  (srcPort m))

(cl:ensure-generic-function 'dstPort-val :lambda-list '(m))
(cl:defmethod dstPort-val ((m <UdpSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:dstPort-val is deprecated.  Use udp_com-srv:dstPort instead.")
  (dstPort m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UdpSend-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:data-val is deprecated.  Use udp_com-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UdpSend-request>) ostream)
  "Serializes a message object of type '<UdpSend-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'address))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'address))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'srcPort)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'srcPort)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dstPort)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dstPort)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UdpSend-request>) istream)
  "Deserializes a message object of type '<UdpSend-request>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dstPort)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dstPort)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UdpSend-request>)))
  "Returns string type for a service object of type '<UdpSend-request>"
  "udp_com/UdpSendRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpSend-request)))
  "Returns string type for a service object of type 'UdpSend-request"
  "udp_com/UdpSendRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UdpSend-request>)))
  "Returns md5sum for a message object of type '<UdpSend-request>"
  "8e83f150e6b617df95d8728e76e0c812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UdpSend-request)))
  "Returns md5sum for a message object of type 'UdpSend-request"
  "8e83f150e6b617df95d8728e76e0c812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UdpSend-request>)))
  "Returns full string definition for message of type '<UdpSend-request>"
  (cl:format cl:nil "string address~%uint16 srcPort~%uint16 dstPort~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UdpSend-request)))
  "Returns full string definition for message of type 'UdpSend-request"
  (cl:format cl:nil "string address~%uint16 srcPort~%uint16 dstPort~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UdpSend-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'address))
     2
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UdpSend-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UdpSend-request
    (cl:cons ':address (address msg))
    (cl:cons ':srcPort (srcPort msg))
    (cl:cons ':dstPort (dstPort msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude UdpSend-response.msg.html

(cl:defclass <UdpSend-response> (roslisp-msg-protocol:ros-message)
  ((sent
    :reader sent
    :initarg :sent
    :type cl:boolean
    :initform cl:nil)
   (socketCreated
    :reader socketCreated
    :initarg :socketCreated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UdpSend-response (<UdpSend-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UdpSend-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UdpSend-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name udp_com-srv:<UdpSend-response> is deprecated: use udp_com-srv:UdpSend-response instead.")))

(cl:ensure-generic-function 'sent-val :lambda-list '(m))
(cl:defmethod sent-val ((m <UdpSend-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:sent-val is deprecated.  Use udp_com-srv:sent instead.")
  (sent m))

(cl:ensure-generic-function 'socketCreated-val :lambda-list '(m))
(cl:defmethod socketCreated-val ((m <UdpSend-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader udp_com-srv:socketCreated-val is deprecated.  Use udp_com-srv:socketCreated instead.")
  (socketCreated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UdpSend-response>) ostream)
  "Serializes a message object of type '<UdpSend-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sent) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'socketCreated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UdpSend-response>) istream)
  "Deserializes a message object of type '<UdpSend-response>"
    (cl:setf (cl:slot-value msg 'sent) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'socketCreated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UdpSend-response>)))
  "Returns string type for a service object of type '<UdpSend-response>"
  "udp_com/UdpSendResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpSend-response)))
  "Returns string type for a service object of type 'UdpSend-response"
  "udp_com/UdpSendResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UdpSend-response>)))
  "Returns md5sum for a message object of type '<UdpSend-response>"
  "8e83f150e6b617df95d8728e76e0c812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UdpSend-response)))
  "Returns md5sum for a message object of type 'UdpSend-response"
  "8e83f150e6b617df95d8728e76e0c812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UdpSend-response>)))
  "Returns full string definition for message of type '<UdpSend-response>"
  (cl:format cl:nil "bool sent~%bool socketCreated~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UdpSend-response)))
  "Returns full string definition for message of type 'UdpSend-response"
  (cl:format cl:nil "bool sent~%bool socketCreated~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UdpSend-response>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UdpSend-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UdpSend-response
    (cl:cons ':sent (sent msg))
    (cl:cons ':socketCreated (socketCreated msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UdpSend)))
  'UdpSend-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UdpSend)))
  'UdpSend-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UdpSend)))
  "Returns string type for a service object of type '<UdpSend>"
  "udp_com/UdpSend")