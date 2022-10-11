
(cl:in-package :asdf)

(defsystem "udp_com-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UdpSend" :depends-on ("_package_UdpSend"))
    (:file "_package_UdpSend" :depends-on ("_package"))
    (:file "UdpSocket" :depends-on ("_package_UdpSocket"))
    (:file "_package_UdpSocket" :depends-on ("_package"))
  ))