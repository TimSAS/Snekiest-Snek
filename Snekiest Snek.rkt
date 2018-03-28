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
(define (drawSnek ws) #true)

;Function tickSnek
(define (tickSnek ws) #true)

;Function stopSnek
(define (stopSnek ws) #true)

;Function keySnek
(define (keySnek ws k) #true)

;starting the game:
(define ourGame (make-worldState (cons (make-snekPart (make-posn 400 400) 1 12) '()) (make-apple (make-posn 600 600) 13)))
(main ourGame)