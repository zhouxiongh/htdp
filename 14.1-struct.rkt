;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 14.1-struct) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; struct of struct

(define-struct child (father mother name date eyes))
;; child is struct (make-child f m na da ec)
;; 1. f and m a. is child struct b. is empty;
;; 2. na and ec is symbol;
;; 3. da is number.

;; family-tree-node 
;; 1. empty;
;; 2. child;

;; the old generation
(define Carl (make-child empty empty 'Carl 1926 'green)) 
(define Bettina (make-child empty empty 'Bettina 1926 'green)) 

;; the middle generation
(define Adam (make-child Carl Bettina 'Adam 1950 'yellow)) 
(define Dave (make-child Carl Bettina 'Dave 1955 'black)) 
(define Eva (make-child Carl Bettina 'Eva 1965 'blue)) 
(define Fred (make-child empty empty 'Fred 1966 'pink))

;; the young generation
(define Gustav (make-child Fred Eva 'Gustav 1988 'brown)) 

;; fun-for-ftn : ftn -> ???
;(define (fun-for-ftn a-ftree) ...)

;; count-persons : ftn -> number
;; compute person num in family tree
;; example : (count-persons empty) -> 0
;; (count-persons Carl) -> 1
;; (count-persons Gustav) -> 5
(define (count-persons ftn)
  (cond
    [(empty? ftn) 0]
    [else (cond
       [(empty? (child-father ftn)) (+ 1 (count-persons (child-mother ftn)))]
       [(empty? (child-mother ftn)) (+ 1 (count-persons (child-father ftn)))]
       [(and (empty? (child-father ftn)) (empty? (child-mother ftn))) 1]
       [else (+ 1 (count-persons (child-father ftn)) (count-persons (child-mother ftn)))])]))

(count-persons empty)
(count-persons Carl)
(count-persons Gustav)
