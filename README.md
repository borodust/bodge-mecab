# MeCab wrapper for Common Lisp

Wrapper over [`MeCab`](http://taku910.github.io/mecab/) library.


## Install

### MeCab

#### macOS
```bash
brew install mecab mecab-ipadic
```

### cl-mecab
* Install [`quicklisp`](https://quicklisp.org/)
* Clone repository to `~/quicklisp/local-projects/`
* Load wrapper

```lisp
(ql:quickload :cl-mecab)
```

## Usage

`:%mecab` package contains direct bindings to MeCab C API. `:mecab`, on the other hand, is
intended for thin lispified routines over native interface.

## Example

```lisp
(ql:quickload :cl-mecab)
(%mecab:version)
```