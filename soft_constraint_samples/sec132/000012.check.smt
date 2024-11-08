(declare-fun employee_price_in () Int)
(declare-fun customer_price_in () Int)
(assert (not (>= customer_price_in employee_price_in)))
(check-sat)
