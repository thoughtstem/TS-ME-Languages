#lang racket

(require ts-kata-util
         )

(define-example-code
  cutscene hello-world-1
  (story-cutscene))

; ----------------- TEXT

(define-example-code
  cutscene text-1

  (story-cutscene
   (page
    (make-text "BIG tex.t"
               #:font-size 20)
    (make-text "Purple text."
               #:color 'purple)))
  )

(define-example-code
  cutscene text-2

  (story-cutscene
   (page
    (make-text "Red text."
               #:color 'red)
    (make-text "Italicized text."
               #:font-style 'italic)))
  )

(define-example-code
  cutscene text-3

  (story-cutscene
   (page
    (make-text "This font is slanted and small."
               #:font-style 'slant
               #:font-size 8)))
  )

(define-example-code
  cutscene text-4

  (story-cutscene
   (page
    (make-text "This font family is system and is bolded."
               #:font-face #f
               #:font-family 'system
               #:font-weight 800)))
  )

(define-example-code
  cutscene text-5

  (story-cutscene
   (page
    (make-text "Each")
    (make-text "line"
               #:color 'green
               #:font-size 14
               #:underlined? #t)
    (make-text "of"
               #:color 'blue
               #:font-size 15
               #:font-weight 500)
    (make-text "text"
               #:color 'purple
               #:font-size 17
               #:font-style 'italic)
    (make-text "is"
               #:color 'orange
               #:font-size 16
               #:font-face #f
               #:font-family 'roman)
    (make-text "DIFFERENT!"
               #:color 'red
               #:font-size 20
               #:font-family 'script
               #:font-weight 800)))
  )


; ----------------- PAGES

(define-example-code
  cutscene page-1

  (story-cutscene
   (page #:bg-color 'orange
         "The background"
         "is orange."))
  )

(define-example-code
  cutscene page-2

  (story-cutscene
   (page #:border-color 'blue
         "The border"
         "is blue."))
  )

(define-example-code
  cutscene page-3

  (story-cutscene
   (page #:line-padding 20
         "The space between"
         "the lines is larger."))
  )

(define-example-code
  cutscene page-4

  (story-cutscene
   (page #:bg forest-bg
         "This is a forest background.")))

(define-example-code
  cutscene page-5

  (story-cutscene
   (page #:width 200
         #:height 200
         #:relative-position (posn -300 -200)
         "This is a"
         "small page"
         "in the top"
         "left corner."))
  )

(define-example-code
  cutscene page-6

  (story-cutscene
   (page #:duration 3
         "This page will last 3 seconds.")
   (page #:duration 5
         "This one will last 5 seconds.")
   (page #:duration 10
         "This one will last 10 seconds!"))
  )

(define-example-code
  cutscene page-7

  (story-cutscene
   (page #:mode 'scroll-right
         "text scrolling right -->")
   (page #:mode 'scroll-left
         "<-- text scrolling left")
   (page #:mode 'scroll-down
         "text scrolling down"
         "|"
         "v")
   (page #:mode 'scroll-up
         "^"
         "|"
         "text scrolling up"))
  )

(define-example-code
  cutscene page-8

  (story-cutscene
   (page #:mode 'scroll-down-right
         "text scrolling to the bottom-right corner.")
   (page #:mode 'scroll-down-left
         "text scrolling to the bottom-left corner.")
   (page #:mode 'scroll-up-right
         "text scrolling to the top-right corner.")
   (page #:mode 'scroll-up-left
         "text scrolling to the top-left corner."))
  )

; ----------------- SPRITES

(define-example-code
  cutscene sprites-1

  (story-cutscene
   (page pikachu-sprite
         "This is Pikachu."))
  )

(define-example-code
  cutscene sprites-2

  (story-cutscene
   (page hulk-sprite
         "Hulk likes to walk"
         "inside volcanoes."
         #:bg lava-bg
         #:mode 'scroll-right))
  )

(define-example-code
  cutscene sprites-3

  (story-cutscene
   (page harrypotter-sprite
         "Harry walks slow in the snow."
         #:bg snow-bg
         #:mode 'scroll-top-right
         #:scroll-speed 30))
  )

(define-example-code
  cutscene sprites-4

  (story-cutscene
   (page (make-entity yoda-sprite
                      #:position (posn 20 20))
         "Yoda likes to be in a corner."))
  )

(define-example-code
  cutscene sprites-5

  (story-cutscene
   (page (make-entity mario-sprite
                      #:position (posn 20 20))
         (make-entity luigi-sprite
                      #:position (posn 780 20))
         (make-entity princesspeach-sprite
                      #:position (posn 20 580))
         (make-entity toad-sprite
                      #:position (posn 780 580))
         "Mario is playing 4 corners"
         "with his friends."))
  )

(define-example-code
  cutscene sprites-6

  (story-cutscene
   (page (make-entity creeper-sprite
                      #:position (posn 0 0)
                      #:direction 45
                      #:speed 100)
         (make-entity steve-sprite
                      #:position (posn 40 40)
                      #:direction 45
                      #:speed 120)
         (make-entity "Steve, run!"
                      #:color 'black
                      #:underlined? #t
                      #:font-size 20
                      #:position (posn 400 500))
         #:bg desert-bg))
  )