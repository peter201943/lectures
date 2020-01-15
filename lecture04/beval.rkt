#lang racket

(define (beval e)
  (cond ((true? e)  #t)
        ((false? e) #f)
        ((not? e)   (beval-not e))
        ((and? e)   (beval-and e))
        ((or? e)    (beval-or  e))
        (else       (error "Invalid Boolean expression"))))

(define (tagged-list? exp tag)
  (if (pair? exp)
      (eq? (first exp) tag)
      false))

(define (true? e)
  (eq? #t e))

(define (false? e)
  (eq? #f e))

(define (not? e)
  (tagged-list? e 'not))

(define (and? e)
  (tagged-list? e 'and))

(define (or? e)
  (tagged-list? e 'or))

(define (first-subexp e)
  (first (rest e)))

(define (second-subexp e)
  (first (rest (rest e))))

(define (beval-not e)
  (not (beval (first-subexp e))))

(define (beval-and e)
  (if (beval (first-subexp e))
      (beval (second-subexp e))
      #f))

(define (beval-or e)
  (if (beval (first-subexp e))
      #t
      (beval (second-subexp e))))
