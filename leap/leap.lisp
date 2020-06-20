(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

#|
      My old solution
(defun leap-year-p (year)
  (and (= (mod year 4) 0)
        (or (/= (mod year 100) 0) (= (mod year 400) 0))))
|#

(defun divisible-by (numerator denominator)
  (= (mod numerator denominator) 0))

(defun leap-year-p (year)
  (and (divisible-by year 4)
       (or (not(divisible-by year 100)) (divisible-by year 400))))


