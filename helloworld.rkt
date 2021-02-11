#lang racket

(require racket/gui/base)

(define (helloworld) (printf "Hello World!\n"))

; Make a frame by instantiating the frame% class
(define frame (new frame% [label "Example"]))
 
; Show the frame by calling its show method
; (send frame show #t)

(helloworld)
