import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure PlasticityInduction where
  tetanicStimulation : Prop
  thetaBurstStimulation : Prop
  pairingProtocol : Prop
  spikeTimingProtocol : Prop
  chemicalInduction : Prop
  optogeneticInduction : Prop
  inductionCriteria : Prop

structure PlasticityInductionEvidence (P : PlasticityInduction) where
  tetanicStimulationClosed : P.tetanicStimulation
  thetaBurstStimulationClosed : P.thetaBurstStimulation
  pairingProtocolClosed : P.pairingProtocol
  spikeTimingProtocolClosed : P.spikeTimingProtocol
  chemicalInductionClosed : P.chemicalInduction
  optogeneticInductionClosed : P.optogeneticInduction
  inductionCriteriaClosed : P.inductionCriteria

def PlasticityInductionClosed (P : PlasticityInduction) : Prop :=
  P.tetanicStimulation ∧ P.thetaBurstStimulation ∧ P.pairingProtocol ∧ P.spikeTimingProtocol ∧ P.chemicalInduction ∧ P.optogeneticInduction ∧ P.inductionCriteria

theorem plasticity_induction_closed_from_evidence (P : PlasticityInduction) (E : PlasticityInductionEvidence P) : PlasticityInductionClosed P := by
  exact And.intro E.tetanicStimulationClosed (And.intro E.thetaBurstStimulationClosed (And.intro E.pairingProtocolClosed (And.intro E.spikeTimingProtocolClosed (And.intro E.chemicalInductionClosed (And.intro E.optogeneticInductionClosed E.inductionCriteriaClosed)))))

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean