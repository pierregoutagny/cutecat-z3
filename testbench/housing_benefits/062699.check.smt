(declare-fun loyer_principal_in () Int)
(declare-fun |ressources_ménage_arrondies_in| () Int)
(assert (>= loyer_principal_in 0))
(assert (not (>= |ressources_ménage_arrondies_in| 0)))
(check-sat)
