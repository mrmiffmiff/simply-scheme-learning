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