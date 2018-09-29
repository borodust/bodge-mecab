[![Build Status](https://travis-ci.org/borodust/bodge-mecab.svg)](https://travis-ci.org/borodust/bodge-mecab) [![Build status](https://ci.appveyor.com/api/projects/status/hwq5jg58ltqkvxy7?svg=true)](https://ci.appveyor.com/project/borodust/bodge-mecab)

# MeCab wrapper for Common Lisp

Wrapper over [`MeCab`](http://taku910.github.io/mecab/) library.


## Install

### bodge-mecab
```lisp
;; add cl-bodge distribution into quicklisp
(ql-dist:install-dist "http://bodge.borodust.org/dist/org.borodust.bodge.txt")

;; load the wrapper
(ql:quickload :bodge-mecab)
```

## Usage

`%mecab` package contains direct bindings to MeCab C API.

## Example

```lisp
(ql:quickload '(mecab-blob bodge-mecab))
(%mecab:version)
```
