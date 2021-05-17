;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11.4-other_nature) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; ! : N -> N
;; 计算 n * (n-1) * ... * 2 * 1
(define (! n)
  (cond
    [(zero? n) 1]
    [else (* n (! (sub1 n)))]))


;; test
(= (! 3)
6)
(= (! 1)
1)
(= (! 10)
   3628800)
(= (! 0)
   1)