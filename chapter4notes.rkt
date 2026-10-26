#lang simply-scheme
; This procedure returns the square of its argument
(define (square x)
  (* x x))

; These procedures, processes, are different, but compute the same function
(define (f x)
  (+ (* 3 x) 12))
(define (g x)
  (* 3 (+ x 4)))

(define (f2 a b)
  (+ (* 3 a) b))

(define (average a b)
  (/ (+ a b) 2))

(define (hypotenuse a b)
  (sqrt (+ (square a) (square b))))

; Next, exercises
; Boring exercises
; 4.1 See notes for my answer itself but here's the related procedure
(define (ho-hum x y)
  (+ x (* 2 y)))
; 4.2 See notes for my answer itself but here's the related procedure
(define (yawn x)
  (+ 3 (* x 2)))
; 4.3 no
; 4.4 Fixed versions
(define (sphere-volume r)
  (* (/ 4 3)
      3.141592654
      (* r r r)))
(define (next x)
  (+ x 1))
; Skipping third as proper version already defined above
(define (triangle-area base height)
  (* 0.5 base height))
(define (sum-of-squares x y)
  (+ (square x) (square y)))

; 4.5 A procedure to convert temperature from Fahrenheit to Celsius
(define (fahrenheit-to-celsius temp)
  (* (/ 5 9) (- temp 32)))
; And Celsius to Fahrenheit
(define (celsius-to-fahrenheit temp)
  (+ 32 (* temp (/ 9 5))))

; 4.6 A procedure "fourth" that computes the fourth power of its argument; but two versions
; First uses multiplication, the second uses square and no directly multiplication
(define (fourth-reg x)
  (* x x x x))
(define (fourth-square x)
  (square (square x)))

; 4.7 A procedure that computes the absolute value of its argument by finding the
; square root of its square
(define (abs-by-square x)
  (sqrt (square x)))

; 4.8 A procedure that takes two arguments and returns the value where the second is an exponent applied
; to 10 and multiplies by the first, as if it had been written in scientific notation with those values
(define (scientific n x)
  (* n (expt 10 x)))
; Now a reverse, two functions to get the coefficient and exponent from a value
(define (sci-exponent x)
  (let ((candidate (inexact->exact (floor (/ (log x) (log 10))))))
    (if (> (expt 10 candidate) x)
        (- candidate 1)
        (if (<= (expt 10 (+ candidate 1)) x)
            (+ candidate 1)
            candidate))))
(define (sci-coefficient x)
  (/ x (expt 10 (sci-exponent x))))
; I had to move ahead for some of this to deal with floating-point arithmetic issues
; Claude also helped me find inexact->exact

; 4.9 Procedure "discount" that takes an initial price and a percentage discount, returning the new price
(define (discount base-price percent-discount)
  (* (- base-price (* base-price (/ percent-discount 100))) 1.0))

; 4.10 A procedure to compute tip at 15% but making sure total money paid is a whole number
;(define (tip bill)
 ; (- (ceiling (+ bill (/ (* bill 15) 100)))
  ;   bill))
(define (tip bill)
  (let ((cents (inexact->exact (round (* bill 100)))))
    (exact->inexact (/ (- (* (ceiling (/ (* cents (/ 115 100)) 100)) 100) cents) 100))))
