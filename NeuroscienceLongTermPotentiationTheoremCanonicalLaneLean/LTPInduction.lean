import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure LTPInductionPackage (C : CalciumSignalingPackage) where
  highFrequencyStimulation : Prop
  synapticPotentiation : Prop
  glutamateRelease : Float
  postsynapticDepolarization : Float
  spineGrowth : Prop

structure LTPInductionEvidence {C : CalciumSignalingPackage} (L : LTPInductionPackage C) where
  highFrequencyStimulationClosed : L.highFrequencyStimulation
  synapticPotentiationClosed : L.synapticPotentiation
  glutamateReleaseClosed : L.glutamateRelease > 0.0
  postsynapticDepolarizationClosed : L.postsynapticDepolarization > 0.0
  spineGrowthClosed : L.spineGrowth

def LTPInductionClosed {C : CalciumSignalingPackage} (L : LTPInductionPackage C) : Prop :=
  L.highFrequencyStimulation ∧ L.synapticPotentiation ∧ L.glutamateRelease > 0.0 ∧
  L.postsynapticDepolarization > 0.0 ∧ L.spineGrowth

theorem ltp_induction_closed_from_evidence {C : CalciumSignalingPackage} (L : LTPInductionPackage C) (E : LTPInductionEvidence L) : LTPInductionClosed L :=
  And.intro E.highFrequencyStimulationClosed (And.intro E.synapticPotentiationClosed (And.intro E.glutamateReleaseClosed (And.intro E.postsynapticDepolarizationClosed E.spineGrowthClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
