import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

structure KantianMoralLaw where
  maxim : Type u
  universalizable : maxim → Prop
  humanityRespected : maxim → Prop
  autonomyPrinciple : maxim → Prop
  contradictionInConception : maxim → Prop
  contradictionInWill : maxim → Prop
  categoricalImperativeSatisfied : Prop

structure KantianMoralLawEvidence (K : KantianMoralLaw) where
  universalizableClosed : ∀ m : K.maxim, K.universalizable m
  humanityRespectedClosed : ∀ m : K.maxim, K.humanityRespected m
  autonomyPrincipleClosed : ∀ m : K.maxim, K.autonomyPrinciple m
  categoricalImperativeSatisfiedClosed : K.categoricalImperativeSatisfied

def KantianMoralLawClosed (K : KantianMoralLaw) : Prop :=
  K.categoricalImperativeSatisfied ∧
  (∀ m : K.maxim, K.universalizable m) ∧
  (∀ m : K.maxim, K.humanityRespected m) ∧
  (∀ m : K.maxim, K.autonomyPrinciple m)

theorem kantian_moral_law_closed_from_evidence
    (K : KantianMoralLaw) (E : KantianMoralLawEvidence K) :
    KantianMoralLawClosed K := by
  exact And.intro E.categoricalImperativeSatisfiedClosed
    (And.intro E.universalizableClosed
      (And.intro E.humanityRespectedClosed E.autonomyPrincipleClosed))

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse