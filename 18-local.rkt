#lang racket
;; local
;(define (silly-double x)
;  (let ([x (+ x 3)]
;        [y (+ x 2)])
;    (+ x y -5)))

(define (silly-double x)
  (let* ([x (+ x 3)]
         [y (+ x 2)])
    (+ x y -8)))

(define (tripe x)
  (letrec ([y (+ x 2)]
        [f (lambda (z) (+ z y w x))]
        [w (+ x 7)])
    (f -9)))

(equal? 8 (silly-double 4))
(equal? 9 (tripe 3))