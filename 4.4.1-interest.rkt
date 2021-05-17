;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.1-interest) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; desgin cond func


;; interest-rate
;; 计算存款的利率
;; example (interest-rate 100) the result is 0.04
;; (interest-rate 2000) the result is 0.045
;; (interest-rate 10000) the result is 0.05

(define (interest-rate n)
  (cond
    [(<= n 1000) 0.04]
    [(and (> n 1000) (<= n 5000)) 0.045]
    [(> n 5000) 0.05]))

;; test
(interest-rate 100)
(interest-rate 2000)
(interest-rate 10000)

;; example (interest 100) the result is 4
;; (interest 2000) the result is 90
;; (interest 10000) the result is 500
(define (interest n)
  (* n (interest-rate n)))

(interest 100)
(interest 2000)
(interest 10000)

