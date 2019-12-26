#lang racket

(require fandom-sprites
         meta-engine
         2htdp/image)

(define (easy-animated-sprite sheet r c n)
  (animated-sprite #:fps 12
                   (sheet->list sheet
                                #:rows r
                                #:cols c
                                #:row (- n 1))))

(define-syntax-rule (define-animated-sprite sheet r c n name)
  (begin
    (provide name)
    (define name (easy-animated-sprite sheet r c n))))

; HARRY POTTER
(define-animated-sprite harrypotter-sheet 1 18 1 harrypotter)
(define-animated-sprite snape-sheet 1 21 1 snape)
(define-animated-sprite tentacula-sheet 1 14 1 tentacula)
(define-animated-sprite hagrid-sheet 1 11 1 hagrid)
(define-animated-sprite oldwizard-sheet 1 6 1 oldwizard)
(define-animated-sprite pumpkin-sheet 1 8 1 pumpkin)

; MARIO
(define-animated-sprite princesspeach-sheet 1 2 1 princesspeach)
(define-animated-sprite toad-sheet 1 2 1 toad)
(define-animated-sprite luigi-sheet 1 2 1 luigi)
(define-animated-sprite mario-sheet 1 2 1 mario)
(define-animated-sprite yoshi-sheet 2 2 1 yoshi)
(define-animated-sprite yoshi-sheet 2 2 2 redyoshi)

; AVENGERS
(define-animated-sprite blackwidow-sheet 4 4 3 blackwidow)
(define-animated-sprite gamora-sheet 4 4 3 gamora)
(define-animated-sprite ironman-sheet 4 4 3 ironman)
(define-animated-sprite mandarin-sheet 4 4 3 mandarin)
(define-animated-sprite redskull-sheet 4 4 3 redskull)
(define-animated-sprite starlord-sheet 4 4 3 starlord)
(define-animated-sprite wintersoldier-sheet 4 4 3 wintersoldier)
(define-animated-sprite captainamerica-sheet 4 4 3 captainamerica)
(define-animated-sprite hawkeye-sheet 4 4 3 hawkeye)
(define-animated-sprite loki-sheet 4 4 3 loki)
(define-animated-sprite nebula-sheet 4 4 3 nebula)
(define-animated-sprite rocketracoon-sheet 4 4 3 rocketracoon)
(define-animated-sprite thor-sheet 4 4 3 thor)
(define-animated-sprite drax-sheet 4 4 3 drax)
(define-animated-sprite hulk-sheet 4 4 3 hulk)
(define-animated-sprite malekith-sheet 4 4 3 malekith)
(define-animated-sprite nickfury-sheet 4 4 3 nickfury)
(define-animated-sprite ronan-sheet 4 4 3 ronan)
(define-animated-sprite tonystark-sheet 4 4 3 tonystark)
(define-animated-sprite ironpatriot-sheet 4 4 3 ironpatriot)

; MINECRAFT
(define-animated-sprite steve-sheet 1 2 1 steve)
(define-animated-sprite alex-sheet 1 2 1 alex)
(define-animated-sprite (scale .75 creeper-sheet) 1 4 1 creeper)
(define-animated-sprite chicken-sheet 1 4 1 chicken)
(define-animated-sprite pig-sheet 1 4 1 pig)
(define-animated-sprite sheep-sheet 1 4 1 sheep)
(define-animated-sprite (scale .75 skeleton-sheet) 1 4 1 skeleton)
(define-animated-sprite ghast-sheet 1 4 1 ghast)

; POKEMON
(define-animated-sprite armoredmewtwo-sheet 4 4 3 armoredmewtwo)
(define-animated-sprite pikachu-sheet 1 4 1 pikachu)
(define-animated-sprite pikachurun-sheet 1 4 1 pikachurun)
(define-animated-sprite jessie-sheet 4 4 3 jessie)
(define-animated-sprite james-sheet 4 4 3 james)
(define-animated-sprite redboy-sheet 4 4 3 redboy)
(define-animated-sprite redgirl-sheet 4 4 3 redgirl)
(define-animated-sprite greenboy-sheet 4 4 3 greenboy)
(define-animated-sprite greengirl-sheet 4 4 3 greengirl)
(define-animated-sprite bulbasaur-sheet 1 5 1 bulbasaur)
(define-animated-sprite ivysaur-sheet 1 6 1 ivysaur)
(define-animated-sprite venusaur-sheet 1 5 1 venasaur)
(define-animated-sprite squirtle-sheet 1 6 1 squirtle)
(define-animated-sprite wartortle-sheet 1 8 1 wartortle)
(define-animated-sprite blastoise-sheet 1 8 1 blastoise)
(define-animated-sprite charmander-sheet 1 5 1 charmander)
(define-animated-sprite charmeleon-sheet 1 8 1 charmelon)
(define-animated-sprite charizard-sheet 1 8 1 charizard)