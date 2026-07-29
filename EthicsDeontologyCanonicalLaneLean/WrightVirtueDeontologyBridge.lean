import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

structure WrightVirtueDeontologyBridge where
  virtue : Type u
  duty : Type v
  virtueEnablesDuty : virtue → duty → Prop
  dutyCultivatesVirtue : duty → virtue → Prop
  bridgeConsistent : Prop
  bridgeComplete : Prop

structure WrightVirtueDeontologyBridgeEvidence (B : WrightVirtueDeontologyBridge) where
  bridgeConsistentClosed : B.bridgeConsistent
  bridgeCompleteClosed : B.bridgeComplete
  virtueEnablesDutyClosed : ∀ (v : B.virtue) (d : B.duty), B.virtueEnablesDuty v d
  dutyCultivatesVirtueClosed : ∀ (d : B.duty) (v : B.virtue), B.dutyCultivatesVirtue d v

def WrightVirtueDeontologyBridgeClosed (B : WrightVirtueDeontologyBridge) : Prop :=
  B.bridgeConsistent ∧ B.bridgeComplete ∧
  (∀ (v : B.virtue) (d : B.duty), B.virtueEnablesDuty v d) ∧
  (∀ (d : B.duty) (v : B.virtue), B.dutyCultivatesVirtue d v)

theorem wright_virtue_deontology_bridge_closed_from_evidence
    (B : WrightVirtueDeontologyBridge) (E : WrightVirtueDeontologyBridgeEvidence B) :
    WrightVirtueDeontologyBridgeClosed B := by
  exact And.intro E.bridgeConsistentClosed
    (And.intro E.bridgeCompleteClosed
      (And.intro E.virtueEnablesDutyClosed E.dutyCultivatesVirtueClosed))

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse