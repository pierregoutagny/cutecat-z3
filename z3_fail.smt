(declare-datatypes ((unit 0)) (((unit))))
(declare-datatypes ((TypeAidesPersonnelleLogement 0)) (((|mk!AidePersonnaliséeLogement| (|AidePersonnaliséeLogement!0| unit)) (mk!AllocationLogementFamiliale (AllocationLogementFamiliale!0 unit)) (mk!AllocationLogementSociale (AllocationLogementSociale!0 unit)))))
(declare-datatypes ((|Collectivité| 0)) (((mk!Guadeloupe (Guadeloupe!0 unit)) (mk!Guyane (Guyane!0 unit)) (mk!Martinique (Martinique!0 unit)) (|mk!LaRéunion| (|LaRéunion!0| unit)) (|mk!SaintBarthélemy| (|SaintBarthélemy!0| unit)) (mk!SaintMartin (SaintMartin!0 unit)) (|mk!Métropole| (|Métropole!0| unit)) (mk!SaintPierreEtMiquelon (SaintPierreEtMiquelon!0 unit)) (mk!Mayotte (Mayotte!0 unit)))))
(declare-datatypes ((SituationFamilialeCalculAPL 0)) (((mk!PersonneSeule (PersonneSeule!0 unit)) (mk!Couple (Couple!0 unit)))))
(declare-datatypes ((ZoneDHabitation 0)) (((mk!Zone1 (Zone1!0 unit)) (mk!Zone2 (Zone2!0 unit)) (mk!Zone3 (Zone3!0 unit)))))
(declare-fun colocation_in () Bool)
(declare-fun |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|
             ()
             Bool)
(declare-fun |nombre_personnes_à_charge_in| () Int)
(declare-fun |logement_meublé_d842_2_in| () Bool)
(declare-fun logement_est_chambre_in () Bool)
(declare-fun date_courante_in () Int)
(declare-fun type_aide_in () TypeAidesPersonnelleLogement)
(declare-fun |résidence_in| () |Collectivité|)
(declare-fun situation_familiale_calcul_apl_in () SituationFamilialeCalculAPL)
(declare-fun zone_in () ZoneDHabitation)
(declare-fun loyer_principal_base_in () Int)
(declare-fun |ressources_ménage_arrondies_in| () Int)
(define-funs-rec ( ( !round! ((x!1 Real)) Int))
                 ( (let ((a!1 (- (to_int (+ (- x!1) (/ 1.0 2.0))))))
                     (ite (>= x!1 0.0) (to_int (+ x!1 (/ 1.0 2.0))) a!1))))
(assert (>= date_courante_in 18536))
(assert (>= date_courante_in 18170))
(assert (not (<= 18901 date_courante_in)))
(assert (not ((_ is mk!AllocationLogementSociale) type_aide_in)))
(assert (not ((_ is mk!AllocationLogementFamiliale) type_aide_in)))
(assert ((_ is |mk!AidePersonnaliséeLogement|) type_aide_in))
(assert (>= date_courante_in 18262))
(assert (<= 18536 date_courante_in))
(assert (or (= |résidence_in| (mk!Martinique unit))
    (= |résidence_in| (mk!Guadeloupe unit))
    (= |résidence_in| (|mk!LaRéunion| unit))
    (= |résidence_in| (|mk!SaintBarthélemy| unit))
    (= |résidence_in| (mk!SaintMartin unit))
    (= |résidence_in| (mk!Mayotte unit))))
(assert (not (<= 18993 date_courante_in)))
(assert (not (and (>= date_courante_in 19174) (not (<= 19358 date_courante_in)))))
(assert (not (>= date_courante_in 18901)))
(assert (not ((_ is mk!Couple) situation_familiale_calcul_apl_in)))
(assert ((_ is mk!PersonneSeule) situation_familiale_calcul_apl_in))
(assert (not (and (>= date_courante_in 18628) (= |résidence_in| (mk!Mayotte unit)))))
(assert (not (and (not (<= 18628 date_courante_in))
          (= |résidence_in| (mk!Mayotte unit)))))
(assert (not (and (>= date_courante_in 19174)
          (not (<= 19358 date_courante_in))
          (= |résidence_in| (mk!SaintPierreEtMiquelon unit)))))
(assert (not (>= date_courante_in 19358)))
(assert (not (and (>= date_courante_in 19174) (<= date_courante_in 19357))))
(assert (not (and (>= date_courante_in 18993) (not (<= 19174 date_courante_in)))))
(assert (not (>= date_courante_in 19631)))
(assert (not (and (>= date_courante_in 19174) (not (<= 19631 date_courante_in)))))
(assert (not ((_ is mk!Zone3) zone_in)))
(assert (not ((_ is mk!Zone2) zone_in)))
(assert ((_ is mk!Zone1) zone_in))
(assert (<= ((_ !round! 0) (* (/ 2.0 3.0) (to_real loyer_principal_base_in))) 22262))
(assert (let ((a!1 (to_real ((_ !round! 0)
                      (* (/ 2.0 3.0) (to_real loyer_principal_base_in))))))
(let ((a!2 (>= ((_ !round! 0) (+ (/ 7922.0 25.0) (* (/ 17.0 200.0) a!1))) 3524)))
  (not a!2))))
(assert (let ((a!1 (to_real ((_ !round! 0)
                      (* (/ 2.0 3.0) (to_real loyer_principal_base_in))))))
(let ((a!2 (>= (to_real ((_ !round! 0) (* (/ 25.0 10204.0) a!1))) 45.0)))
  (not a!2))))
(assert (let ((a!1 ((_ !round! 0)
             (+ (- (/ 347851.0 20.0))
                (* (/ 217.0 10000.0)
                   (to_real |ressources_ménage_arrondies_in|))))))
  (<= 0 a!1)))

; (model-add colocation_in () Bool false)
; (model-add |âgées_ou_handicap_adultes_hébergées_onéreux_particuliers_in|
;            ()
;            Bool
;            true)
; (model-add |nombre_personnes_à_charge_in| () Int 2)
; (model-add |logement_meublé_d842_2_in| () Bool true)
; (model-add logement_est_chambre_in () Bool true)

