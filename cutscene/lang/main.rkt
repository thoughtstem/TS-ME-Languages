#lang at-exp racket

;(provide )

(require meta-engine
         ts-kata-util ;needed for define/contract/doc
         scribble/srcdoc
         (for-doc racket/base scribble/manual)
         )

(define/contract/doc (story-cutscene #:width  [w 800]
                                     #:height [h 600]
                                    . pages)
  (->i ()
       (#:width  [w positive?]
        #:height [h positive?])
       #:rest [rest any/c]
       [returns game?])

 @{The top-level function for the scutscene language.
   Can be run with no parameters to get a basic, default cutscene.}
  
  (play! #:width w
         #:height h
         (game
          (key-manager-entity)
          (delta-time-entity)
          (if (empty? pages)
              (cutscene (page ""))
              (apply cutscene pages))
           )))