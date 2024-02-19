#lang racket
(require 2htdp/image)

(define red (circle 40 "solid" "red"))
(define yellow (circle 40 "solid" "yellow"))   ;Predefined circles.
(define green (circle 40 "solid" "green"))
(define off (circle 40 "solid" "black"))

;First of all we have to define the sequence of states.

(define theStateSequence (list 1 2 3 4)
  )

;Then we have to attach the string to our states, so that certain state will equal certain color.
; "n" will be the number of our state.

(define colorState
  (lambda (n)
    (println  ;We shall use "println" in order to display the sequence one after another in linear position.
  (cond
    [(equal? n 1) red]            ;If "n" equals/is equal to "1" then the displayed string should be "red".
    [(equal? n 2) yellow]
    [(equal? n 3) green]
    [(equal? n 4) off]
    ))))

(define (draw-red)
  (above red off off))

(define (draw-yellow)
  (above off yellow off))    ;An attempt to make lights more realistic.

(define (draw-green)
  (above off off green))

;Alright, now we need to make a function that will actually run the process.

(define letsRunTheLights
  (lambda (succession)
    (cond
    [(empty? succession) "The end of sequence."]
    [#t (colorState (first succession))
        (sleep 1)
        (letsRunTheLights (rest succession))]
    )))






