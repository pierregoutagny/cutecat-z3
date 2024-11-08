(declare-datatypes ((unit 0)) (((unit))))
(declare-datatypes ((DiscountType 0)) (((mk!Property (Property!0 unit)) (mk!Services (Services!0 unit)))))
(declare-fun employee_price_in () Int)
(declare-fun customer_price_in () Int)
(declare-fun discount_type_in () DiscountType)
(assert (>= customer_price_in employee_price_in))
(assert (not (= discount_type_in (mk!Property unit))))
(assert (not (= discount_type_in (mk!Services unit))))
(assert-soft (= (mod customer_price_in 100) 0) :weight 1 :id id!3)
(assert-soft (= (mod customer_price_in 10000) 0) :weight 1 :id id!4)
(assert-soft (= (mod employee_price_in 100) 0) :weight 1 :id id!1)
(assert-soft (= (mod employee_price_in 10000) 0) :weight 1 :id id!2)
(check-sat)