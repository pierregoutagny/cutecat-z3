(declare-datatypes ((unit 0)) (((unit))))
(declare-datatypes ((DiscountType 0)) (((mk!Property (Property!0 unit)) (mk!Services (Services!0 unit)))))
(declare-fun employee_price_in () Int)
(declare-fun customer_price_in () Int)
(declare-fun discount_type_in () DiscountType)
(declare-fun aggregate_cost_in () Int)
(define-funs-rec ( ( !round! ((x!1 Real)) Int))
                 ( (let ((a!1 (- (to_int (+ (- x!1) (/ 1.0 2.0))))))
                     (ite (>= x!1 0.0) (to_int (+ x!1 (/ 1.0 2.0))) a!1))))
(assert (>= customer_price_in employee_price_in))
(assert (= discount_type_in (mk!Property unit)))
(assert (>= customer_price_in aggregate_cost_in))
(assert (not (= discount_type_in (mk!Services unit))))
(assert (= discount_type_in (mk!Property unit)))
(assert (not (= customer_price_in 0)))
(assert (= discount_type_in (mk!Property unit)))
(assert (let ((a!1 (/ (+ (to_real customer_price_in)
                 (* (- 1.0) (to_real aggregate_cost_in)))
              (to_real customer_price_in))))
(let ((a!2 (<= (+ customer_price_in (* (- 1) employee_price_in))
               ((_ !round! 0) (* (to_real customer_price_in) a!1)))))
  (not a!2))))
(check-sat)
