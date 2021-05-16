;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.5.2-time_seconds) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 数据分析和定义， 如果已经定义则给出分析
(define-struct time (hour minute second))

;; time->seconds: time -> number
;; 读入一个time 结构体，返回从午夜到time结构体所表示之间的秒数
;; examples : (time->seconds (make-time 0 0 59)) the result is 59
;; (time->seconds (make-time 0 1 59)) the result is 119
;; (time->seconds (make-time 1 0 59)) the result is 3659
;; template
;; (define (time->seconds a-time)
;;    ... (time-hour a-time) ...
;;    ... (time-minute a-time) ...
;;    ... (time-second a-time) ...)
(define (time->seconds a-time)
  (+ (* (* (time-hour a-time) 60) 60)
     (* (time-minute a-time) 60)
     (time-second a-time)))

;; test
(time->seconds (make-time 0 0 59))
(time->seconds (make-time 0 1 59))
(time->seconds (make-time 1 0 59))
(time->seconds (make-time 12 30 2))
