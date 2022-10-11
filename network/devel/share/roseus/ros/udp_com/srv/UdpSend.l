;; Auto-generated. Do not edit!


(when (boundp 'udp_com::UdpSend)
  (if (not (find-package "UDP_COM"))
    (make-package "UDP_COM"))
  (shadow 'UdpSend (find-package "UDP_COM")))
(unless (find-package "UDP_COM::UDPSEND")
  (make-package "UDP_COM::UDPSEND"))
(unless (find-package "UDP_COM::UDPSENDREQUEST")
  (make-package "UDP_COM::UDPSENDREQUEST"))
(unless (find-package "UDP_COM::UDPSENDRESPONSE")
  (make-package "UDP_COM::UDPSENDRESPONSE"))

(in-package "ROS")





(defclass udp_com::UdpSendRequest
  :super ros::object
  :slots (_address _srcPort _dstPort _data ))

(defmethod udp_com::UdpSendRequest
  (:init
   (&key
    ((:address __address) "")
    ((:srcPort __srcPort) 0)
    ((:dstPort __dstPort) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _address (string __address))
   (setq _srcPort (round __srcPort))
   (setq _dstPort (round __dstPort))
   (setq _data __data)
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:srcPort
   (&optional __srcPort)
   (if __srcPort (setq _srcPort __srcPort)) _srcPort)
  (:dstPort
   (&optional __dstPort)
   (if __dstPort (setq _dstPort __dstPort)) _dstPort)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _address
    4 (length _address)
    ;; uint16 _srcPort
    2
    ;; uint16 _dstPort
    2
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _address
       (write-long (length _address) s) (princ _address s)
     ;; uint16 _srcPort
       (write-word _srcPort s)
     ;; uint16 _dstPort
       (write-word _dstPort s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _address
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _address (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _srcPort
     (setq _srcPort (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _dstPort
     (setq _dstPort (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass udp_com::UdpSendResponse
  :super ros::object
  :slots (_sent _socketCreated ))

(defmethod udp_com::UdpSendResponse
  (:init
   (&key
    ((:sent __sent) nil)
    ((:socketCreated __socketCreated) nil)
    )
   (send-super :init)
   (setq _sent __sent)
   (setq _socketCreated __socketCreated)
   self)
  (:sent
   (&optional (__sent :null))
   (if (not (eq __sent :null)) (setq _sent __sent)) _sent)
  (:socketCreated
   (&optional (__socketCreated :null))
   (if (not (eq __socketCreated :null)) (setq _socketCreated __socketCreated)) _socketCreated)
  (:serialization-length
   ()
   (+
    ;; bool _sent
    1
    ;; bool _socketCreated
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _sent
       (if _sent (write-byte -1 s) (write-byte 0 s))
     ;; bool _socketCreated
       (if _socketCreated (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _sent
     (setq _sent (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _socketCreated
     (setq _socketCreated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass udp_com::UdpSend
  :super ros::object
  :slots ())

(setf (get udp_com::UdpSend :md5sum-) "8e83f150e6b617df95d8728e76e0c812")
(setf (get udp_com::UdpSend :datatype-) "udp_com/UdpSend")
(setf (get udp_com::UdpSend :request) udp_com::UdpSendRequest)
(setf (get udp_com::UdpSend :response) udp_com::UdpSendResponse)

(defmethod udp_com::UdpSendRequest
  (:response () (instance udp_com::UdpSendResponse :init)))

(setf (get udp_com::UdpSendRequest :md5sum-) "8e83f150e6b617df95d8728e76e0c812")
(setf (get udp_com::UdpSendRequest :datatype-) "udp_com/UdpSendRequest")
(setf (get udp_com::UdpSendRequest :definition-)
      "string address
uint16 srcPort
uint16 dstPort
uint8[] data
---
bool sent
bool socketCreated

")

(setf (get udp_com::UdpSendResponse :md5sum-) "8e83f150e6b617df95d8728e76e0c812")
(setf (get udp_com::UdpSendResponse :datatype-) "udp_com/UdpSendResponse")
(setf (get udp_com::UdpSendResponse :definition-)
      "string address
uint16 srcPort
uint16 dstPort
uint8[] data
---
bool sent
bool socketCreated

")



(provide :udp_com/UdpSend "8e83f150e6b617df95d8728e76e0c812")


