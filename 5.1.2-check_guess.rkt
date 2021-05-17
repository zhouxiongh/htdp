;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 5.1.2-check_guess) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; check-guess : number,number : symol
;; 猜数字游戏
;; example (check-guess 1 2) the result is TooSmall
;; (check-guess 2 2) the result is Perfect
;; (check-guess 3 2) the result is TooLarge
(require htdp/guess)
(define (check-guess g t)
  (cond
    [(< g t) 'TooSmall]
    [(> g t) 'TooLarge]
    [else 'Perfect]))

;(check-guess 1 2)
;(check-guess 2 2)
;(check-guess 2 3)
;(guess-with-gui check-guess)
