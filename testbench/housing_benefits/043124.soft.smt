(declare-datatypes ((unit 0)) (((unit))))
(declare-datatypes ((SituationFamilialeCalculAPL 0)) (((mk!PersonneSeule (PersonneSeule!0 unit)) (mk!Couple (Couple!0 unit)))))
(declare-datatypes ((ZoneDHabitation 0)) (((mk!Zone1 (Zone1!0 unit)) (mk!Zone2 (Zone2!0 unit)) (mk!Zone3 (Zone3!0 unit)))))
(declare-fun loyer_principal_in () Int)
(declare-fun |ressources_ménage_arrondies_in| () Int)
(declare-fun date_courante_in () Int)
(declare-fun |nombre_personnes_à_charge_in| () Int)
(declare-fun |réduction_loyer_solidarité_in| () Int)
(declare-fun colocation_in () Bool)
(declare-fun logement_est_chambre_in () Bool)
(declare-fun |logement_meublé_d842_2_in| () Bool)
(declare-fun situation_familiale_calcul_apl_in () SituationFamilialeCalculAPL)
(declare-fun zone_in () ZoneDHabitation)
(declare-fun |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|
             ()
             Bool)
(define-funs-rec ( ( !round! ((x!1 Real)) Int))
                 ( (let ((a!1 (- (to_int (+ (- x!1) (/ 1.0 2.0))))))
                     (ite (>= x!1 0.0) (to_int (+ x!1 (/ 1.0 2.0))) a!1))))
(assert (>= loyer_principal_in 0))
(assert (>= |ressources_ménage_arrondies_in| 0))
(assert (>= date_courante_in 0))
(assert (<= |nombre_personnes_à_charge_in| 10))
(assert (>= |réduction_loyer_solidarité_in| 0))
(assert (not (not (>= date_courante_in 3926))))
(assert (>= date_courante_in 3560))
(assert (>= |nombre_personnes_à_charge_in| 0))
(assert (not (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (>= date_courante_in 3560))
(assert (not (not (not (and logement_est_chambre_in colocation_in)))))
(assert (not |logement_meublé_d842_2_in|))
(assert (not (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
(assert (not (= |nombre_personnes_à_charge_in| 1)))
(assert (not (= |nombre_personnes_à_charge_in| 2)))
(assert (= |nombre_personnes_à_charge_in| 3))
(assert (not (and (not (<= 4383 date_courante_in)) (>= date_courante_in 3652))))
(assert (not (and (>= date_courante_in 4383) (not (<= 4564 date_courante_in)))))
(assert (not (and (>= date_courante_in 4564) (<= date_courante_in 4747))))
(assert (>= date_courante_in 4748))
(assert (not (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          colocation_in)))
(assert (not (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926))))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          colocation_in)))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (not (and (>= date_courante_in 5021) colocation_in)))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in)) colocation_in))
(assert (not ((_ is mk!Couple) situation_familiale_calcul_apl_in)))
(assert ((_ is mk!PersonneSeule) situation_familiale_calcul_apl_in))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          colocation_in)))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          colocation_in)))
(assert (>= date_courante_in 4748))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
(assert (not (= |nombre_personnes_à_charge_in| 1)))
(assert (not (= |nombre_personnes_à_charge_in| 2)))
(assert (= |nombre_personnes_à_charge_in| 3))
(assert (not (and (>= date_courante_in 4564) (<= date_courante_in 4747))))
(assert (not (and (>= date_courante_in 4383) (not (<= 4564 date_courante_in)))))
(assert (not (and (not (<= 4383 date_courante_in)) (>= date_courante_in 3652))))
(assert (not (>= date_courante_in 5021)))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (not (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in)))))
(assert (not (and (>= date_courante_in 5021)
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 5021)
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 5021)
          colocation_in
          (>= |nombre_personnes_à_charge_in| 1))))
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (and (>= date_courante_in 4564)
     (not (<= 5021 date_courante_in))
     colocation_in
     (>= |nombre_personnes_à_charge_in| 1)))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not (not ((_ is mk!Zone2) zone_in))))
(assert (not ((_ is mk!Zone1) zone_in)))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          colocation_in
          (>= |nombre_personnes_à_charge_in| 1))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          colocation_in
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          colocation_in
          (>= |nombre_personnes_à_charge_in| 1))))
(assert (not (and (>= date_courante_in 5021)
          logement_est_chambre_in
          |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|)))
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          logement_est_chambre_in
          |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|)))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          logement_est_chambre_in
          |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|)))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          logement_est_chambre_in
          |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|)))
(assert (not (and (>= date_courante_in 5021) logement_est_chambre_in)))
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          logement_est_chambre_in)))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          logement_est_chambre_in)))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          logement_est_chambre_in)))
(assert (>= date_courante_in 3560))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert ((_ is mk!Zone2) zone_in))
(assert (not ((_ is mk!Zone1) zone_in)))
(assert (>= date_courante_in 3560))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert ((_ is mk!Zone2) zone_in))
(assert (not ((_ is mk!Zone1) zone_in)))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 4043.0) (* 4043.0 (to_real |nombre_personnes_à_charge_in|))))))
  (not (not (<= loyer_principal_in (+ 27774 a!1))))))
(assert (not (>= date_courante_in 5021)))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (let ((a!1 (to_real ((_ !round! 0)
                      (* 1272.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 ((_ !round! 0)
             (+ (/ 9537.0 40.0)
                (* (/ 17.0 200.0) (to_real loyer_principal_in))
                (* (/ 17.0 200.0) a!1)))))
  (not (>= a!2 3663)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (not (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926))))
(assert (not (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
  (not (= (+ 37032 a!1) 0))))
(assert (not (= 100.0 (to_real 0))))
(assert (not (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (* 100.0 (/ (to_real loyer_principal_in) (+ 37032.0 (to_real a!1))))))
  (>= (to_real ((_ !round! 0) a!2)) 45.0))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (* 100.0 (/ (to_real loyer_principal_in) (+ 37032.0 (to_real a!1))))))
(let ((a!3 (not (>= (to_real ((_ !round! 0) a!2)) 75.0))))
(let ((a!4 (and (>= (to_real ((_ !round! 0) a!2)) 45.0) a!3)))
  (not a!4))))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (* 100.0 (/ (to_real loyer_principal_in) (+ 37032.0 (to_real a!1))))))
  (>= (to_real ((_ !round! 0) a!2)) 75.0))))
(assert (not (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (not (= 100000.0 (to_real 0))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (* 100.0 (/ (to_real loyer_principal_in) (+ 37032.0 (to_real a!1))))))
(let ((a!3 (+ (- 375.0) (* (/ 34.0 5.0) (to_real ((_ !round! 0) a!2))))))
(let ((a!4 (+ (/ 201.0 10000.0)
              (* (/ 1.0 100000.0) (to_real ((_ !round! 0) a!3))))))
(let ((a!5 ((_ !round! 0)
             (* (+ (- 897700.0) (to_real |ressources_ménage_arrondies_in|))
                a!4))))
  (not (<= 0 a!5))))))))
(assert (let ((a!1 (+ loyer_principal_in
              ((_ !round! 0)
                (* 1272.0 (to_real |nombre_personnes_à_charge_in|))))))
  (not (<= 858 a!1))))
(assert-soft (= (mod |réduction_loyer_solidarité_in| 100) 0) :weight 1 :id id!5)
(assert-soft (= (mod |réduction_loyer_solidarité_in| 10000) 0) :weight 1 :id id!6)
(assert-soft (= (mod |ressources_ménage_arrondies_in| 100) 0) :weight 1 :id id!3)
(assert-soft (= (mod |ressources_ménage_arrondies_in| 10000) 0) :weight 1 :id id!4)
(assert-soft (= (mod loyer_principal_in 100) 0) :weight 1 :id id!1)
(assert-soft (= (mod loyer_principal_in 10000) 0) :weight 1 :id id!2)
(check-sat)
