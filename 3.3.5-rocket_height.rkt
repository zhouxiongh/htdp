;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.5-rocket_height) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; height : number -> number
;; 计算火箭在给定时刻的高度
;; example (height 1) the result is 4.9

(define G 9.8)

(define (v t)
  (* G t))

(define (height t)
  (* (/ 1 2) (v t) t))

(height 1)
4.9