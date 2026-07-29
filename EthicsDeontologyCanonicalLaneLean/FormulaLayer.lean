import EthicsDeontologyCanonicalLaneLean.UniversalizabilityTest

namespace HautevilleHouse
namespace EthicsDeontologyCanonicalLaneLean

inductive Duty where
  | perfect (name : String)
  | imperfect (name : String)
deriving Repr, DecidableEq

structure FormulaComponent where
  key : String
  value : String
deriving Repr, DecidableEq

structure FormulaModel where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  components : List FormulaComponent
deriving Repr, DecidableEq

def formulaModels : List FormulaModel :=
  [{ group := "principles", key := "categoricalImperative", status := "derived", formula := "first ∧ second ∧ third ∧ kingdomOfEnds", sourceSection := "Groundwork Section 2", components := [{ key := "first", value := "Act only according to that maxim whereby you can at the same time will that it should become a universal law." }, { key := "second", value := "Act in such a way that you treat humanity, whether in your own person or in the person of any other, never merely as a means to an end, but always at the same time as an end." }] },
   { group := "tests", key := "universalizabilityTest", status := "derived", formula := "contradictionInConception ∨ contradictionInWill", sourceSection := "Groundwork Section 2", components := [{ key := "contradictionInConception", value := "The maxim cannot be conceived as a universal law without contradiction." }, { key := "contradictionInWill", value := "The maxim could be conceived as a universal law but willing it as such contradicts the will." }] }]

end EthicsDeontologyCanonicalLaneLean
end HautevilleHouse
