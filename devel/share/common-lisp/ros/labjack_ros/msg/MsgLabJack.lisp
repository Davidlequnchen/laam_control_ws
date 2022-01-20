; Auto-generated. Do not edit!


(cl:in-package labjack_ros-msg)


;//! \htmlinclude MsgLabJack.msg.html

(cl:defclass <MsgLabJack> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass MsgLabJack (<MsgLabJack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgLabJack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgLabJack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name labjack_ros-msg:<MsgLabJack> is deprecated: use labjack_ros-msg:MsgLabJack instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MsgLabJack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader labjack_ros-msg:value-val is deprecated.  Use labjack_ros-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgLabJack>) ostream)
  "Serializes a message object of type '<MsgLabJack>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgLabJack>) istream)
  "Deserializes a message object of type '<MsgLabJack>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgLabJack>)))
  "Returns string type for a message object of type '<MsgLabJack>"
  "labjack_ros/MsgLabJack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgLabJack)))
  "Returns string type for a message object of type 'MsgLabJack"
  "labjack_ros/MsgLabJack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgLabJack>)))
  "Returns md5sum for a message object of type '<MsgLabJack>"
  "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgLabJack)))
  "Returns md5sum for a message object of type 'MsgLabJack"
  "0aca93dcf6d857f0e5a0dc6be1eaa9fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgLabJack>)))
  "Returns full string definition for message of type '<MsgLabJack>"
  (cl:format cl:nil "float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgLabJack)))
  "Returns full string definition for message of type 'MsgLabJack"
  (cl:format cl:nil "float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgLabJack>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgLabJack>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgLabJack
    (cl:cons ':value (value msg))
))
