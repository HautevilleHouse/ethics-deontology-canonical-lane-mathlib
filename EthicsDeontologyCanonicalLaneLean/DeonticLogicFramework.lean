import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

inductive DeonticModalOperator : Type
  | Obligatory
  | Permitted
  | Forbidden
  | Ommission

type_t DeonticWorld = List (DeonticModalOperator × Prop)

structure DeonticLogicFramework where
  World : Type u
  accessibilityRelation : World → World → Prop
  valuation : World → (DeonticModalOperator × Prop) → Prop
  deonticAxioms : Prop
  semanticConsistency : Prop
  completenessTheorem : Prop

structure DeonticLogicFrameworkEvidence (F : DeonticLogicFramework) where
  deonticAxiomsClosed : F.deonticAxioms
  semanticConsistencyClosed : F.semanticConsistency
  completenessTheoremClosed : F.completenessTheorem

def DeonticLogicFrameworkClosed (F : DeonticLogicFramework) : Prop :=
  F.deonticAxioms ∧ F.semanticConsistency ∧ F.completenessTheorem

theorem deontic_logic_framework_closed_from_evidence
    (F : DeonticLogicFramework) (E : DeonticLogicFrameworkEvidence F) :
    DeonticLogicFrameworkClosed F := by
  exact And.intro E.deonticAxiomsClosed
    (And.intro E.semanticConsistencyClosed E.completenessTheoremClosed)

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse