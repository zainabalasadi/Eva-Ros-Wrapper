;; Auto-generated. Do not edit!


(when (boundp 'eva_driver::EvaJoint)
  (if (not (find-package "EVA_DRIVER"))
    (make-package "EVA_DRIVER"))
  (shadow 'EvaJoint (find-package "EVA_DRIVER")))
(unless (find-package "EVA_DRIVER::EVAJOINT")
  (make-package "EVA_DRIVER::EVAJOINT"))

(in-package "ROS")
;;//! \htmlinclude EvaJoint.msg.html


(defclass eva_driver::EvaJoint
  :super ros::object
  :slots (_j1 _j2 _j3 _j4 _j5 _j6 ))

(defmethod eva_driver::EvaJoint
  (:init
   (&key
    ((:j1 __j1) 0.0)
    ((:j2 __j2) 0.0)
    ((:j3 __j3) 0.0)
    ((:j4 __j4) 0.0)
    ((:j5 __j5) 0.0)
    ((:j6 __j6) 0.0)
    )
   (send-super :init)
   (setq _j1 (float __j1))
   (setq _j2 (float __j2))
   (setq _j3 (float __j3))
   (setq _j4 (float __j4))
   (setq _j5 (float __j5))
   (setq _j6 (float __j6))
   self)
  (:j1
   (&optional __j1)
   (if __j1 (setq _j1 __j1)) _j1)
  (:j2
   (&optional __j2)
   (if __j2 (setq _j2 __j2)) _j2)
  (:j3
   (&optional __j3)
   (if __j3 (setq _j3 __j3)) _j3)
  (:j4
   (&optional __j4)
   (if __j4 (setq _j4 __j4)) _j4)
  (:j5
   (&optional __j5)
   (if __j5 (setq _j5 __j5)) _j5)
  (:j6
   (&optional __j6)
   (if __j6 (setq _j6 __j6)) _j6)
  (:serialization-length
   ()
   (+
    ;; float64 _j1
    8
    ;; float64 _j2
    8
    ;; float64 _j3
    8
    ;; float64 _j4
    8
    ;; float64 _j5
    8
    ;; float64 _j6
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _j1
       (sys::poke _j1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j2
       (sys::poke _j2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j3
       (sys::poke _j3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j4
       (sys::poke _j4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j5
       (sys::poke _j5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j6
       (sys::poke _j6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _j1
     (setq _j1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j2
     (setq _j2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j3
     (setq _j3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j4
     (setq _j4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j5
     (setq _j5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j6
     (setq _j6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get eva_driver::EvaJoint :md5sum-) "30e3b3187560ea4f8505d287c27ca8d4")
(setf (get eva_driver::EvaJoint :datatype-) "eva_driver/EvaJoint")
(setf (get eva_driver::EvaJoint :definition-)
      "# EvaJoint.msg

float64 j1
float64 j2
float64 j3
float64 j4
float64 j5
float64 j6

")



(provide :eva_driver/EvaJoint "30e3b3187560ea4f8505d287c27ca8d4")


