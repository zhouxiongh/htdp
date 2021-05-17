;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.1-interval) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 区间(3,7]
(define (between n left right)
  (and (< left n) (> right n)))

(define (is-7? n)
  (= n 7))

(define (f1 n)
  (or (is-7? n) (between n 3 7)))

;(f1 3)
;(f1 7)

;; 区间[3,7]
(define (is-3? n)
  (= n 3))
(define (f2 n)
  (or (is-7? n) (is-3? n) (between n 3 7)))

;(f2 3)
;(f2 7)
;(f2 5)
;(f2 10)

;; 区间[3,9)

(define (f3 n)
  (or (is-3? n) (between n 3 9)))

;(f3 3)
;(f3 9)
;(f3 10)

;; 区间(1,3) and (9,11)
(define (f4 n)
  (or (between n 1 3) (between n 9 11)))

;(f4 2)
;(f4 10)
;(f4 3)
;(f4 9)

;; 区间[1,3]之外的数
(define (f5 n)
  (not (between n 1 3)))

(f5 1)
(f5 3)
(f5 2)