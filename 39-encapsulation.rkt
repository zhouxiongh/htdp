;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 39-encapsulation) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/draw)
;; 封装

;; 视图：
;; draw-light : Tl-color number -> true
;; 在画布上（重新）绘制交通信号灯
(define (draw-light current-color x-posn) ...)

;; 模型：
;; make-traffic-light : symbol number -> true
;; 以(make-posn x-posn 0)为左上角,建立一个红色的信号灯
;; 以(make-posn x-posn 0)为左上角,建立一个红色的信号灯
(define (make-traffic-light street x-posn)
  (local (
          (define current-color 'red)
          (define (init-traffic-light)
            (begin
              (set! current-color 'red)
              (draw-light current-color x-posn)))
          (define (next)
            (begin
              (set! current-color (next-color current-color))
              (draw-light current-color x-posn)))

          (define (next-color current-color)
            (cond
              [(symbol=? 'green current-color) 'yellow]
              [(symbol=? 'yellow current-color) 'red]
              [(symbol=? 'red current-color) 'green])))
    (begin
      (init-traffic-light)
      next)))

;; 建立画布
(start 300 160)

;; lights : (listof traffic-light)
;; 管理 Sunrise 沿线的信号灯
(define lights
  (list (make-traffic-light 'sunrise@rice 50)
        (make-traffic-light 'sunrise@cmu 150)))
