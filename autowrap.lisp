(in-package :mecab)


(autowrap:c-include
 '(cl-mecab spec "cl_mecab.h")
 :spec-path '(cl-mecab spec)
 :definition-package :%mecab
 :exclude-sources (".*\\.h")
 :include-sources ("mecab.h")
 :include-definitions ("^(__)?(u|u_)?int.{1,2}(_t)?$"
                       "size_t")
 :no-accessors t
 :symbol-regex (("(mecab|MECAB)_.*" () (lambda (name matches regex)
                                         (declare (ignore matches regex))
                                         (subseq name 6)))))
