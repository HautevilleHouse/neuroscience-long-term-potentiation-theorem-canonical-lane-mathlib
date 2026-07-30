import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure NeuromodulatoryGatingPackage where
  neuromodulatorConcentration : Type u
  receptorModulation : Type v
  gatingThreshold : Type w
  modulationRule : Prop
  thresholdDynamics : Prop
  ltpGatingCondition : Prop

structure NeuromodulatoryGatingEvidence (N : NeuromodulatoryGatingPackage) where
  modulationRuleClosed : N.modulationRule
  thresholdDynamicsClosed : N.thresholdDynamics
  ltpGatingConditionClosed : N.ltpGatingCondition

def NeuromodulatoryGatingClosed (N : NeuromodulatoryGatingPackage) : Prop :=
  N.modulationRule ∧ N.thresholdDynamics ∧ N.ltpGatingCondition

theorem neuromodulatory_gating_closed_from_evidence (N : NeuromodulatoryGatingPackage)
    (E : NeuromodulatoryGatingEvidence N) : NeuromodulatoryGatingClosed N := by
  exact And.intro E.modulationRuleClosed (And.intro E.thresholdDynamicsClosed E.ltpGatingConditionClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean