#lang racket
(require "tree.rkt")
(provide (all-defined-out))

; Return a list containing all the elements of xs incremented by 1
;
; Examples:
;  (inc-all '(1 2 3 4 5)) => '(2 3 4 5 6)

(define (inc-all xs)
  'not-implemented)
  
; Return a list containing all the elements of xs incremented by n
;
; That is, abstract over the value 1
;
; Examples:
;   (add-n-all 1 '(1 2 3 4 5)) => '(2 3 4 5 6)

(define (add-n-all n xs)
  'not-implemented)

; Return a list containing all the elements of xs when passed as arguments to a
; function.
;
; That is, abstract over the operation + n
;
; Examples:
;   (apply-all (lambda (x) (+ 1 x)) '(1 2 3 4 5)) => '(2 3 4 5 6))
;

(define (apply-all f xs)
  'not-implemented)

;
; Calculate the squares of a list of integers. Make the function non-recursive.
;
; Example:
;   (squares '(1 2 3 4 5)) => '(1 4 9 16 25)
;

(define (squares xs)
  'not-implemented)

;
; Return a list containing only the elements of xs for which the predicate f
; returns true.
;
; Examples:
;   (filter (lambda (x) (> x 0)) '(-1 -4 5 6 0)) => '(5 6)
;

(define (filter f xs)
  'not-implemented)

;
; Write a non-recursive function that takes a list and returns all the even
; integers in the list
;
; Examples:
;   (only-even '(1 2 3 4 5)) => '(2 4)

(define (only-even xs)
  'not-implemented)

; Write a function that composes two functions.
; That is, ((compose f g) x) should be the same as (f (g x))

(define (compose f g)
  'not-implemented)

; Write a function that partially applies a function to a single argument.
; That is, ((papply f x) y) should be the same as (f x y)

(define (papply f x)
  'not-implemented)

; Add one to a number
; Define using papply

(define inc
  'not-implemented)

;;
;; Folds
;;

; Right fold

(define (foldr f z xs)
  'not-implemented)

;; (show-tree (foldr (show-function 'cons) 'null '(1 2 3 4)))


; Left fold

(define (foldl f z xs)
  'not-implemented)


;; (show-tree (foldl (show-function 'cons) 'null '(1 2 3 4)))