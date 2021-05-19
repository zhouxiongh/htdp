#lang racket

;; function as value

;; a-function=? : function function -> boolean
;; 读入两个把数映射到数的函数，判断对于输入1.2，3 以及-5.7是否返回相同的结果
;; (a-function=? f1 f2) -> ???
(define (a-function=? f1 f2)
  (or (equal? (f1 1.2) (f2 1.2))
      (equal? (f1 3) (f2 3))
      (equal? (f1 -5.7) (f2 -5.7))))

(define (f1 x) x)
(define (f2 x) (+ x x))

;; tests
(a-function=? f1 f1)
(a-function=? f1 f2)