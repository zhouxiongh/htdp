;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 7.2-mixed_data_fun) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 设计处理混合数据的函数

;; 数据定义
(define-struct spider (space legs))
; 运输所需空间大小和腿的数目
(define-struct elephant (space))
; 运输所需空间大小
(define-struct monkey (space intelligence))
; 运输所需空间大小和智力
;; 合约、用途说明和函数头部
;; (fits? a-animal cage-capacity) : animal, number -> bool
;; examples
;; template
;(define (fits? a-animal cage-capacity)
;  (cond
;    [(spider? a-animal) ...]
;    [(elephant? a-animal) ...]
;    [(monkey? a-animal) ...]))
(define (fits? a-animal cage-capacity)
  (cond
    [(spider? a-animal) (< (spider-space a-animal) cage-capacity)]
    [(elephant? a-animal) (< (elephant-space a-animal) cage-capacity)]
    [(monkey? a-animal) (< (monkey-space a-animal) cage-capacity)]))

;; tests
(fits? (make-spider 5 8) 4)
(fits? (make-spider 5 8) 10)

(fits? (make-elephant 2000) 10)
(fits? (make-elephant 2000) 5000)

(fits? (make-monkey 20 20) 10)
(fits? (make-monkey 20 20) 50)