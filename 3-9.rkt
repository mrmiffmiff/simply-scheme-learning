#lang simply-scheme
; Following are Scheme expressions whose values are 10 besides (+ 8 2)
; that meet certain requirements

10 ; An atom
(+ 5 5) ; A compound expression made up of three atoms
(+ 2 3 4 1) ; A compound expression made up of four atoms - in retrospect this is 5
(+ 9 (* 0 32) (- 73 72)) ; A compound expression made up of an atom and two compound sub expressions - in retrospect there are 2 atoms here
(/ (* 12 5) 6) ; Any other kind of expression

