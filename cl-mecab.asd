(in-package :cl-user)

(defpackage :mecab.def
  (:use :cl :asdf))

(in-package :mecab.def)


(defsystem cl-mecab
  :description "Wrapper over mecab"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria cffi cl-autowrap cl-plus-c)
  :serial t
  :components ((:file "packages")
               (:file "libmecab")
               (:file "autowrap")
               (:file "mecab")
               (:module spec
                        :components ((:static-file "cl_mecab.h")))))
