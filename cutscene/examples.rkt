#lang racket

(require ts-kata-util
         )

(define-example-code
  ;#:with-test (test game-test)
  cutscene hello-world-1
  (story-cutscene))

; ----------------- TEXT

(define-example-code
  cutscene text-1

  (story-cutscene
   (page
    (make-text "BIG text"
               #:scale 5)
    (make-text "Purple text"
               #:color 'purple))))

(define-example-code
  cutscene text-2

  (story-cutscene
   (page
    (make-text "Red text"
               #:color 'red)
    (make-text "Italicized text"
               #:font-style 'italic))))

(define-example-code
  cutscene text-3

  (story-cutscene
   (page
    (make-text "This font is slanted and small"
               #:font-style 'slant
               #:scale 0.3))))

; ----------------- PAGES

(define-example-code
  cutscene page-1

  (story-cutscene
   (page #:bg-color 'orange
         "The background"
         "is orange.")))

(define-example-code
  cutscene page-2

  (story-cutscene
   (page #:border-color 'blue
         "The border"
         "is blue.")))

(define-example-code
  cutscene page-3

  (story-cutscene
   (page #:line-padding 20
         "The space between"
         "the lines is larger.")))

; ----------------- MODE

(define-example-code
  cutscene mode-1

  (story-cutscene
   (page #:mode 'still
         "not moving"))
  )

(define-example-code
  cutscene mode-2

  (story-cutscene
   (page #:mode 'scroll-right-from-center
         "scrolling right from center")
   (page #:mode 'scroll-left-from-center
         "scrolling left from center"))
  )

(define-example-code
  cutscene mode-3

  (story-cutscene
   (page #:mode 'scroll-down-from-center
         "scrolling down from center")
   (page #:mode 'scroll-up-from-center
         "scrolling up from center"))
  )