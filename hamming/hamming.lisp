(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."
  (when (equal (length dna1) (length dna2))
    (let ((x 0))
      (dotimes (i (length dna1))
        (unless (equal (aref dna1 i) (aref dna2 i))
          (incf x)))
      x)))
