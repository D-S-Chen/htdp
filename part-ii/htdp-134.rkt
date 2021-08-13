;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdp-134) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A List-of-names -- Alon -- is one of the following:
; - '()
; - (cons String Alon)
; Interpretation: a list of human names

; String Alon -> Boolean
; Determines whether String occurs on Alon
(check-expect (contains? "Ayu" '()) #false)
(check-expect (contains? "Ayu" (cons "Ayu" '())) #true)
(check-expect (contains? "Ayu" (cons "Makoto" (cons "Ayu" '()))) #true)
(check-expect (contains? "Ayu" (cons "Misuzu" (cons "Kano" (cons "Minagi" '())))) #false)

(define (contains? str alon)
  (cond
    [(empty? alon) #false]
    [(cons? alon)
        (cond
          [(string=? str (first alon)) #true]
          [else (contains? str (rest alon))])]))