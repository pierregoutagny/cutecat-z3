(declare-datatypes ((unit 0)) (((unit))))
(declare-datatypes ((EnumA 0)) (((|EnumA1| (|EnumA1!0| unit)) (EnumA2 (EnumA2!0 unit)) (EnumA3(EnumA3!0 unit)))))
(declare-datatypes ((EnumB 0)) (((EnumB1 (EnumB1!0 unit)) (EnumB2 (EnumB2!0 unit)))))
(declare-datatypes ((EnumC 0)) (((EnumC1 (EnumC1!0 unit)) (EnumC2 (EnumC2!0 unit)) (EnumC3 (EnumC3!0 unit)))))
(declare-fun a () Int)
(declare-fun b () Int)
(declare-fun c () Int)
(declare-fun d () Int)
(define-funs-rec ( ( !round! ((x!1 Real)) Int))
                 ( (let ((a!1 (- (to_int (+ (- x!1) (/ 1.0 2.0))))))
                     (ite (>= x!1 0.0) (to_int (+ x!1 (/ 1.0 2.0))) a!1))))
(assert (>= a 0))
(assert (not (not (= b 0))))
(assert (>= c 0))
(assert (>= d 0))
(assert (>= b 0))
(assert (not ((_ is EnumA3) (|EnumA1| unit))))
(assert (not ((_ is EnumA2) (|EnumA1| unit))))
(assert ((_ is |EnumA1|) (|EnumA1| unit)))
(assert (= b 0))
(assert (not ((_ is EnumB2) (EnumB1 unit))))
(assert ((_ is EnumB1) (EnumB1 unit)))
(assert (= b 0))
(assert (not ((_ is EnumB2) (EnumB1 unit))))
(assert ((_ is EnumB1) (EnumB1 unit)))
(assert (= b 0))
(assert (not ((_ is EnumB2) (EnumB1 unit))))
(assert ((_ is EnumB1) (EnumB1 unit)))
(assert (= b 0))
(assert (not ((_ is EnumC3) (EnumC1 unit))))
(assert (not ((_ is EnumC2) (EnumC1 unit))))
(assert ((_ is EnumC1) (EnumC1 unit)))
(assert (not (>= b 1)))
(assert (not ((_ is EnumC3) (EnumC1 unit))))
(assert (not ((_ is EnumC2) (EnumC1 unit))))
(assert ((_ is EnumC1) (EnumC1 unit)))
(assert (not ((_ is EnumC3) (EnumC1 unit))))
(assert (not ((_ is EnumC2) (EnumC1 unit))))
(assert ((_ is EnumC1) (EnumC1 unit)))
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
(assert-soft (= (mod d 100) 0) :weight 1 :id id!5)
    ;(assert (= (mod d 100) 0))
(assert-soft (= (mod d 10000) 0) :weight 1 :id id!6)
    ;(assert (= (mod d 10000) 0))
(assert-soft (= (mod c 100) 0) :weight 1 :id id!3)
    ;(assert (= (mod c 100) 0))
(assert-soft (= (mod c 10000) 0) :weight 1 :id id!4)
    ;(assert (= (mod c 10000) 0))
(assert-soft (= (mod a 100) 0) :weight 1 :id id!1)
    ;(assert (= (mod a 100) 0))
(assert-soft (= (mod a 10000) 0) :weight 1 :id id!2)
    ;(assert (= (mod a 10000) 0))
(check-sat)
(get-objectives)
(get-model)
(get-info :all-statistics)