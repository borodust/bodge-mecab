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
