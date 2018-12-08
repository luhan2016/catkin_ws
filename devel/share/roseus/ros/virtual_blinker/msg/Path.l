;; Auto-generated. Do not edit!


(when (boundp 'virtual_blinker::Path)
  (if (not (find-package "VIRTUAL_BLINKER"))
    (make-package "VIRTUAL_BLINKER"))
  (shadow 'Path (find-package "VIRTUAL_BLINKER")))
(unless (find-package "VIRTUAL_BLINKER::PATH")
  (make-package "VIRTUAL_BLINKER::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass virtual_blinker::Path
  :super ros::object
  :slots (_path _id ))

(defmethod virtual_blinker::Path
  (:init
   (&key
    ((:path __path) (let (r) (dotimes (i 0) (push (instance virtual_blinker::Position :init) r)) r))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _path __path)
   (setq _id (round __id))
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; virtual_blinker/Position[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; virtual_blinker/Position[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; virtual_blinker/Position[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance virtual_blinker::Position :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get virtual_blinker::Path :md5sum-) "9264079b9c004a5176752540b97220c3")
(setf (get virtual_blinker::Path :datatype-) "virtual_blinker/Path")
(setf (get virtual_blinker::Path :definition-)
      "Position[] path
int32 id
================================================================================
MSG: virtual_blinker/Position
float32 x
float32 y

")



(provide :virtual_blinker/Path "9264079b9c004a5176752540b97220c3")


