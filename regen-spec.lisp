(load "~/quicklisp/setup.lisp")

(bind-arguments *target-arch*)

(script "install-testing-dist")

(ql:quickload :claw)

(let ((claw::*local-cpu* *target-arch*))
  (ql:quickload :bodge-mecab))
