;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.5-complex_data_fun) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 设计处理符合数据的函数
;; 需要两个新的步骤：数据分析和模板设计

;; 给使用下述结构体的函数设计模板
(define-struct movie (title producer))

;;(define (select-movie a-movie)
;;  ... (movie-title a-movie) ...
;;  ... (movie-producer a-movie) ...)

(define-struct boyfriend (name hair eyes phone))

;; (define (find-boyfriend a-boy)
;;    ... (boy-name a-boy) ...
;;    ... (boy-hair a-boy) ...
;;    ... (boy-eyes a-boy) ...
;;    ... (boy-phone a-boy) ...)


