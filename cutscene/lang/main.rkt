#lang at-exp racket

(provide make-entity)

(require meta-engine
         ts-kata-util ;needed for define/contract/doc
         scribble/srcdoc
         (for-doc racket/base scribble/manual)
         )


(define (make-entity [s "[META-SPRITE]"]
                     #:scale       [scale 1]
                     #:font-size   [f-size 13]
                     #:font-face   [f-face MONOSPACE-FONT-FACE]
                     #:font-family [f-family 'modern]
                     #:font-style  [f-style  'normal]
                     #:font-weight [f-weight 'normal]
                     #:color       [color 'yellow]
                     #:underlined? [underlined? #f]
                     #:position  [pos (posn 400 300)]
                     #:direction [dir 0]
                     #:speed     [spd 0])
  (define spr (if (string? s)
                  (sprite (make-text s
                                     #:scale       scale
                                     #:font-size   f-size
                                     #:font-face   f-face
                                     #:font-family f-family
                                     #:font-style  f-style
                                     #:font-weight f-weight
                                     #:color       color
                                     #:underlined? underlined?))
                  s))
  
  (entity (direction dir)
          (speed spd) ; 100 pps (pixels per second)
          spr
          (position pos (get-movement-vector))))

(define/contract/doc (story-cutscene #:width  [w 800]
                                     #:height [h 600]
                                    . pages)
  (->i ()
       (#:width  [w positive?]
        #:height [h positive?])
       #:rest [rest any/c]
       [returns any/c])

 @{The top-level function for the cutscene language.
   Can be run with no parameters to get a basic, default cutscene.}
  
  (play! #:width w
         #:height h
         (game
          (key-manager-entity)
          (delta-time-entity)
          (if (empty? pages)
              (cutscene (page "Hello, World!"))
              (apply cutscene pages))
           )))