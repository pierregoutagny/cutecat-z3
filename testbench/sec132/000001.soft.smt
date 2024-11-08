(declare-datatypes ((unit 0)) (((unit))))
(declare-datatypes ((DiscountType 0)) (((mk!Property (Property!0 unit)) (mk!Services (Services!0 unit)))))
(declare-fun employee_price_in () Int)
(declare-fun customer_price_in () Int)
(declare-fun discount_type_in () DiscountType)
(declare-fun aggregate_cost_in () Int)
(assert (>= customer_price_in employee_price_in))
(assert (= discount_type_in (mk!Property unit)))
(assert (>= customer_price_in aggregate_cost_in))
(assert (not (= discount_type_in (mk!Services unit))))
(assert (= discount_type_in (mk!Property unit)))
(assert (not (= customer_price_in 0)))
(assert-soft (= (mod customer_price_in 100) 0) :weight 1 :id id!3)
(assert-soft (= (mod customer_price_in 10000) 0) :weight 1 :id id!4)
(assert-soft (= (mod employee_price_in 100) 0) :weight 1 :id id!1)
(assert-soft (= (mod employee_price_in 10000) 0) :weight 1 :id id!2)
(check-sat)
