;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 6.3.3-jet) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; jet
;; name, acceler, max-speed, voyage

(define-struct jet (name acceler max-speed voyage))

;; within-range: jet, num -> bool
;; 给定飞机记录和目标离开基地的距离，确定是否可以到达指定目标
;; example (within-range (make-jet 'f22 10 100 1000) 2000) the result is #false
(define (with-range jet distance)
  (cond
    [(> (jet-voyage jet) distance) #t]
    [else #f]))

;; test
(with-range (make-jet 'f22 10 100 1000) 2000)
(with-range (make-jet 'f22 10 100 1000) 500)
  