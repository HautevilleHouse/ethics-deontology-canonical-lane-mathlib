import EthicsDeontologyCanonicalLaneLean.MoralAdmissibleObjects

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

structure CategoricalImperativeFoundation where
  firstFormulation : Prop
  secondFormulation : Prop
  thirdFormulation : Prop
  kingdomOfEnds : Prop
  categoricalOught : Prop

structure CategoricalImperativeEvidence (C : CategoricalImperativeFoundation) where
  firstFormulationClosed : C.firstFormulation
  secondFormulationClosed : C.secondFormulation
  thirdFormulationClosed : C.thirdFormulation
  kingdomOfEndsClosed : C.kingdomOfEnds
  categoricalOughtClosed : C.categoricalOught

def CategoricalImperativeClosed (C : CategoricalImperativeFoundation) : Prop :=
  C.firstFormulation ∧ C.secondFormulation ∧ C.thirdFormulation ∧ C.kingdomOfEnds ∧ C.categoricalOught

theorem categorical_imperative_closed_from_evidence
    (C : CategoricalImperativeFoundation) (E : CategoricalImperativeEvidence C) :
    CategoricalImperativeClosed C := by
  exact And.intro E.firstFormulationClosed
    (And.intro E.secondFormulationClosed
      (And.intro E.thirdFormulationClosed
        (And.intro E.kingdomOfEndsClosed E.categoricalOughtClosed)))

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
