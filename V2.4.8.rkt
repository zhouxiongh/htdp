#lang racket

;; version 2.4.8

;; lock? : bool bool bool -> json

(define (lock? paid-super paid-certification paid-circle)
  (cond
    [paid-super 'unlock-full]
    [paid-certification 'unlock-cert]
    [paid-circle 'unlock-circle]
    [else 'locked]))

;; tests

;; circle
(eq? (lock? #f #f #t) 'unlock-circle)
;; super
(eq? (lock? #t #t #t) 'unlock-full)
(eq? (lock? #t #f #f) 'unlock-full)
(eq? (lock? #t #t #f) 'unlock-full)
(eq? (lock? #t #f #t) 'unlock-full)
;; cert and circle
(eq? (lock? #f #t #t) 'unlock-except-offline)
;; cert
(eq? (lock? #f #t #f) 'unlock-cert)
;; new user
(eq? (lock? #f #f #f) 'locked)

;; fill : users users -> users 
;; examples: (fill 1 10) -> 'ShangHai
;; (fill 10 50) -> 50
;; (fill 10 70) -> 70 
;; (fill 70 100) -> 70
