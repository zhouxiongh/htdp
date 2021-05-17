;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.2.1-contains_doll) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; contains-doll? : inventory -> boolean
;; 测定 an-inv 是否包含一条'doll 记录
(define-struct ir (name price))
(define (contains-doll? an-inv) 
	(cond 
		[(empty? an-inv) #f]
		[else (cond 
			[ (symbol=? (ir-name (first an-inv)) 'doll) #t ]
			[else (contains-doll? (rest an-inv))])]))

(contains-doll? (cons (make-ir 'doll 10) empty))
(contains-doll? (cons (make-ir 'coke 3) empty))

;; contains? : symbol inventory -> boolean
;; 测定库存清单中是否包含一条 symbol 记录
; (define (contains? asymbol an-inv) 
	; (cond 
		; [(empty? an-inv) #f]
		; [else ...]))
(define (contains? asymbol an-inv) 
	(cond 
		[(empty? an-inv) #f]
		[else (cond 
			[ (symbol=? (ir-name (first an-inv)) asymbol) #t ]
			[else (contains? asymbol (rest an-inv))])]))

(contains? 'doll (cons (make-ir 'doll 10) empty))
(contains? 'coke (cons (make-ir 'coke 3) empty))

