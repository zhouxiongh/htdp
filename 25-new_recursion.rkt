;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 25-new_recursion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/draw)
;; new recursion

;; move-until-out : a-ball -> true
;; 对小球的移动建模,直到它出界为止
(define (move-until-out a-ball)
  (cond
    [(out-of-bounds? a-ball) true]
    [else (and (draw-and-clear a-ball)
               (move-until-out (move-ball a-ball)))]))

;; out-of-bounds? : a-ball -> boolean
;; 测定 a-ball 是否离开的区域
(define (out-of-bounds? a-ball)
  (not
   (and
    (<= 0 (ball-x a-ball) WIDTH)
    (<= 0 (ball-y a-ball) HEIGHT))))

;; draw-and-clear : a-ball -> true
;;  (在画布上)绘制、休眠、清除一个圆盘
(define (draw-and-clear a-ball)
  (and
   (draw-solid-disk (make-posn (ball-x a-ball) (ball-y a-ball)) 5 'red)
   (sleep-for-a-while DELAY)
   (clear-solid-disk (make-posn (ball-x a-ball) (ball-y a-ball)) 5 'red)))


;; move-ball : ball -> ball
;; 建立一个新的小球,对 a-ball 的一步移动建模
(define (move-ball a-ball)
  (make-ball (+ (ball-x a-ball) (ball-delta-x a-ball))
             (+ (ball-y a-ball) (ball-delta-y a-ball))
             (ball-delta-x a-ball)
             (ball-delta-y a-ball)))

(define-struct ball (x y delta-x delta-y))
(define WIDTH 100)
(define HEIGHT 100)
(define DELAY 0.5)

;; test
;(start WIDTH HEIGHT)
;(move-until-out (make-ball 10 20 -5 +17))
;(stop)

;; move-balls : list-of-ball -> true
;; 读入一个小球的表,移动每一个球,直到它们全部出界为止
(define (move-balls lob)
  (cond
    [(empty? lob) #t]
    [else (and (move-until-out (first lob)) (move-balls (rest lob)))]))

(start WIDTH HEIGHT)
(move-balls (list (make-ball 10 20 -5 +17) (make-ball 10 30 -5 +17) (make-ball 10 40 -5 +17)))
(stop)
