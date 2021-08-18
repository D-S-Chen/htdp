;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdp-138) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A List-of-amounts -- Aloa -- is one of:
; - '()
; - (cons PositiveNumber Aloa)

;'()
;(cons 5 '())
;(cons 7 (cons 5 '()))
;(cons 2 (cons 7 (cons 5 '())))

; Aloa -> PositiveNumber
; Computes the sum of a list of amounts
(check-expect (sum '()) 0)
(check-expect (sum (cons 5 '())) 5)
(check-expect (sum (cons 7 (cons 5 '()))) 12)
(check-expect (sum (cons 2 (cons 7 (cons 5 '())))) 14)

(define (sum l)
  (cond
    [(empty? l) 0]
    [(cons? l)
       (+ (first l) (sum (rest l)))]))