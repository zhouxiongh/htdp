;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 15.1-ref_struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; reference struct

(define-struct parent (children n d eyes))
;; children is list of children , n and e is symbol, d is number

;; list of children
;; 1. empty
;; 2. (cons p loc) p is parent, loc is list of children

;; 年轻一代人:
(define Gustav (make-parent empty 'Gustav 1988 'brown)) 
(define Fred&Eva (list Gustav)) 
;; 中间一代人:
(define Adam (make-parent empty 'Adam 1950 'yellow)) 
(define Dave (make-parent empty 'Dave 1955 'black)) 
(define Eva (make-parent Fred&Eva 'Eva 1965 'blue)) 
(define Fred (make-parent Fred&Eva 'Fred 1966 'pink)) 
(define Carl&Bettina (list Adam Dave Eva)) 
;; 老一代人:
(define Carl (make-parent Carl&Bettina 'Carl 1926 'green)) 
(define Bettina (make-parent Carl&Bettina 'Bettina 1926 'green))

;; blue-eyed-descendant? : parent -> boolean
;; does descendant have blue eyes?
(define (blue-eyed-descendant? a-parent)
  (cond
    [(symbol=? (parent-eyes a-parent) 'blue) #t]
    [else (blue-eyed-children? (parent-children a-parent))]))

;; blue-eyed-children? : list-of-children -> boolean 
;; 判断 aloc 中任何一个结构体是不是蓝眼睛的,
;; 或者有没有蓝眼睛的后代
(define (blue-eyed-children? aloc)
  (cond
    [(empty? aloc) #f]
    [else
     (cond
       [(blue-eyed-descendant? (first aloc)) #t]
       [else (blue-eyed-children? (rest aloc))])]))


;; tests
(boolean=? (blue-eyed-descendant? Eva) #t)
(boolean=? (blue-eyed-descendant? Gustav) false)
(boolean=? (blue-eyed-descendant? Bettina) true) 



