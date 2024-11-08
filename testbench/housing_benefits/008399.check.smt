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
(assert (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926)))
(assert (>= date_courante_in 3560))
(assert (not (not (not (and logement_est_chambre_in colocation_in)))))
(assert (not |logement_meublé_d842_2_in|))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
(assert (not (= |nombre_personnes_à_charge_in| 1)))
(assert (not (= |nombre_personnes_à_charge_in| 2)))
(assert (not (= |nombre_personnes_à_charge_in| 3)))
(assert (not (= |nombre_personnes_à_charge_in| 4)))
(assert (not (= |nombre_personnes_à_charge_in| 5)))
(assert (not (= |nombre_personnes_à_charge_in| 6)))
(assert (and (not (<= 4383 date_courante_in)) (>= date_courante_in 3652)))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (not (and (not (<= 4291 date_courante_in))
          (>= date_courante_in 3926)
          colocation_in)))
(assert (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926)))
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
(assert (not (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926)))
(assert (not (>= date_courante_in 4748)))
(assert (not (and (>= date_courante_in 4564) (<= date_courante_in 4747))))
(assert (not (and (>= date_courante_in 4383) (not (<= 4564 date_courante_in)))))
(assert (and (not (<= 4383 date_courante_in)) (>= date_courante_in 3652)))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
(assert (not (= |nombre_personnes_à_charge_in| 1)))
(assert (not (= |nombre_personnes_à_charge_in| 2)))
(assert (not (= |nombre_personnes_à_charge_in| 3)))
(assert (not (= |nombre_personnes_à_charge_in| 4)))
(assert (not (= |nombre_personnes_à_charge_in| 5)))
(assert (not (= |nombre_personnes_à_charge_in| 6)))
(assert (not (>= date_courante_in 5021)))
(assert (not (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (not (= |nombre_personnes_à_charge_in| 0)))
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
(assert (and (not (<= 4291 date_courante_in))
     (>= date_courante_in 3926)
     logement_est_chambre_in))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not ((_ is mk!Zone2) zone_in)))
(assert ((_ is mk!Zone1) zone_in))
(assert (>= date_courante_in 3560))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not ((_ is mk!Zone2) zone_in)))
(assert ((_ is mk!Zone1) zone_in))
(assert (>= date_courante_in 3560))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not ((_ is mk!Zone2) zone_in)))
(assert ((_ is mk!Zone1) zone_in))
(assert (not (<= loyer_principal_in 26714)))
(assert (not (>= date_courante_in 5021)))
(assert (not (and (>= date_courante_in 4564) (not (<= 5021 date_courante_in)))))
(assert (not (and (>= date_courante_in 4291) (not (<= 4564 date_courante_in)))))
(assert (and (not (<= 4291 date_courante_in)) (>= date_courante_in 3926)))
(assert (let ((a!1 (to_real ((_ !round! 0)
                      (* 1224.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (>= ((_ !round! 0) (+ (/ 545921.0 200.0) (* (/ 17.0 200.0) a!1)))
               3524)))
  (not (not a!2)))))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 5186.0) (* 5186.0 (to_real |nombre_personnes_à_charge_in|))))))
  (not (= (+ 35630 a!1) 0))))
(assert (not (= 100.0 (to_real 0))))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 5186.0) (* 5186.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (* 100.0 (/ 26714.0 (+ 35630.0 (to_real a!1))))))
  (not (>= (to_real ((_ !round! 0) a!2)) 45.0)))))
(assert (and (>= date_courante_in 3926) (not (<= 4291 date_courante_in))))
(assert (not (= 100000.0 (to_real 0))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- 183000.0)
                (* 30500.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (* (+ (/ 209.0 10000.0)
                 (* (- (/ 3.0 5000.0))
                    (to_real |nombre_personnes_à_charge_in|)))
              (+ (- 924600.0)
                 (to_real |ressources_ménage_arrondies_in|)
                 (* (- 1.0) (to_real a!1))))))
  (not (<= 0 ((_ !round! 0) a!2))))))
(assert (let ((a!1 (to_real ((_ !round! 0)
                      (* 1224.0 (to_real |nombre_personnes_à_charge_in|))))))
(let ((a!2 (* (- 1)
              ((_ !round! 0) (+ (/ 545921.0 200.0) (* (/ 17.0 200.0) a!1))))))
(let ((a!3 (+ ((_ !round! 0)
                (* 1224.0 (to_real |nombre_personnes_à_charge_in|)))
              a!2)))
  (not (<= (- 32113) a!3))))))
(check-sat)
