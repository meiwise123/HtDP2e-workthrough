;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex28) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define base-attendees 120)
(define base-price 5.0)
(define base-attendance-change 15)
(define base-ten-cent-change 0.1)
(define fixed-cost 180)
(define variable-cost 0.04)

(define (attendees ticket-price)
  (- base-attendees (* (- ticket-price base-price)
                       (/ base-attendance-change
                          base-ten-cent-change))))
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))
(define (cost ticket-price)
  (+ fixed-cost (* variable-cost (attendees ticket-price))))
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)

; Ans -> $3 is best price

(define (profit-2 price)
  (- (* (+ 120
           (* (/ 15 0.1)
              (- 5.0 price)))
        price)
     (+ 180
        (* 0.04
           (+ 120
              (* (/ 15 0.1)
                 (- 5.0 price)))))))

(profit-2 1)
(profit-2 2)
(profit-2 3)
(profit-2 4)
(profit-2 5)