; Auto-generated. Do not edit!


(cl:in-package cgr_localization-srv)


;//! \htmlinclude LocalizationInterfaceSrv-request.msg.html

(cl:defclass <LocalizationInterfaceSrv-request> (roslisp-msg-protocol:ros-message)
  ((loc_x
    :reader loc_x
    :initarg :loc_x
    :type cl:float
    :initform 0.0)
   (loc_y
    :reader loc_y
    :initarg :loc_y
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0)
   (map
    :reader map
    :initarg :map
    :type cl:string
    :initform ""))
)

(cl:defclass LocalizationInterfaceSrv-request (<LocalizationInterfaceSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationInterfaceSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationInterfaceSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgr_localization-srv:<LocalizationInterfaceSrv-request> is deprecated: use cgr_localization-srv:LocalizationInterfaceSrv-request instead.")))

(cl:ensure-generic-function 'loc_x-val :lambda-list '(m))
(cl:defmethod loc_x-val ((m <LocalizationInterfaceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-srv:loc_x-val is deprecated.  Use cgr_localization-srv:loc_x instead.")
  (loc_x m))

(cl:ensure-generic-function 'loc_y-val :lambda-list '(m))
(cl:defmethod loc_y-val ((m <LocalizationInterfaceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-srv:loc_y-val is deprecated.  Use cgr_localization-srv:loc_y instead.")
  (loc_y m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <LocalizationInterfaceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-srv:orientation-val is deprecated.  Use cgr_localization-srv:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <LocalizationInterfaceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-srv:map-val is deprecated.  Use cgr_localization-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationInterfaceSrv-request>) ostream)
  "Serializes a message object of type '<LocalizationInterfaceSrv-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'loc_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'loc_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationInterfaceSrv-request>) istream)
  "Deserializes a message object of type '<LocalizationInterfaceSrv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loc_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loc_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationInterfaceSrv-request>)))
  "Returns string type for a service object of type '<LocalizationInterfaceSrv-request>"
  "cgr_localization/LocalizationInterfaceSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationInterfaceSrv-request)))
  "Returns string type for a service object of type 'LocalizationInterfaceSrv-request"
  "cgr_localization/LocalizationInterfaceSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationInterfaceSrv-request>)))
  "Returns md5sum for a message object of type '<LocalizationInterfaceSrv-request>"
  "a0134c4275a788c78e585db0543085bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationInterfaceSrv-request)))
  "Returns md5sum for a message object of type 'LocalizationInterfaceSrv-request"
  "a0134c4275a788c78e585db0543085bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationInterfaceSrv-request>)))
  "Returns full string definition for message of type '<LocalizationInterfaceSrv-request>"
  (cl:format cl:nil "float32 loc_x~%float32 loc_y~%float32 orientation~%string map~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationInterfaceSrv-request)))
  "Returns full string definition for message of type 'LocalizationInterfaceSrv-request"
  (cl:format cl:nil "float32 loc_x~%float32 loc_y~%float32 orientation~%string map~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationInterfaceSrv-request>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationInterfaceSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationInterfaceSrv-request
    (cl:cons ':loc_x (loc_x msg))
    (cl:cons ':loc_y (loc_y msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':map (map msg))
))
;//! \htmlinclude LocalizationInterfaceSrv-response.msg.html

(cl:defclass <LocalizationInterfaceSrv-response> (roslisp-msg-protocol:ros-message)
  ((loc_x
    :reader loc_x
    :initarg :loc_x
    :type cl:float
    :initform 0.0)
   (loc_y
    :reader loc_y
    :initarg :loc_y
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocalizationInterfaceSrv-response (<LocalizationInterfaceSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationInterfaceSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationInterfaceSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgr_localization-srv:<LocalizationInterfaceSrv-response> is deprecated: use cgr_localization-srv:LocalizationInterfaceSrv-response instead.")))

(cl:ensure-generic-function 'loc_x-val :lambda-list '(m))
(cl:defmethod loc_x-val ((m <LocalizationInterfaceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-srv:loc_x-val is deprecated.  Use cgr_localization-srv:loc_x instead.")
  (loc_x m))

(cl:ensure-generic-function 'loc_y-val :lambda-list '(m))
(cl:defmethod loc_y-val ((m <LocalizationInterfaceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-srv:loc_y-val is deprecated.  Use cgr_localization-srv:loc_y instead.")
  (loc_y m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <LocalizationInterfaceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-srv:orientation-val is deprecated.  Use cgr_localization-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationInterfaceSrv-response>) ostream)
  "Serializes a message object of type '<LocalizationInterfaceSrv-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'loc_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'loc_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationInterfaceSrv-response>) istream)
  "Deserializes a message object of type '<LocalizationInterfaceSrv-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loc_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'loc_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationInterfaceSrv-response>)))
  "Returns string type for a service object of type '<LocalizationInterfaceSrv-response>"
  "cgr_localization/LocalizationInterfaceSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationInterfaceSrv-response)))
  "Returns string type for a service object of type 'LocalizationInterfaceSrv-response"
  "cgr_localization/LocalizationInterfaceSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationInterfaceSrv-response>)))
  "Returns md5sum for a message object of type '<LocalizationInterfaceSrv-response>"
  "a0134c4275a788c78e585db0543085bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationInterfaceSrv-response)))
  "Returns md5sum for a message object of type 'LocalizationInterfaceSrv-response"
  "a0134c4275a788c78e585db0543085bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationInterfaceSrv-response>)))
  "Returns full string definition for message of type '<LocalizationInterfaceSrv-response>"
  (cl:format cl:nil "~%float32 loc_x~%float32 loc_y~%float32 orientation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationInterfaceSrv-response)))
  "Returns full string definition for message of type 'LocalizationInterfaceSrv-response"
  (cl:format cl:nil "~%float32 loc_x~%float32 loc_y~%float32 orientation~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationInterfaceSrv-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationInterfaceSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationInterfaceSrv-response
    (cl:cons ':loc_x (loc_x msg))
    (cl:cons ':loc_y (loc_y msg))
    (cl:cons ':orientation (orientation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalizationInterfaceSrv)))
  'LocalizationInterfaceSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalizationInterfaceSrv)))
  'LocalizationInterfaceSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationInterfaceSrv)))
  "Returns string type for a service object of type '<LocalizationInterfaceSrv>"
  "cgr_localization/LocalizationInterfaceSrv")