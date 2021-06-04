;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 15.1.2-how_far_removed) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct parent(children name date eye)) 

;; how-far-removed : parent -> number/boolean
;; 如果存在蓝眼睛后代的话,该函数判断给定的 parent 离开蓝眼睛的后代有多远
;; 如果没有蓝眼睛后代就返回false
;; example (how-far-removed (make-parent empty 'bob 2000 blue)) -> 0
;; (how-far-removed empty) -> false
(define (how-far-removed a-parent)
  (cond
    [(empty? a-parent) #f]
    [(symbol=? 'blue (parent-eye a-parent)) 0]
    [else (how-far-removed-help (parent-children a-parent) 1)]))

;; hwo-far-removed-help : list of children -> number
(define (how-far-removed-help loc n)
  (cond
    [(empty? loc) #f]
    [else
     (cond
       [(symbol=? 'blue (parent-eye(first loc))) n]
       [else (how-far-removed-help (rest loc) (+ 1 n))])])) 

;; tests
(how-far-removed empty)
(how-far-removed (make-parent empty 'bob 2000 'blue))
(how-far-removed (make-parent (cons (make-parent empty 'bob 2000 'blue) empty) 'alice 1980 'green))
(how-far-removed (make-parent (cons (make-parent empty 'bob 2000 'green) empty) 'alice 1980 'green))