
(cl:in-package :asdf)

(defsystem "labjack_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MsgLabJack" :depends-on ("_package_MsgLabJack"))
    (:file "_package_MsgLabJack" :depends-on ("_package"))
  ))