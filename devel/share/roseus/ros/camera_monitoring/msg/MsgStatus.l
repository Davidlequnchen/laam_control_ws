;; Auto-generated. Do not edit!


(when (boundp 'camera_monitoring::MsgStatus)
  (if (not (find-package "CAMERA_MONITORING"))
    (make-package "CAMERA_MONITORING"))
  (shadow 'MsgStatus (find-package "CAMERA_MONITORING")))
(unless (find-package "CAMERA_MONITORING::MSGSTATUS")
  (make-package "CAMERA_MONITORING::MSGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MsgStatus.msg.html


(defclass camera_monitoring::MsgStatus
  :super ros::object
  :slots (_running _laser_on _speed _power ))

(defmethod camera_monitoring::MsgStatus
  (:init
   (&key
    ((:running __running) nil)
    ((:laser_on __laser_on) nil)
    ((:speed __speed) 0.0)
    ((:power __power) 0.0)
    )
   (send-super :init)
   (setq _running __running)
   (setq _laser_on __laser_on)
   (setq _speed (float __speed))
   (setq _power (float __power))
   self)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:laser_on
   (&optional __laser_on)
   (if __laser_on (setq _laser_on __laser_on)) _laser_on)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; bool _running
    1
    ;; bool _laser_on
    1
    ;; float32 _speed
    4
    ;; float32 _power
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;; bool _laser_on
       (if _laser_on (write-byte -1 s) (write-byte 0 s))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _power
       (sys::poke _power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _laser_on
     (setq _laser_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _power
     (setq _power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get camera_monitoring::MsgStatus :md5sum-) "9a60217041610aa06a277c2abf60970c")
(setf (get camera_monitoring::MsgStatus :datatype-) "camera_monitoring/MsgStatus")
(setf (get camera_monitoring::MsgStatus :definition-)
      "bool running
bool laser_on
float32 speed
float32 power

")



(provide :camera_monitoring/MsgStatus "9a60217041610aa06a277c2abf60970c")


