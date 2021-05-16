;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.3-define_struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 结构体定义

;; define of posn
;;(define-struct posn (x y))
;; 此定义的结果是创建3个操作
;; 1. make-posn 构造器
;; 2. posn-x 选择器
;; 3. posn-y 选择器

(define-struct entry (name zip phone))

(make-entry 'PeterLee 15270 '606-7771)

(entry-name (make-entry 'PeterLee 15270 '606-7771))

(entry-zip (make-entry 'PeterLee 15270 '606-7771))

(entry-phone (make-entry 'PeterLee 15270 '606-7771))

(define-struct star (last first instrument sales))

(make-star 'Friedman 'Dan 'ukelele 19004)