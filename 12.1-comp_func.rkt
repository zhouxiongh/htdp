;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 12.1-comp_func) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; insert : number, sorted-list-of-numbers -> sorted-list-of-numbers
;; insert a number to a sorted list , return sorted list
(define (insert n alon)
  (cond
    [(empty? alon) (cons n empty)]
    [else (cond
            [(<= n (first alon)) (cons n alon)]
            [(> n (first alon)) (cons (first alon) (insert n (rest alon)))])]))

;; tests
(insert 2 (cons 1 (cons 3 empty)))
(cons 1 (cons 2 (cons 3 empty)))


;; sort : list-of-numbers -> list-of-numbers
;; use number of alon , create sorted list
;(define (sort alon) ...)
(define (sort alon)
  (cond
    [(empty? alon) empty]
    [(cons? alon) (insert (first alon) (sort (rest alon)))]))

;; tests
(empty? (sort empty))
(sort (cons 1297.04 (cons 2000.00 (cons -505.24 empty))))
