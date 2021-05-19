#lang racket
;; similar function

;; sort : list-of-numbers compare -> list-of-numbers
;; 根据比较运算符生成有序排列的表
(define (sort alon comparator)
  (letrec ([sort (lambda(alon)
                   (cond
                     [(empty? alon) empty]
                     [else (insert (first alon) (sort (rest alon)))]))]
           [insert (lambda(an alon)
                     (cond
                       [(empty? alon) (list an)]
                       [else (cond
                               [(comparator an (first alon)) (cons an alon)]
                               [else (cons (first alon) (insert an (rest alon)))])]))])
    (sort alon)))

;; tests
(sort (list 3 7 6 2 9 8) >)
(sort (list 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1) >)
(sort (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) >)

(sort (list 3 7 6 2 9 8) <)
(sort (list 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1) <)
(sort (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20) <)


  