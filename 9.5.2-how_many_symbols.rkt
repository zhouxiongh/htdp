;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname 9.5.2-how_many_symbols) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; how-many-symbols: list-of-symbol : number
;; 计算符号表的数目


;; template
(define (how-many-symbols a-list-of-symbol)
  (cond
    [(empty? a-list-of-symbol) 0]
    [else (+ 1 (how-many-symbols (rest a-list-of-symbol)))]))

;; tests
(= (how-many-symbols empty)
   0)

(= (how-many-symbols (cons 'a (cons 'b empty)))
   2)