;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname 9.5-more_example) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; sum : list-of-numbers -> number
;; 计算a-list-of-nums中数的总和
;(define (sum a-list-of-nums) ...)
;; exaples


;; template
(define (sum a-list-of-nums)
  (cond
    [(empty? a-list-of-nums) 0]
    [else (+ (first a-list-of-nums)  (sum (rest a-list-of-nums)))]))

;; test

(= (sum empty)
   0)
(= (sum (cons 1.00 empty))
        1.0)
(= (sum (cons 17.05 (cons 1.22 (cons 2.59 empty))))
   20.86)