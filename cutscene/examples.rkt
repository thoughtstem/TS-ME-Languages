#lang racket

(require ts-kata-util
         )

(define-example-code
  ;#:with-test (test game-test)
  cutscene hello-world-1
  (story-cutscene))


; ----------------- TEXT MOVEMENT

(define-example-code
  cutscene text-1

  (story-cutscene
   (page #:mode 'still
         "not moving"))
  )

(define-example-code
  cutscene text-2

  (story-cutscene
   (page #:mode 'scroll-right-from-center
         "scrolling right from center")
   (page #:mode 'scroll-left-from-center
         "scrolling left from center"))
  )

(define-example-code
  cutscene text-3

  (story-cutscene
   (page #:mode 'scroll-down-from-center
         "scrolling down from center")
   (page #:mode 'scroll-up-from-center
         "scrolling up from center"))
  )