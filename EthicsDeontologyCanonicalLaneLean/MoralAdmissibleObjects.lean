import EthicsDeontologyCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

open AdmissibleClass

structure DeontologicalAction where
  actionType : String
  agent : String
  maxim : String

structure DeontologicalAdmittedObject where
  action : DeontologicalAction
  universalizable : Prop
  humansAsEnds : Prop
  autonomyRespected : Prop
  conclusion : universalizable ∧ humansAsEnds ∧ autonomyRespected

structure DeontologicalEndgameState where
  object : DeontologicalAdmittedObject

def DeontologicalWitnessClosed (O : DeontologicalAdmittedObject) : Prop :=
  O.conclusion

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
