(in-package :cl-user)

(defpackage #:my-new-package
  (:nicknames #:newpack)
  (:use :cl :cl-user)
  (:export #:mad-adder))

(in-package :my-new-package)

(defvar *my-private-var "I'm not exported from the package")

(defun mad-adder (n &rest rest)
  "An addition function for my NEW package"
  (apply #'+ n rest))
