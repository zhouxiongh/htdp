;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.1.1-attendees) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))


;; attendees : number -> number
;; 给定票价 计算观众数
;; 例子 (attendees 5) 的结果为120
(define (attendees ticket-price)
  (+ 120 (* (- 5 ticket-price) 150)))

;; cost : number -> number
;; 给定票价 计算支出
;; 例子 (cost 5) 的结果为180+0.4*120=228
(define (cost ticket-price)
  (+ 180 (* 0.4 (attendees ticket-price))))

(cost 5)

;; revenue : number -> number
;; 给定票价 计算收入
;; 例子 (revenue 5) 的结果为5 * 120 = 600
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(revenue 5)

;; profit : number -> number
;; 给定票价 计算利润
;; 例子 (profit 5) 的结果为600 - 228 = 372
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

;; new-cost : number -> number
;; 给定票价 计算开销但是取消固定开销 每个观众支付1.5
;; 例子 (new-cost 5) 1.5 * 120 = 180
(define (new-cost ticket-price)
  (* 1.5 (attendees ticket-price)))

(new-cost 5)

;; new-profit : number -> number
;; 计算取消固定开销的利润
;; 例子 (new-profix 5) 600 - 180 = 420
(define (new-profit ticket-price)
  (- (revenue ticket-price) (new-cost ticket-price)))

(new-profit 3)
(new-profit 4)
(new-profit 5)
