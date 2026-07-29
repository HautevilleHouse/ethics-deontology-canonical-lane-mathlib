import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

structure PrimaFacieDuties where
  dutyType : Type u
  conflictingDuties : dutyType → dutyType → Prop
  overrideCondition : dutyType → dutyType → Prop
  actualDutyDetermined : Prop
  compellingMoralWeight : dutyType → Prop

type_t PrimeFacieDuty =
  | Fidelity
  | Reparation
  | Gratitude
  | Justice
  | Beneficence
  | SelfImprovement
  | NonMaleficence

structure PrimaFacieDutiesEvidence (P : PrimaFacieDuties) where
  actualDutyDeterminedClosed : P.actualDutyDetermined
  noIrresolvableConflict : ∀ d1 d2 : P.dutyType, ¬ (P.conflictingDuties d1 d2 ∧ P.overrideCondition d1 d2 ∧ P.overrideCondition d2 d1)
  compellingMoralWeightConsistent : ∀ d : P.dutyType, P.compellingMoralWeight d → ∀ d' : P.dutyType, P.conflictingDuties d d' → P.overrideCondition d d'

def PrimaFacieDutiesClosed (P : PrimaFacieDuties) : Prop :=
  P.actualDutyDetermined ∧
  (∀ d1 d2 : P.dutyType, ¬ (P.conflictingDuties d1 d2 ∧ P.overrideCondition d1 d2 ∧ P.overrideCondition d2 d1)) ∧
  (∀ d : P.dutyType, P.compellingMoralWeight d → ∀ d' : P.dutyType, P.conflictingDuties d d' → P.overrideCondition d d')

theorem prima_facie_duties_closed_from_evidence
    (P : PrimaFacieDuties) (E : PrimaFacieDutiesEvidence P) :
    PrimaFacieDutiesClosed P := by
  exact And.intro E.actualDutyDeterminedClosed
    (And.intro E.noIrresolvableConflict E.compellingMoralWeightConsistent)

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse