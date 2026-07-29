import HautevilleHouse.EthicsDeontologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DeontologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.principleJustified

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
