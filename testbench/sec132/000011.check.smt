(declare-datatypes ((unit 0)) (((unit))))
(declare-datatypes ((DiscountType 0)) (((mk!Property (Property!0 unit)) (mk!Services (Services!0 unit)))))
(declare-fun employee_price_in () Int)
(declare-fun customer_price_in () Int)
(declare-fun discount_type_in () DiscountType)
(assert (>= customer_price_in employee_price_in))
(assert (not (not (= discount_type_in (mk!Services unit)))))
(assert (not (not (= discount_type_in (mk!Property unit)))))
(check-sat)
