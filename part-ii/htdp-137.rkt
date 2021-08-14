;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdp-137) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (contains-flatt? alon)
  (cond
    [(empty? alon) ...]
    [(cons? alon)
     (... (first alon) ...
      ... (contains-flatt? (rest alon)) ...)]))

(define (how-many alos)
  (cond
    [(empty? alos) ...]
    [else
     (... (first alos) ...
      ... (how-many (rest alos)) ...)]))

; "Compare the template for contains-flatt with the one for how-many."
; "Ignoring the function name, they are the same. Explain the similarity."

; The function template is designed based on the data definition.
; The data definition for both alon and alos is essentially the same:
; - '()
; - (cons String alon/alos)
; It follows that the composition of the template for both functions will be the same.
; First, testing the base case with empty?.
; Second, testing the self-referential case. Deployment of selector expressions first and rest.
; Third, application of the recursive function call on the rest.
; Both functions have essentially the same template.