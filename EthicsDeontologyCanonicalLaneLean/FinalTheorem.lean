import EthicsDeontologyCanonicalLaneLean.UniversalizabilityTest

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

def ConstrainedDeontologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_deontology_endgame (A : AdmissibleClass) :
    ConstrainedDeontologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
