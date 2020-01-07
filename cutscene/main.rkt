#lang racket

;if using #lang cutscene
(module reader syntax/module-reader
  cutscene/lang

  ;To facilitate hotswapping without the user needing to do anything special, we capture the currently running file when they use #lang cutscene
  #:wrapper1 (lambda (t) 
               (local-require racket/list)

               (define ret (t))
               (define prelude
                 (datum->syntax (first ret)
                                `(begin
                                   (cutscene-file ,(syntax-source (first ret)) ) ) ))
               
               (cons prelude ret))) 

;if you (require cutscene)
(provide (all-from-out "./lang.rkt"))
(require "./lang.rkt")
