(declare-fun loyer_principal_in () Int)
(declare-fun |ressources_ménage_arrondies_in| () Int)
(declare-fun date_courante_in () Int)
(declare-fun |nombre_personnes_à_charge_in| () Int)
(declare-fun |réduction_loyer_solidarité_in| () Int)
(declare-fun colocation_in () Bool)
(declare-fun logement_est_chambre_in () Bool)
(declare-fun |logement_meublé_d842_2_in| () Bool)
(assert (>= loyer_principal_in 0))
(assert (>= |ressources_ménage_arrondies_in| 0))
(assert (>= date_courante_in 0))
(assert (<= |nombre_personnes_à_charge_in| 10))
(assert (>= |réduction_loyer_solidarité_in| 0))
(assert (not (not (>= date_courante_in 3926))))
(assert (>= date_courante_in 3560))
(assert (>= |nombre_personnes_à_charge_in| 0))
(assert (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926)))
(assert (>= date_courante_in 3560))
(assert (not (not (not (and logement_est_chambre_in colocation_in)))))
(assert |logement_meublé_d842_2_in|)
(assert (not (= 3.0 (to_real 0))))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
(assert (not (= |nombre_personnes_à_charge_in| 1)))
(assert (= |nombre_personnes_à_charge_in| 2))
(assert (and (not (<= 4383 date_courante_in)) (>= date_courante_in 3652)))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926) colocation_in))
(assert (not (and (>= date_courante_in 5021) colocation_in)))
(assert (let ((a!1 (not (and (>= date_courante_in 4564)
                     (not (<= 5021 date_courante_in))
                     colocation_in))))
  (not a!1)))
(assert-soft (= (mod |réduction_loyer_solidarité_in| 100) 0) :weight 1 :id id!5)
(assert-soft (= (mod |réduction_loyer_solidarité_in| 10000) 0) :weight 1 :id id!6)
(assert-soft (= (mod |ressources_ménage_arrondies_in| 100) 0) :weight 1 :id id!3)
(assert-soft (= (mod |ressources_ménage_arrondies_in| 10000) 0) :weight 1 :id id!4)
(assert-soft (= (mod loyer_principal_in 100) 0) :weight 1 :id id!1)
(assert-soft (= (mod loyer_principal_in 10000) 0) :weight 1 :id id!2)
(check-sat)