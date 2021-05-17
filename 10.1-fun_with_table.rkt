;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.1-fun_with_table) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 返回表的函数

;; hours->wages : list-of-numbers -> list-of-numbers
;; 由周工作时间表创建周工资表
(define (hours->wages alon)
  (cond
    [(empty? alon) empty]
    [else (cons (wage (first alon)) (hours->wages (rest alon)))]))

;; wage : number -> number
;; 计算某人工作h小时的总工资(时新12元)
(define (wage h)
  (* RATE h))

(define RATE 14)
;; test
(hours->wages (cons 8 (cons 8 (cons 8 (cons 8 (cons 8 empty))))))

;;; wage : number,number -> number
;;; 给定时新计算某人工作h小时的总工资
;(define (wage1 h rage)
;  (* h rage))