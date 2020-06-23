(in-package #:cl-user)
(defpackage #:anagram
  (:use #:common-lisp)
  (:export #:anagrams-for
   :export #:same-occurrence))
    
(in-package #:anagram)

(defun same-occurrence (chr str1 str2)
  "Return true if count character is the same in both strings - case insensitive"
  (= (count chr str1 :test #'char-equal) (count chr str2 :test #'char-equal)))

(defun anagrams-for (word possible-anagrams)
  (setq possible-anagrams (remove-if-not #'(lambda (x) (equal (length word) (length x))) possible-anagrams)) ;;remove  anagrams bigger than word
  (let ((anagrams possible-anagrams))
    (dolist (char-from-word (coerce word 'list))
     (dolist (anagram anagrams)
              (unless (and (same-occurrence char-from-word word anagram) (not(equalp anagram word)))
                ;; they must have the same occurence and be different from word
                (setq possible-anagrams (remove anagram possible-anagrams :test #'equalp))))))
    possible-anagrams)
