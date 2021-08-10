;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdp-133) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A List-of-names is one of:
; - '()
; - (cons String List-of-names)
; Interpretation: a list of individual names

; List-of-names -> Boolean
; determines whether "Flatt" occurs on alon

(check-expect (contains-flatt? '()) #false)
(check-expect (contains-flatt? (cons "Flatt" '())) #true)
(check-expect (contains-flatt? (cons "A" (cons "Flatt" '()))) #true)
(check-expect (contains-flatt? (cons "X" (cons "Y" (cons "Z" '())))) #false)

(define (contains-flatt? alon)
  (cond
    [(empty? alon) #false]
    [(cons? alon)
        (cond
          [(string=? (first alon) "Flatt") #true]
          [else (contains-flatt? (rest alon))])]))

; The or expression is essentialy an abbreviated version of a cond expression
; in situations where only two alternative outcomes are expected.
; Hence replacing or with cond as in this case is perfectly okay.
; Cond is simply more versatile and verbose.

; Personally I find this version with cond to be clearer.
; That comes probably with the expanded, more explicit expression of the cond clause.
; The or expression is more concise with the first condition (string=? (first alon) "Flatt").
; This expression automatically evaluates to either #true or #false.
; Meanwhile, with the cond expression, the evaluation of (string=? (first alon) "Flatt")
; results in either #true, which produces again the Boolean #true as a result, or
; it leads to the else clause with the recursive function call.
; That is to say, the extra code is probably redundant, but easier to read in my opinion.