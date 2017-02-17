(in-package :mecab)


(cffi:define-foreign-library libmecab
  (:darwin "libmecab.dylib"))


(cffi:use-foreign-library libmecab)
