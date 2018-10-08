(claw:c-include "bodge_mecab.h" bodge-mecab
  :in-package :%mecab
  :sysincludes (:mecab-includes)
  :include-definitions ("(mecab|MECAB)_\\w*")
  :rename-symbols (claw:by-removing-prefixes "mecab_" "MECAB_"))
