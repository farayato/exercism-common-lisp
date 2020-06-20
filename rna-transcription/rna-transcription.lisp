(in-package #:cl-user)
(defpackage #:rna-transcription
  (:use #:cl)
  (:export #:to-rna))
(in-package #:rna-transcription)


;; G -> C
;; C -> G
;; T -> A
;; A -> U

(defun to-rna (str)
   "Transcribe a string representing DNA nucleotides to RNA."
   (map 'string #'(lambda(nucleotide)
        (getf (list :G #\C :C #\G :T #\A :A #\U) (intern (string nucleotide) "KEYWORD")))
        str))
