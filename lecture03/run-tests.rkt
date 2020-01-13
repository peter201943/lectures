#lang racket
(require rackunit)
(require rackunit/text-ui)
(require rackunit/gui)
(require "examples.rkt")

(define lecture3-tests
  (test-suite
   "Lecture 3 Tests"
   (test-case
    "inc-all"
    (check-equal? (inc-all '(1 2 3 4 5))
                  '(2 3 4 5 6)))
   
   (test-case
    "add-n-all"
    (check-equal? (add-n-all 1 '(1 2 3 4 5))
                  '(2 3 4 5 6))
    (check-equal? (add-n-all 5 '(1 2 3 4 5))
                  '(6 7 8 9 10)))
   
   (test-case
    "apply-all"
    (check-equal? (apply-all (lambda (x) (+ 1 x)) '(1 2 3 4 5))
                  '(2 3 4 5 6))
    (check-equal? (apply-all (lambda (x) (+ 5 x)) '(1 2 3 4 5))
                  '(6 7 8 9 10)))
   
   (test-case
    "filter"
    (check-equal? (filter (lambda (x) (> x 0)) '(-1 -4 5 6 0))
                  '(5 6)))
   
   (test-case
    "squares"
    (check-equal? (squares '(1 2 3 4 5))
                  '(1 4 9 16 25)))
   
   (test-case
    "only-even"
    (check-equal? (only-even '(1 2 3 4 5))
                  '(2 4)))))

(test/gui lecture3-tests)
