;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 29-vector) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; vector

;; vector-sum-for-3 : (vector number number number) -> number
(define (vector-sum-for-3 v)
  (+ (vector-ref v 0)
     (vector-ref v 1)
     (vector-ref v 2)))

;; tests
(= (vector-sum-for-3 (vector 1 2 3)) 6)
(= (vector-sum-for-3 (vector -1 3/4 1/4)) 0)
