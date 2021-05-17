;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11.1-nature) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 处理任意大的自然数
;; hellos : N -> list-of-numbers
;; 建立包含n个'hello的表
(define (hellos n)
  (cond
    [(zero? n) empty]
    [else (cons 'hello (hellos (sub1 n)))]))

;; test
(hellos 0)
empty
(hellos 2)
(cons 'hello (cons 'hello empty))

