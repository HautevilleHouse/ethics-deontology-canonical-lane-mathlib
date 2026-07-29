import EthicsDeontologyCanonicalLaneLean.CategoricalImperative

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

structure UniversalizabilityTestPackage {C : CategoricalImperativeFoundation}
    (F : CategoricalImperativeEvidence C) where
  contradictionInConception : Prop
  contradictionInWill : Prop
  perfectDuty : Prop
  imperfectDuty : Prop
  testApplied : Prop

structure UniversalizabilityTestEvidence {C : CategoricalImperativeFoundation}
    {F : CategoricalImperativeEvidence C} (U : UniversalizabilityTestPackage F) where
  contradictionInConceptionClosed : U.contradictionInConception
  contradictionInWillClosed : U.contradictionInWill
  perfectDutyClosed : U.perfectDuty
  imperfectDutyClosed : U.imperfectDuty
  testAppliedClosed : U.testApplied

def UniversalizabilityTestClosed {C : CategoricalImperativeFoundation}
    {F : CategoricalImperativeEvidence C} (U : UniversalizabilityTestPackage F) : Prop :=
  U.contradictionInConception ∧ U.contradictionInWill ∧ U.perfectDuty ∧ U.imperfectDuty ∧ U.testApplied

theorem universalizability_test_closed_from_evidence
    {C : CategoricalImperativeFoundation} {F : CategoricalImperativeEvidence C}
    (U : UniversalizabilityTestPackage F) (E : UniversalizabilityTestEvidence U) :
    UniversalizabilityTestClosed U := by
  exact And.intro E.contradictionInConceptionClosed
    (And.intro E.contradictionInWillClosed
      (And.intro E.perfectDutyClosed
        (And.intro E.imperfectDutyClosed E.testAppliedClosed)))

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
