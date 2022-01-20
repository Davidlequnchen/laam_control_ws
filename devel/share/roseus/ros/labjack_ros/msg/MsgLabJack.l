;; Auto-generated. Do not edit!


(when (boundp 'labjack_ros::MsgLabJack)
  (if (not (find-package "LABJACK_ROS"))
    (make-package "LABJACK_ROS"))
  (shadow 'MsgLabJack (find-package "LABJACK_ROS")))
(unless (find-package "LABJACK_ROS::MSGLABJACK")
  (make-package "LABJACK_ROS::MSGLABJACK"))

(in-package "ROS")
;;//! \htmlinclude MsgLabJack.msg.html


(defclass labjack_ros::MsgLabJack
  :super ros::object
  :slots (_value ))

(defmethod labjack_ros::MsgLabJack
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get labjack_ros::MsgLabJack :md5sum-) "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(setf (get labjack_ros::MsgLabJack :datatype-) "labjack_ros/MsgLabJack")
(setf (get labjack_ros::MsgLabJack :definition-)
      "float32 value

")



(provide :labjack_ros/MsgLabJack "0aca93dcf6d857f0e5a0dc6be1eaa9fb")


