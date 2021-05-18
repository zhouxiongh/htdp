;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 14.2-binary_tree) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct node (ssn name left right))
;; definition of binary-tree
;; 1. false
;; 2. node

;; contains-bt : number -> boolean
;; does BT contains number
;; example :
;; (contains-bt 15 (make-node 15 'd false (make-node 24 'i false false)) -> #t
;; (contains-bt 15 empty) -> #f
(define (contains-bt num b-tree)
  (cond
    [(false? b-tree) b-tree]
    [else (or
            (= num (node-ssn b-tree))
            (contains-bt num (node-left b-tree))
            (contains-bt num (node-right b-tree)))]))
;; tests
(contains-bt 15 false)
(contains-bt 15 (make-node 15 'd false (make-node 24 'i false false)))
(contains-bt 15 (make-node 24 'd false (make-node 15 'i false false)))'

;; search-bt : number binary-tree -> boolean
;; 
