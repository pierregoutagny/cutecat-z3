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
(declare-fun |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|
             ()
             Bool)
(declare-fun zone_in () ZoneDHabitation)
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
(assert (not (not (= |nombre_personnes_à_charge_in| 1))))
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
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          colocation_in)))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          colocation_in)))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          colocation_in)))
(assert (not (>= date_courante_in 5021)))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (not (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926))))
(assert (>= date_courante_in 4748))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
(assert (= |nombre_personnes_à_charge_in| 1))
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
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          colocation_in
          (>= |nombre_personnes_à_charge_in| 1))))
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
(assert (not (and (>= date_courante_in 5021)
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 5021)
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 5021) (>= |nombre_personnes_à_charge_in| 1))))
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 4564)
          (not (<= 5021 date_courante_in))
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (and (>= date_courante_in 4564)
     (not (<= 5021 date_courante_in))
     (>= |nombre_personnes_à_charge_in| 1)))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not ((_ is mk!Zone2) zone_in)))
(assert ((_ is mk!Zone1) zone_in))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (>= date_courante_in 4291)
          (not (<= 4564 date_courante_in))
          (>= |nombre_personnes_à_charge_in| 1))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          (= situation_familiale_calcul_apl_in (mk!PersonneSeule unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          (= situation_familiale_calcul_apl_in (mk!Couple unit))
          (= |nombre_personnes_à_charge_in| 0))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          (>= |nombre_personnes_à_charge_in| 1))))
(assert (>= date_courante_in 3560))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not ((_ is mk!Zone2) zone_in)))
(assert ((_ is mk!Zone1) zone_in))
(assert (>= date_courante_in 3560))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not ((_ is mk!Zone2) zone_in)))
(assert ((_ is mk!Zone1) zone_in))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|))))))
  (not (<= loyer_principal_in (+ 42052 a!1)))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 ((_ !round! 0) (+ (/ 714884.0 5.0) (* (/ 17.0 5.0) (to_real a!1)))))
      (a!3 ((_ !round! 0) (+ 105130.0 (* (/ 5.0 2.0) (to_real a!1))))))
  (>= a!2 a!3))))
(assert (not (>= date_courante_in 5021)))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|)))))
      (a!2 (to_real ((_ !round! 0)
                      (* 1272.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!3 ((_ !round! 0)
             (+ (/ 101286.0 25.0)
                (* (/ 17.0 200.0) (to_real a!1))
                (* (/ 17.0 200.0) a!2)))))
  (>= a!3 3663))))
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
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|)))))
      (a!2 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!3 (* 100.0 (/ (+ 42052.0 (to_real a!1)) (+ 37032.0 (to_real a!2))))))
  (>= (to_real ((_ !round! 0) a!3)) 45.0))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|)))))
      (a!2 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!3 (* 100.0 (/ (+ 42052.0 (to_real a!1)) (+ 37032.0 (to_real a!2))))))
(let ((a!4 (not (>= (to_real ((_ !round! 0) a!3)) 75.0))))
(let ((a!5 (and (>= (to_real ((_ !round! 0) a!3)) 45.0) a!4)))
  (not a!5))))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|)))))
      (a!2 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!3 (* 100.0 (/ (+ 42052.0 (to_real a!1)) (+ 37032.0 (to_real a!2))))))
  (>= (to_real ((_ !round! 0) a!3)) 75.0))))
(assert (not (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in))))
(assert (not (= 100000.0 (to_real 0))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|)))))
      (a!2 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!3 (* 100.0 (/ (+ 42052.0 (to_real a!1)) (+ 37032.0 (to_real a!2))))))
(let ((a!4 (+ (- 375.0) (* (/ 34.0 5.0) (to_real ((_ !round! 0) a!3))))))
(let ((a!5 (+ (/ 27.0 1000.0)
              (* (/ 1.0 100000.0) (to_real ((_ !round! 0) a!4))))))
(let ((a!6 ((_ !round! 0)
             (* (+ (- 845600.0) (to_real |ressources_ménage_arrondies_in|))
                a!5))))
  (not (not (<= 0 a!6)))))))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 6101.0) (* 6101.0 (to_real |nombre_personnes_à_charge_in|)))))
      (a!2 (to_real ((_ !round! 0)
                      (* 1272.0 (to_real |nombre_personnes_à_charge_in|)))))
      (a!4 ((_ !round! 0)
             (+ (- 5390.0) (* 5390.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!3 ((_ !round! 0)
             (+ (/ 101286.0 25.0)
                (* (/ 17.0 200.0) (to_real a!1))
                (* (/ 17.0 200.0) a!2))))
      (a!5 (* 100.0 (/ (+ 42052.0 (to_real a!1)) (+ 37032.0 (to_real a!4))))))
(let ((a!6 (+ (- 375.0) (* (/ 34.0 5.0) (to_real ((_ !round! 0) a!5))))))
(let ((a!7 (+ (/ 27.0 1000.0)
              (* (/ 1.0 100000.0) (to_real ((_ !round! 0) a!6))))))
(let ((a!8 ((_ !round! 0)
             (* (+ (- 845600.0) (to_real |ressources_ménage_arrondies_in|))
                a!7))))
(let ((a!9 (+ a!1
              ((_ !round! 0)
                (* 1272.0 (to_real |nombre_personnes_à_charge_in|)))
              (* (- 1) a!3)
              (* (- 1) a!8))))
  (not (<= (- 47664) a!9)))))))))
(assert-soft (= (mod |réduction_loyer_solidarité_in| 100) 0) :weight 1 :id id!5)
(assert-soft (= (mod |réduction_loyer_solidarité_in| 10000) 0) :weight 1 :id id!6)
(assert-soft (= (mod |ressources_ménage_arrondies_in| 100) 0) :weight 1 :id id!3)
(assert-soft (= (mod |ressources_ménage_arrondies_in| 10000) 0) :weight 1 :id id!4)
(assert-soft (= (mod loyer_principal_in 100) 0) :weight 1 :id id!1)
(assert-soft (= (mod loyer_principal_in 10000) 0) :weight 1 :id id!2)
(check-sat)
