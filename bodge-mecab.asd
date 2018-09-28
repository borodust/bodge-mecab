(asdf:defsystem bodge-mecab
  :description "Wrapper over mecab library"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (alexandria claw)
  :serial t
  :components ((:file "claw")
               (:static-file "bodge_mecab.h")
               (:module mecab-includes :pathname "lib/mecab/mecab/include/")
               (:module spec)))
