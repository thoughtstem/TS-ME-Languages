#lang racket

;if using #lang cutscene
(module reader syntax/module-reader
  cutscene/lang)

;if you (require cutscene)
(provide (all-from-out "./lang.rkt"))
(require "./lang.rkt")
