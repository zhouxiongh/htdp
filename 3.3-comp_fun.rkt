;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3-comp_fun) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 复合函数

;; inches->cm: number -> number
;; 英制转公制
;; 例子 (inches->cm 1) 的结果是2.54

(define (inches->cm inches)
  (* 2.54 inches))

;; test
(inches->cm 1)

2.54

;; feet->inches: number -> number
;; 英制 foot 转 inch
;; 例子 (feet->inches 1) 的结果是12
(define (feet->inches feet)
  (* 12 feet))

;; test
(feet->inches 1)
12

;; yards->feet: number -> number
;; 英制互转 yard 转 feet
;; example (yards->feet 1) result is 3
(define (yards->feet yards)
  (* yards 3))

(yards->feet 1)
3

