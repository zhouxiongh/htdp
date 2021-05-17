;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.3-area_cylinder) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; area-cylinder : number,number -> number
;; 给定圆柱体半径和高度 计算表面积
;; example (area-cylinder 1 2) 4 * PI

(define PI 3.14)

(define (area-cylinder r h)
  (* h (* PI (* r 2))))

(area-cylinder 1 2)
(* 4 PI)