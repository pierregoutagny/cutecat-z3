(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun d () Int)

(define-funs-rec ( ( !round! ((x!1 Real)) Int))
                 ( (let ((a!1 (- (to_int (+ (- x!1) (/ 1.0 2.0))))))
                     (ite (>= x!1 0.0) (to_int (+ x!1 (/ 1.0 2.0))) a!1))))

; comment other defs and uncomment this one to try "smarter" rounding
;(define-funs-rec ( ( !round! ((x!1 Real)) Int))
;                 ( ( ite (is_int x!1)
;                        (to_int x!1)
;                        ( let ((a!1 (- (to_int (+ (- x!1) (/ 1.0 2.0))))))
;                                (ite (>= x!1 0.0) (to_int (+ x!1 (/ 1.0 2.0))) a!1)
;                        )
;                     )
;                 )
;)

; comment other defs and uncomment this one to try with round = to_int
;(define-funs-rec ( ( !round! ((x!1 Real)) Int)) ((to_int x!1)))

(assert (>= a 0))
(assert (>= c 0))
(assert (>= d 0))
(assert (>= b 0))
(assert (= b 0))
(assert (not (>= b 1)))
(assert (not (<= a 31930)))
(assert (let ((a!1 (to_real ((_ !round! 0)
                      (* 1317.0 (to_real b))))))
(let ((a!2 (>= ((_ !round! 0) (+ (/ 320773.0 100.0) (* (/ 17.0 200.0) a!1)))
               3791)))
  (not a!2))))
(assert (not (= 27828 0)))
(assert (not (= 100.0 (to_real 0))))
(assert (not (= 100000.0 (to_real 0))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- (/ 16019913.0 1000.0))
                (* (/ 3237.0 100000.0)
                   (to_real c))))))
  (not (not (<= 0 a!1)))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- (/ 16019913.0 1000.0))
                (* (/ 3237.0 100000.0)
                   (to_real c))))))
(let ((a!2 (+ ((_ !round! 0)
                (* 1317.0 (to_real b)))
              (* (- 1) a!1))))
  (not (<= (- 33947) a!2)))))

; SETS OF CONSTRAINTS TO TRY

; 1. terminates in 15 s
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
; RESULT:
;(
;  (define-fun a () Int
;    40000)
;  (define-fun d () Int
;    0)
;  (define-fun c () Int
;    11540000)
;  (define-fun b () Int
;    0)
;)


; 2. hangs
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)

; 3. hangs
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)

; 4. hangs
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)

; 5. hangs
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)

; 6. stopped after 1h
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)

; 7. hangs
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)

; 8. terminates in 3 s
;(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
;(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
;(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
;(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)
;(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)
;(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
; RESULT:
;(
;  (define-fun a () Int
;    40000)
;  (define-fun c () Int
;    6300000)
;  (define-fun d () Int
;    0)
;  (define-fun b () Int
;    0)
;)

; 9. terminates in 0.01 s
;(assert (= (mod d 100) 0))
;(assert (= (mod d 10000) 0))
;(assert (= (mod c 100) 0))
;(assert (= (mod c 10000) 0))
;(assert (= (mod a 100) 0))
;(assert (= (mod a 10000) 0))
; RESULT:
;(
;  (define-fun a () Int
;    40000)
;  (define-fun d () Int
;    0)
;  (define-fun b () Int
;    0)
;  (define-fun c () Int
;    1550000)
;)

(check-sat)
(get-objectives)
(get-model)
(get-info :all-statistics)

