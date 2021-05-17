;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.1.2-checked_hour2wages) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; checked-hours->wages : list-of-number -> list-of-number
;; 检查输入的工作时间，确保没有一个元素超过100
;; help function
(define RATE 10)
(define (wage h)
  (* RATE h))

(define (checked-hours->wages alon)
  (cond
    [(empty? alon) empty]
    [else (cond
            [(< 100 (first alon)) (error "too many hours")]
            [else (cons (wage (first alon)) (checked-hours->wages (rest alon)))])]))

(checked-hours->wages (cons 8 (cons 8 (cons 8 (cons 8 (cons 8 empty))))))
;(checked-hours->wages (cons 8 (cons 101 (cons 8 (cons 101 (cons 8 empty))))))
;(checked-hours->wages (cons 8 (cons 8 (cons 8 (cons 101 (cons 8 empty))))))