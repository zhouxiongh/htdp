#lang racket

;; 1.1 
;; tabulate : (number -> number) (listof number) -> (listof number)

;; 1.2
;; fold : (e e -> e) (listof e) e -> e
;; examles (fold + (list 1 2 3) 0) the result is 6
;; (fold * (list 1 2 3) 0) the result is 6
(define (fold fn loe e)
  (cond
    [(empty? loe) e] 
    [else (fn (first loe) (fold fn (rest loe) e))]))

;; tests
(eq? (fold + (list 1 2 3) 0) 6)
(eq? (fold * (list 1 2 3) 1) 6)

;; append : fold (fn) (listof number) (listof number) -> (listof number)
;; 连接两个表
;; examples
; (equal? (append fn (list 1 2 3) (list 4 5 6 7 8))(list 1 2 3 4 5 6 7 8))
(define (append lon lon1)
  (fold cons lon lon1))
;  (cond
;    [(empty? lon) lon1]
;    [else (cons (first lon) (append (rest lon) lon1))]))

;; tests
(append (list 1 2 3) (list 4 5 6))
(equal? (append (list 1 2 3) (list 4 5 6 7 8))(list 1 2 3 4 5 6 7 8))

;; map : (fold (element -> element) (listof element) empty) -> (listof element)

;; 1.3
(define (map fn lon)
  (local ((define (cons-apply e1 e2)
           (cons (fn e1) e2)))
   (fold cons-apply lon empty)))

(map sqr (list 3 4 5))
