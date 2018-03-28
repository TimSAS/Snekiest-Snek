;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Snekiest Snek|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

;world state structure:
(define-struct apple [pos pic])
(define-struct snekPart [pos dir pic])
(define-struct worldState [fullSnek apple])

;our main, calls all other functions
(define (main ws)
  (big-bang ws
    [to-draw drawSnek]
    [on-tick tickSnek]
    [stop-when stopSnek]
    [on-key keySnek]
    ))

;Function drawSnek
;goes through snekParts and draws them, pretty simple
(define (drawSnek ws) #true)

;Function tickSnek
;movement of snek
(define (tickSnek ws) #true)

;Function stopSnek
;determines when it's game over - either when hit the wall, or when eats itself
(define (stopSnek ws) #true)

;Function keySnek
;just changes the direction
(define (keySnek ws k) #true)

;starting the game:
(define ourGame (make-worldState (cons (make-snekPart (make-posn 400 400) 1 12) '()) (make-apple (make-posn 600 600) 13)))
(main ourGame)