;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.4-area_pipe) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; area-pipe: number,number,number -> number
;; 计算管道的表面积
;; example (area-pipe
;; version 1
(define PI 3.14)
(define (area-pipe r l t)
  (+ (* l (* PI (* r 2))) (* l (* PI (* 2 (+ r t))))))

;; version 2
(define (area-help r l)
  (* l (* PI (* r 2))))

(define (area-pipe1 r l t)
  (+ (area-help r l) (area-help (+ r t) l)))

(area-pipe 1 1 1)
(area-pipe 1 1 1)
(+ (* PI 2) (* PI 4))

