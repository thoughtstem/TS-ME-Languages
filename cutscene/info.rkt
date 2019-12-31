#lang info

(define scribblings '(("scribblings/manual.scrbl" (multi-page))))

(define deps '(
  "https://github.com/thoughtstem/meta-engine.git?path=meta-engine"
  "https://github.com/thoughtstem/fandom-sprites-me.git"
  "https://github.com/thoughtstem/TS-GE-Katas.git?path=ts-kata-util"
  ))

(define compile-omit-paths '(
  "examples.rkt"))

