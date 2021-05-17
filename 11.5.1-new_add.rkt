;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11.5.1-new_add) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; new-add : N, N -> N
;; 读入两个自然数，不使用提供的+，返回两数之和
(define (new-add n x)
  (cond
    [(zero? n) x]
    [else (add1 (new-add (sub1 n) x))]))

;; tests
(= (new-add 1 2)
   3)

(= (new-add 1 0)
   1)