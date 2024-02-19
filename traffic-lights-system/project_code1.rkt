#lang racket

;First of all we have to define the sequence of states.

(define theStateSequence (list 1 2 3)
  )

;Then we have to attach the string to our states, so that certain state will equal certain color.
; "n" will be the number of our state.

(define colorState
  (lambda (n)
    (println  ;We shall use "println" in order to display the sequence one after another in linear position.
  (cond
    [(equal? n 1) "red"]            ;If "n" equals/is equal to "1" then the displayed string should be "red".
    [(equal? n 2) "yellow"]
    [(equal? n 3) "green"]
    ))))

;Alright, now we need to make a function that will actually run the process.

(define letsRunTheLights
  (lambda (succession)
    (cond
    [(empty? succession) "The end of sequence."]
    [#t (colorState (first succession))
        (sleep 1)
        (letsRunTheLights (rest succession))]
    )))





