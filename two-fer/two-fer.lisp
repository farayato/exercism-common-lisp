(in-package #:cl-user)
(defpackage #:two-fer
  (:use #:cl)
  (:export #:twofer))
(in-package #:two-fer)

(defun twofer (&optional name)
  (when (equal name nil)
    (setf name "you"))
  (format nil "One for ~a, one for me." name))

  
