;; Auto-generated. Do not edit!


(when (boundp 'virtual_blinker::CarState)
  (if (not (find-package "VIRTUAL_BLINKER"))
    (make-package "VIRTUAL_BLINKER"))
  (shadow 'CarState (find-package "VIRTUAL_BLINKER")))
(unless (find-package "VIRTUAL_BLINKER::CARSTATE")
  (make-package "VIRTUAL_BLINKER::CARSTATE"))

(in-package "ROS")
;;//! \htmlinclude CarState.msg.html


(defclass virtual_blinker::CarState
  :super ros::object
  :slots (_x _y _theta _speed _id _t ))

(defmethod virtual_blinker::CarState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:speed __speed) 0.0)
    ((:id __id) 0)
    ((:t __t) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _speed (float __speed))
   (setq _id (round __id))
   (setq _t (round __t))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ;; float32 _speed
    4
    ;; int32 _id
    4
    ;; int32 _t
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _t
       (write-long _t s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _t
     (setq _t (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get virtual_blinker::CarState :md5sum-) "9038b65c4bd5219fecca0d10618172a1")
(setf (get virtual_blinker::CarState :datatype-) "virtual_blinker/CarState")
(setf (get virtual_blinker::CarState :definition-)
      "float32 x
float32 y
float32 theta
float32 speed
int32 id
int32 t

")



(provide :virtual_blinker/CarState "9038b65c4bd5219fecca0d10618172a1")


