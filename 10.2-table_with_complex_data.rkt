;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.2-table_with_complex_data) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 包含结构体的表

;; invertory-record 是一个结构体
(define-struct ir (name price))
;; (make-ir s n) 
;; s是符号，n是一个正数
;; inventory
;; 1. empty
;; 2. (cons ir inv) ir 是库存记录，inv是库存清单

;; sum : inventory -> number
;; 计算 an-inv 的价格总和
(define (sum an-inv) 
	(cond 
		[(empty? an-inv) 0]
		[else (+ (ir-price (first an-inv)) (sum (rest an-inv)))]))

