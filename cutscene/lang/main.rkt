#lang at-exp racket

(provide ;make-entity
         cutscene-file)

(require meta-engine
         ts-kata-util ;needed for define/contract/doc
         scribble/srcdoc
         (for-doc racket/base scribble/manual)
         )


(define/contract/doc (make-entity [s "[META-SPRITE]"]
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

  (->i ()
       ([s any/c]
        #:scale       [scale number?]
        #:font-size   [f-size positive?]
        #:font-face   [f-face any/c]
        #:font-family [f-family symbol?]
        #:font-style  [f-style  symbol?]
        #:font-weight [f-weight symbol?]
        #:color       [color (or/c symbol? object? string?)]
        #:underlined? [underlined? boolean?]
        #:position    [pos any/c]
        #:direction   [dir number?]
        #:speed       [spd positive?])
  [returns any/c])

 @{Function to make an independent entity.}
  
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

(define cutscene-file (make-parameter #f))

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

   (displayln "Preparing game")

   (displayln (cutscene-file))

   (define g
     (game
       (key-manager-entity)
       (delta-time-entity)
       (if (empty? pages)
         (cutscene (page "Hello, World!"))
         (apply cutscene pages))))

   (displayln "Game ready.  About to play!")

   (play! #:width w
          #:height h
          (if (cutscene-file)
            (reload #:on (file-changed (cutscene-file))
                    g)
            g)))
