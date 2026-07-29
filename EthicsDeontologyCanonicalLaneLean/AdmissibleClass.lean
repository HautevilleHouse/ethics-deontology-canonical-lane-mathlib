import HautevilleHouse.EthicsDeontologyCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

structure EthicsDeontologyAdmittedObject where
  normativeSystem : Type
  moralPrinciple : Prop
  principleJustified : moralPrinciple

structure AdmissibleClass where
  object : EthicsDeontologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DeontologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
