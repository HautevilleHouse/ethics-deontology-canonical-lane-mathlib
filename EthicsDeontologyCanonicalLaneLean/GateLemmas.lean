import HautevilleHouse.EthicsDeontologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
