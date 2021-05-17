;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11.2.1-repeat) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; repeat : number, symbol -> list-of-symbol
;; 读入自然数n和一个符号，返回包含n个符号的表
;; example (repeat 2 'hello) -> (cons 'hello (cons 'hello empty))
(define (repeat n asymbol)
  (cond
    [(zero? n) empty]
    [else (cons asymbol (repeat (sub1 n) asymbol))]))


(repeat 2 'hello)
(repeat 0 'hello)
(repeat 3 'doll)