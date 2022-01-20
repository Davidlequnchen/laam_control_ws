; Auto-generated. Do not edit!


(cl:in-package camera_monitoring-msg)


;//! \htmlinclude MsgAcceleration.msg.html

(cl:defclass <MsgAcceleration> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (acceleration_averaged
    :reader acceleration_averaged
    :initarg :acceleration_averaged
    :type cl:float
    :initform 0.0))
)

(cl:defclass MsgAcceleration (<MsgAcceleration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MsgAcceleration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MsgAcceleration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_monitoring-msg:<MsgAcceleration> is deprecated: use camera_monitoring-msg:MsgAcceleration instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MsgAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_monitoring-msg:header-val is deprecated.  Use camera_monitoring-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <MsgAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_monitoring-msg:acceleration-val is deprecated.  Use camera_monitoring-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'acceleration_averaged-val :lambda-list '(m))
(cl:defmethod acceleration_averaged-val ((m <MsgAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_monitoring-msg:acceleration_averaged-val is deprecated.  Use camera_monitoring-msg:acceleration_averaged instead.")
  (acceleration_averaged m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MsgAcceleration>) ostream)
  "Serializes a message object of type '<MsgAcceleration>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acceleration_averaged))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MsgAcceleration>) istream)
  "Deserializes a message object of type '<MsgAcceleration>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration_averaged) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MsgAcceleration>)))
  "Returns string type for a message object of type '<MsgAcceleration>"
  "camera_monitoring/MsgAcceleration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MsgAcceleration)))
  "Returns string type for a message object of type 'MsgAcceleration"
  "camera_monitoring/MsgAcceleration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MsgAcceleration>)))
  "Returns md5sum for a message object of type '<MsgAcceleration>"
  "47cc82a8c8063d6c8db25dce71da2cbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MsgAcceleration)))
  "Returns md5sum for a message object of type 'MsgAcceleration"
  "47cc82a8c8063d6c8db25dce71da2cbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MsgAcceleration>)))
  "Returns full string definition for message of type '<MsgAcceleration>"
  (cl:format cl:nil "Header header~%float32 acceleration~%float32 acceleration_averaged~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MsgAcceleration)))
  "Returns full string definition for message of type 'MsgAcceleration"
  (cl:format cl:nil "Header header~%float32 acceleration~%float32 acceleration_averaged~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MsgAcceleration>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MsgAcceleration>))
  "Converts a ROS message object to a list"
  (cl:list 'MsgAcceleration
    (cl:cons ':header (header msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':acceleration_averaged (acceleration_averaged msg))
))
