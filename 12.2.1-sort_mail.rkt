;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 12.2.1-sort_mail) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct mail (from date message))
;; mail-message 是结构体
;; (make-mail name n s) 其中name 是字符串，n是数，s也是字符串

;; insert-mail : mail, sorted-list-of-mail -> sorted-list-of-mail
;; insert mail to sorted mail list , return sorted mail list
;(define (insert-mail amail slom)
;  ...)
(define (insert-mail amail slom)
  (cond
    [(empty? slom) (cons amail empty)]
    [(cons? slom) (cond
            [(>= (mail-date amail) (mail-date (first slom))) (cons amail slom)]
            [else (cons (first slom) (insert-mail amail (rest slom)))])]))
;; tests
(insert-mail (make-mail 'alice 2020 'hiya)
             (cons (make-mail 'alice 2021 'yahaha) (cons (make-mail 'bob 2011 'bingo) empty)))



;; sort-mail : list-of-mail -> sorted-list-of-mail
;; sort mail by date
;(define (sort-mail almail)
;  ...)
;(define (sort-mail almail)
;  (cond
;    [(empty?) empty]
;    [(cons?) ... (first almail) ... (rest almail)]))
(define (sort-mail almail)
  (cond
    [(empty? almail) empty]
    [(cons? almail) (insert-mail (first almail) (rest almail))]))

;; tests
(sort-mail (cons (make-mail 'alice 2020 'yahaha) (cons (make-mail 'bob 2021 'bingo) empty)))
