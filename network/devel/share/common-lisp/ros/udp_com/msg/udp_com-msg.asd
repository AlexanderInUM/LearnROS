
(cl:in-package :asdf)

(defsystem "udp_com-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "UdpPacket" :depends-on ("_package_UdpPacket"))
    (:file "_package_UdpPacket" :depends-on ("_package"))
  ))