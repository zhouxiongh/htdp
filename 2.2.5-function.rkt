;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.2.5-function) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


(define (f n)
  (+ (/ n 3) 2))

(define (f1 n)
  (+ 10 (* n n)))

(define (f2 n)
  (+ 20 (* (/ 1 2) (* n n))))

(define (f3 n)
  (- 2 (/ 1 n)))