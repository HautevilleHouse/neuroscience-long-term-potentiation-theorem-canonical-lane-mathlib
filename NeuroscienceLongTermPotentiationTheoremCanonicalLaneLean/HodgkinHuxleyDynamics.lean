import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotentialModel : Type u
  sodiumChannelGating : Prop
  potassiumChannelGating : Prop
  leakCurrentModel : Prop
  actionPotentialGeneration : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  membranePotentialModelClosed : H.membranePotentialModel
  sodiumChannelGatingClosed : H.sodiumChannelGating
  potassiumChannelGatingClosed : H.potassiumChannelGating
  leakCurrentModelClosed : H.leakCurrentModel
  actionPotentialGenerationClosed : H.actionPotentialGeneration

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membranePotentialModel ∧ H.sodiumChannelGating ∧ H.potassiumChannelGating ∧
  H.leakCurrentModel ∧ H.actionPotentialGeneration

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membranePotentialModelClosed
    (And.intro E.sodiumChannelGatingClosed
      (And.intro E.potassiumChannelGatingClosed
        (And.intro E.leakCurrentModelClosed E.actionPotentialGenerationClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse