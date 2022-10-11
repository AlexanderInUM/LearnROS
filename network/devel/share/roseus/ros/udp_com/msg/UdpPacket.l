;; Auto-generated. Do not edit!


(when (boundp 'udp_com::UdpPacket)
  (if (not (find-package "UDP_COM"))
    (make-package "UDP_COM"))
  (shadow 'UdpPacket (find-package "UDP_COM")))
(unless (find-package "UDP_COM::UDPPACKET")
  (make-package "UDP_COM::UDPPACKET"))

(in-package "ROS")
;;//! \htmlinclude UdpPacket.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass udp_com::UdpPacket
  :super ros::object
  :slots (_header _address _srcPort _data ))

(defmethod udp_com::UdpPacket
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:address __address) "")
    ((:srcPort __srcPort) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _address (string __address))
   (setq _srcPort (round __srcPort))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:srcPort
   (&optional __srcPort)
   (if __srcPort (setq _srcPort __srcPort)) _srcPort)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _address
    4 (length _address)
    ;; uint16 _srcPort
    2
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;; uint16 _srcPort
       (write-word _srcPort s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _srcPort
     (setq _srcPort (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get udp_com::UdpPacket :md5sum-) "8198692589ba27213e2e7991f4492e00")
(setf (get udp_com::UdpPacket :datatype-) "udp_com/UdpPacket")
(setf (get udp_com::UdpPacket :definition-)
      "Header header
string address
uint16 srcPort
uint8[] data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :udp_com/UdpPacket "8198692589ba27213e2e7991f4492e00")


