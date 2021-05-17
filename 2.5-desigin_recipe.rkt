;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.5-desigin_recipe) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; area-of-ring : number number -> number





;; area-of-ring : number number -> number
;; (define (area-of-ring outer inner) ...)


;; area-of-ring : number number -> number
;; 计算一个半径为outer，洞的半径为inner的环的面积
;; (define (area-of-ring outer inner) ...)

;; area-of-ring : number number -> number
;; 计算一个半径为outer,洞的半径为inner的环的面积
;; 例子：(area-of-ring 5 3) 的结果为50.24
;; (define (area-of-ring outer inner) ...)


;; area-of-ring : number number -> number
;; 计算一个半径为outer,洞的半径为inner的环的面积
;; 例子:(area-of-ring 5 3) 的结果为50.24
;;(define (area-of-ring outer inner)
;;  (- (area-of-disk outer)
;;     (area-of-disk inner)))


;; area-of-ring : number number -> number
;; 计算一个半径为outer,洞的半径为inner的环的面积
;; 例子:(area-of-ring 5 3) 的结果为50.24
(define (area-of-disk r)
  (* 3.14 (* r r)))
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

;; 测试
(area-of-ring 5 3)

;; 预期的值
50.24