import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure HebbianSynapticPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  hebbianRule : Prop
  weightDynamics : Prop
  longTermPotentiationCondition : Prop

structure HebbianSynapticPlasticityEvidence (H : HebbianSynapticPlasticityPackage) where
  hebbianRuleClosed : H.hebbianRule
  weightDynamicsClosed : H.weightDynamics
  longTermPotentiationConditionClosed : H.longTermPotentiationCondition

def HebbianSynapticPlasticityClosed (H : HebbianSynapticPlasticityPackage) : Prop :=
  H.hebbianRule ∧ H.weightDynamics ∧ H.longTermPotentiationCondition

theorem hebbian_synaptic_plasticity_closed_from_evidence
    (H : HebbianSynapticPlasticityPackage) (E : HebbianSynapticPlasticityEvidence H) :
    HebbianSynapticPlasticityClosed H := by
  exact And.intro E.hebbianRuleClosed (And.intro E.weightDynamicsClosed E.longTermPotentiationConditionClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean