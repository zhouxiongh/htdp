;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 7.5-error_input) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 输入错误
;; checked-area-of-disk: any -> number or error msg
;; 检查输入类型 要求参数为正数, 其他类型提示错误
;; example (checked-area-of-disk 'disk) the result is error msg
;; template:
;(define (checked-area-of-disk v)
;  (cond
;    [(number? v) ... ]
;    [(boolean? v) ...]
;    [(symbol? v) ...]
;    [(struct? v) ...]))

(define (checked-area-of-disk v)
  (cond
    [(number? v) (cond
                   [(> v 0) (area-of-disk v)]
                   [else (error 'checked-area-of-disk "number must great than 0")])]
    [else (error 'checked-area-of-disk "number expeced")]))

(define (area-of-disk n)
  (* 3.14 (* n n)))

;(checked-area-of-disk 0)
;(checked-area-of-disk -1)

;(checked-area-of-disk #t)
(checked-area-of-disk 2)
