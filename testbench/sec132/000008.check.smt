(declare-fun employee_price_in () Int)
(declare-fun customer_price_in () Int)
(assert (>= customer_price_in employee_price_in))
(check-sat)
