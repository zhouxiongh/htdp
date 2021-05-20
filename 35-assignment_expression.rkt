;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 35-assignment_expression) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; 对变量赋值

(define address-book empty)

;; add-to-address-book : symbol number -> void
(define (add-to-address-book name phone)
  (set! address-book (cons (list name phone) address-book)))


;; lookup : symbol (listof(list symbol number)) -> number or false
;; 在address-book 查找name的电话号码
(define (lookup name ab)
  (cond
    [(empty? ab) false]
    [else
     (cond
       [(symbol=? (first (first ab)) name) (second (first ab))]
       [else (lookup name (rest ab))])]))

;; tests
(equal? (lookup 'Adam address-book) #f)
(add-to-address-book 'Adam 123)
(equal? (lookup 'Adam address-book) 123)
