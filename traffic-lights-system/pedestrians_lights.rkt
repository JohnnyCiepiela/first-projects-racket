#lang racket
(require 2htdp/image)

(define red (circle 40 "solid" "red"))
(define green (circle 40 "solid" "green"))


(define theStateSequence (list 1 2)
  )

(define colorState
  (lambda (n)
    (println  
  (cond
    [(equal? n 1) red]           
    [(equal? n 2) green]
    ))))


(define letsRunTheLights
  (lambda (succession)
    (cond
    [(empty? succession) "The end of sequence."]
    [#t (colorState (first succession))
        (sleep 1)
        (letsRunTheLights (rest succession))]
    )))







