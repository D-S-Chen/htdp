;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname htdp-130) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; A List-of-names is one of:
; - '()
; - (cons String List-of-names)
; Interpretation: a list of names.


(cons "Furukawa"
      (cons "Sakagami"
            (cons "Fujibayashi"
                  (cons "Ichinose"
                        (cons "Ibuki" '())))))


; (cons "1" (cons "2" '())) is an element of List-of-names.
; "1" and "2" are both Strings.
; Hence it agrees with the definition of List-of-names
; as either an empty list, or a list with a String as its first element.

; (cons 2 '()) isn't an element of List-of-names.
; The first element of the list is a Number, which is not included in the data definition.
