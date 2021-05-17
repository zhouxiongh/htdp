;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.2-volume_cylinder) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; volume-cylinder: number,number -> number
;; 给定圆柱体半径和高度，计算圆柱体的体积
;; example (volume-cylinder 1 1) the result is 3.14

(define PI 3.14)

(define (volume-cylinder r h)
  (* (* PI (* r r)) h))

(volume-cylinder 1 1)
3.14
(volume-cylinder 1 2)
6.28
(volume-cylinder 2 1)
(* 3.14  4)