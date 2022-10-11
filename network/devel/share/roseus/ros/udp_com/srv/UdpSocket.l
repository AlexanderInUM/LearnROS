;; Auto-generated. Do not edit!


(when (boundp 'udp_com::UdpSocket)
  (if (not (find-package "UDP_COM"))
    (make-package "UDP_COM"))
  (shadow 'UdpSocket (find-package "UDP_COM")))
(unless (find-package "UDP_COM::UDPSOCKET")
  (make-package "UDP_COM::UDPSOCKET"))
(unless (find-package "UDP_COM::UDPSOCKETREQUEST")
  (make-package "UDP_COM::UDPSOCKETREQUEST"))
(unless (find-package "UDP_COM::UDPSOCKETRESPONSE")
  (make-package "UDP_COM::UDPSOCKETRESPONSE"))

(in-package "ROS")





(defclass udp_com::UdpSocketRequest
  :super ros::object
  :slots (_srcAddress _destAddress _port _isMulticast ))

(defmethod udp_com::UdpSocketRequest
  (:init
   (&key
    ((:srcAddress __srcAddress) "")
    ((:destAddress __destAddress) "")
    ((:port __port) 0)
    ((:isMulticast __isMulticast) nil)
    )
   (send-super :init)
   (setq _srcAddress (string __srcAddress))
   (setq _destAddress (string __destAddress))
   (setq _port (round __port))
   (setq _isMulticast __isMulticast)
   self)
  (:srcAddress
   (&optional __srcAddress)
   (if __srcAddress (setq _srcAddress __srcAddress)) _srcAddress)
  (:destAddress
   (&optional __destAddress)
   (if __destAddress (setq _destAddress __destAddress)) _destAddress)
  (:port
   (&optional __port)
   (if __port (setq _port __port)) _port)
  (:isMulticast
   (&optional (__isMulticast :null))
   (if (not (eq __isMulticast :null)) (setq _isMulticast __isMulticast)) _isMulticast)
  (:serialization-length
   ()
   (+
    ;; string _srcAddress
    4 (length _srcAddress)
    ;; string _destAddress
    4 (length _destAddress)
    ;; uint16 _port
    2
    ;; bool _isMulticast
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _srcAddress
       (write-long (length _srcAddress) s) (princ _srcAddress s)
     ;; string _destAddress
       (write-long (length _destAddress) s) (princ _destAddress s)
     ;; uint16 _port
       (write-word _port s)
     ;; bool _isMulticast
       (if _isMulticast (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _srcAddress
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _srcAddress (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _destAddress
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destAddress (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _port
     (setq _port (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _isMulticast
     (setq _isMulticast (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass udp_com::UdpSocketResponse
  :super ros::object
  :slots (_successful ))

(defmethod udp_com::UdpSocketResponse
  (:init
   (&key
    ((:successful __successful) nil)
    )
   (send-super :init)
   (setq _successful __successful)
   self)
  (:successful
   (&optional (__successful :null))
   (if (not (eq __successful :null)) (setq _successful __successful)) _successful)
  (:serialization-length
   ()
   (+
    ;; bool _successful
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _successful
       (if _successful (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _successful
     (setq _successful (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass udp_com::UdpSocket
  :super ros::object
  :slots ())

(setf (get udp_com::UdpSocket :md5sum-) "1f9ba3aa4d7a9f81e5e4af8aceccdf35")
(setf (get udp_com::UdpSocket :datatype-) "udp_com/UdpSocket")
(setf (get udp_com::UdpSocket :request) udp_com::UdpSocketRequest)
(setf (get udp_com::UdpSocket :response) udp_com::UdpSocketResponse)

(defmethod udp_com::UdpSocketRequest
  (:response () (instance udp_com::UdpSocketResponse :init)))

(setf (get udp_com::UdpSocketRequest :md5sum-) "1f9ba3aa4d7a9f81e5e4af8aceccdf35")
(setf (get udp_com::UdpSocketRequest :datatype-) "udp_com/UdpSocketRequest")
(setf (get udp_com::UdpSocketRequest :definition-)
      "string srcAddress
string destAddress
uint16 port
bool isMulticast
---
bool successful

")

(setf (get udp_com::UdpSocketResponse :md5sum-) "1f9ba3aa4d7a9f81e5e4af8aceccdf35")
(setf (get udp_com::UdpSocketResponse :datatype-) "udp_com/UdpSocketResponse")
(setf (get udp_com::UdpSocketResponse :definition-)
      "string srcAddress
string destAddress
uint16 port
bool isMulticast
---
bool successful

")



(provide :udp_com/UdpSocket "1f9ba3aa4d7a9f81e5e4af8aceccdf35")


