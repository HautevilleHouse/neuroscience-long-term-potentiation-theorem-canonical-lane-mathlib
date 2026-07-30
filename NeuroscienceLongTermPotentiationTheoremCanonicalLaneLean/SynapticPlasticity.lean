import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure SynapticPlasticityPackage where
  postsynapticNeuron : Type
  presynapticNeuron : Type
  spineVolume : Float
  receptorDensity : Float
  calciumConcentration : Float
  kinaseActivation : Prop
  phosphataseActivation : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  spineVolumeClosed : S.spineVolume > 0.0
  receptorDensityClosed : S.receptorDensity > 0.0
  calciumConcentrationClosed : S.calciumConcentration > 0.0
  kinaseActivationClosed : S.kinaseActivation
  phosphataseActivationClosed : S.phosphataseActivation

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.spineVolume > 0.0 ∧ S.receptorDensity > 0.0 ∧ S.calciumConcentration > 0.0 ∧
  S.kinaseActivation ∧ S.phosphataseActivation

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence S) : SynapticPlasticityClosed S :=
  And.intro E.spineVolumeClosed (And.intro E.receptorDensityClosed (And.intro E.calciumConcentrationClosed (And.intro E.kinaseActivationClosed E.phosphataseActivationClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
