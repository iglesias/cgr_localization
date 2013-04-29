; Auto-generated. Do not edit!


(cl:in-package cgr_localization-msg)


;//! \htmlinclude LocalizationMsg.msg.html

(cl:defclass <LocalizationMsg> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:float
    :initform 0.0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (angleUncertainty
    :reader angleUncertainty
    :initarg :angleUncertainty
    :type cl:float
    :initform 0.0)
   (locationUncertainty
    :reader locationUncertainty
    :initarg :locationUncertainty
    :type cl:float
    :initform 0.0)
   (map
    :reader map
    :initarg :map
    :type cl:string
    :initform "")
   (lastLaserRunTime
    :reader lastLaserRunTime
    :initarg :lastLaserRunTime
    :type cl:float
    :initform 0.0)
   (laserRunTime
    :reader laserRunTime
    :initarg :laserRunTime
    :type cl:float
    :initform 0.0)
   (laserNumObservedPoints
    :reader laserNumObservedPoints
    :initarg :laserNumObservedPoints
    :type cl:integer
    :initform 0)
   (laserNumCorrespondences
    :reader laserNumCorrespondences
    :initarg :laserNumCorrespondences
    :type cl:integer
    :initform 0)
   (laserStage0Weights
    :reader laserStage0Weights
    :initarg :laserStage0Weights
    :type cl:float
    :initform 0.0)
   (laserStageRWeights
    :reader laserStageRWeights
    :initarg :laserStageRWeights
    :type cl:float
    :initform 0.0)
   (laserMeanSqError
    :reader laserMeanSqError
    :initarg :laserMeanSqError
    :type cl:float
    :initform 0.0)
   (lastPointCloudRunTime
    :reader lastPointCloudRunTime
    :initarg :lastPointCloudRunTime
    :type cl:float
    :initform 0.0)
   (pointCloudRunTime
    :reader pointCloudRunTime
    :initarg :pointCloudRunTime
    :type cl:float
    :initform 0.0)
   (pointCloudNumObservedPoints
    :reader pointCloudNumObservedPoints
    :initarg :pointCloudNumObservedPoints
    :type cl:integer
    :initform 0)
   (pointCloudNumCorrespondences
    :reader pointCloudNumCorrespondences
    :initarg :pointCloudNumCorrespondences
    :type cl:integer
    :initform 0)
   (pointCloudStage0Weights
    :reader pointCloudStage0Weights
    :initarg :pointCloudStage0Weights
    :type cl:float
    :initform 0.0)
   (pointCloudStageRWeights
    :reader pointCloudStageRWeights
    :initarg :pointCloudStageRWeights
    :type cl:float
    :initform 0.0)
   (pointCloudMeanSqError
    :reader pointCloudMeanSqError
    :initarg :pointCloudMeanSqError
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocalizationMsg (<LocalizationMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalizationMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalizationMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgr_localization-msg:<LocalizationMsg> is deprecated: use cgr_localization-msg:LocalizationMsg instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:timeStamp-val is deprecated.  Use cgr_localization-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:x-val is deprecated.  Use cgr_localization-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:y-val is deprecated.  Use cgr_localization-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:angle-val is deprecated.  Use cgr_localization-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'angleUncertainty-val :lambda-list '(m))
(cl:defmethod angleUncertainty-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:angleUncertainty-val is deprecated.  Use cgr_localization-msg:angleUncertainty instead.")
  (angleUncertainty m))

(cl:ensure-generic-function 'locationUncertainty-val :lambda-list '(m))
(cl:defmethod locationUncertainty-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:locationUncertainty-val is deprecated.  Use cgr_localization-msg:locationUncertainty instead.")
  (locationUncertainty m))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:map-val is deprecated.  Use cgr_localization-msg:map instead.")
  (map m))

(cl:ensure-generic-function 'lastLaserRunTime-val :lambda-list '(m))
(cl:defmethod lastLaserRunTime-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:lastLaserRunTime-val is deprecated.  Use cgr_localization-msg:lastLaserRunTime instead.")
  (lastLaserRunTime m))

(cl:ensure-generic-function 'laserRunTime-val :lambda-list '(m))
(cl:defmethod laserRunTime-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:laserRunTime-val is deprecated.  Use cgr_localization-msg:laserRunTime instead.")
  (laserRunTime m))

(cl:ensure-generic-function 'laserNumObservedPoints-val :lambda-list '(m))
(cl:defmethod laserNumObservedPoints-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:laserNumObservedPoints-val is deprecated.  Use cgr_localization-msg:laserNumObservedPoints instead.")
  (laserNumObservedPoints m))

(cl:ensure-generic-function 'laserNumCorrespondences-val :lambda-list '(m))
(cl:defmethod laserNumCorrespondences-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:laserNumCorrespondences-val is deprecated.  Use cgr_localization-msg:laserNumCorrespondences instead.")
  (laserNumCorrespondences m))

(cl:ensure-generic-function 'laserStage0Weights-val :lambda-list '(m))
(cl:defmethod laserStage0Weights-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:laserStage0Weights-val is deprecated.  Use cgr_localization-msg:laserStage0Weights instead.")
  (laserStage0Weights m))

(cl:ensure-generic-function 'laserStageRWeights-val :lambda-list '(m))
(cl:defmethod laserStageRWeights-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:laserStageRWeights-val is deprecated.  Use cgr_localization-msg:laserStageRWeights instead.")
  (laserStageRWeights m))

(cl:ensure-generic-function 'laserMeanSqError-val :lambda-list '(m))
(cl:defmethod laserMeanSqError-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:laserMeanSqError-val is deprecated.  Use cgr_localization-msg:laserMeanSqError instead.")
  (laserMeanSqError m))

(cl:ensure-generic-function 'lastPointCloudRunTime-val :lambda-list '(m))
(cl:defmethod lastPointCloudRunTime-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:lastPointCloudRunTime-val is deprecated.  Use cgr_localization-msg:lastPointCloudRunTime instead.")
  (lastPointCloudRunTime m))

(cl:ensure-generic-function 'pointCloudRunTime-val :lambda-list '(m))
(cl:defmethod pointCloudRunTime-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:pointCloudRunTime-val is deprecated.  Use cgr_localization-msg:pointCloudRunTime instead.")
  (pointCloudRunTime m))

(cl:ensure-generic-function 'pointCloudNumObservedPoints-val :lambda-list '(m))
(cl:defmethod pointCloudNumObservedPoints-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:pointCloudNumObservedPoints-val is deprecated.  Use cgr_localization-msg:pointCloudNumObservedPoints instead.")
  (pointCloudNumObservedPoints m))

(cl:ensure-generic-function 'pointCloudNumCorrespondences-val :lambda-list '(m))
(cl:defmethod pointCloudNumCorrespondences-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:pointCloudNumCorrespondences-val is deprecated.  Use cgr_localization-msg:pointCloudNumCorrespondences instead.")
  (pointCloudNumCorrespondences m))

(cl:ensure-generic-function 'pointCloudStage0Weights-val :lambda-list '(m))
(cl:defmethod pointCloudStage0Weights-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:pointCloudStage0Weights-val is deprecated.  Use cgr_localization-msg:pointCloudStage0Weights instead.")
  (pointCloudStage0Weights m))

(cl:ensure-generic-function 'pointCloudStageRWeights-val :lambda-list '(m))
(cl:defmethod pointCloudStageRWeights-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:pointCloudStageRWeights-val is deprecated.  Use cgr_localization-msg:pointCloudStageRWeights instead.")
  (pointCloudStageRWeights m))

(cl:ensure-generic-function 'pointCloudMeanSqError-val :lambda-list '(m))
(cl:defmethod pointCloudMeanSqError-val ((m <LocalizationMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgr_localization-msg:pointCloudMeanSqError-val is deprecated.  Use cgr_localization-msg:pointCloudMeanSqError instead.")
  (pointCloudMeanSqError m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalizationMsg>) ostream)
  "Serializes a message object of type '<LocalizationMsg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeStamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angleUncertainty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'locationUncertainty))))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lastLaserRunTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'laserRunTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'laserNumObservedPoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'laserNumCorrespondences)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'laserStage0Weights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'laserStageRWeights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'laserMeanSqError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lastPointCloudRunTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pointCloudRunTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'pointCloudNumObservedPoints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pointCloudNumCorrespondences)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pointCloudStage0Weights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pointCloudStageRWeights))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pointCloudMeanSqError))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalizationMsg>) istream)
  "Deserializes a message object of type '<LocalizationMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeStamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angleUncertainty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'locationUncertainty) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lastLaserRunTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'laserRunTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laserNumObservedPoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laserNumCorrespondences) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'laserStage0Weights) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'laserStageRWeights) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'laserMeanSqError) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lastPointCloudRunTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pointCloudRunTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointCloudNumObservedPoints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pointCloudNumCorrespondences) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pointCloudStage0Weights) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pointCloudStageRWeights) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pointCloudMeanSqError) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalizationMsg>)))
  "Returns string type for a message object of type '<LocalizationMsg>"
  "cgr_localization/LocalizationMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalizationMsg)))
  "Returns string type for a message object of type 'LocalizationMsg"
  "cgr_localization/LocalizationMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalizationMsg>)))
  "Returns md5sum for a message object of type '<LocalizationMsg>"
  "88e4cd133e897255a68320aa8fedc7f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalizationMsg)))
  "Returns md5sum for a message object of type 'LocalizationMsg"
  "88e4cd133e897255a68320aa8fedc7f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalizationMsg>)))
  "Returns full string definition for message of type '<LocalizationMsg>"
  (cl:format cl:nil "float64 timeStamp~%float32 x~%float32 y~%float32 angle~%float32 angleUncertainty~%float32 locationUncertainty~%string map~%~%float64 lastLaserRunTime~%float64 laserRunTime~%int32 laserNumObservedPoints~%int32 laserNumCorrespondences~%float32 laserStage0Weights~%float32 laserStageRWeights~%float32 laserMeanSqError~%~%float64 lastPointCloudRunTime~%float64 pointCloudRunTime~%int32 pointCloudNumObservedPoints~%int32 pointCloudNumCorrespondences~%float32 pointCloudStage0Weights~%float32 pointCloudStageRWeights~%float32 pointCloudMeanSqError~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalizationMsg)))
  "Returns full string definition for message of type 'LocalizationMsg"
  (cl:format cl:nil "float64 timeStamp~%float32 x~%float32 y~%float32 angle~%float32 angleUncertainty~%float32 locationUncertainty~%string map~%~%float64 lastLaserRunTime~%float64 laserRunTime~%int32 laserNumObservedPoints~%int32 laserNumCorrespondences~%float32 laserStage0Weights~%float32 laserStageRWeights~%float32 laserMeanSqError~%~%float64 lastPointCloudRunTime~%float64 pointCloudRunTime~%int32 pointCloudNumObservedPoints~%int32 pointCloudNumCorrespondences~%float32 pointCloudStage0Weights~%float32 pointCloudStageRWeights~%float32 pointCloudMeanSqError~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalizationMsg>))
  (cl:+ 0
     8
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'map))
     8
     8
     4
     4
     4
     4
     4
     8
     8
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalizationMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalizationMsg
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':angleUncertainty (angleUncertainty msg))
    (cl:cons ':locationUncertainty (locationUncertainty msg))
    (cl:cons ':map (map msg))
    (cl:cons ':lastLaserRunTime (lastLaserRunTime msg))
    (cl:cons ':laserRunTime (laserRunTime msg))
    (cl:cons ':laserNumObservedPoints (laserNumObservedPoints msg))
    (cl:cons ':laserNumCorrespondences (laserNumCorrespondences msg))
    (cl:cons ':laserStage0Weights (laserStage0Weights msg))
    (cl:cons ':laserStageRWeights (laserStageRWeights msg))
    (cl:cons ':laserMeanSqError (laserMeanSqError msg))
    (cl:cons ':lastPointCloudRunTime (lastPointCloudRunTime msg))
    (cl:cons ':pointCloudRunTime (pointCloudRunTime msg))
    (cl:cons ':pointCloudNumObservedPoints (pointCloudNumObservedPoints msg))
    (cl:cons ':pointCloudNumCorrespondences (pointCloudNumCorrespondences msg))
    (cl:cons ':pointCloudStage0Weights (pointCloudStage0Weights msg))
    (cl:cons ':pointCloudStageRWeights (pointCloudStageRWeights msg))
    (cl:cons ':pointCloudMeanSqError (pointCloudMeanSqError msg))
))
