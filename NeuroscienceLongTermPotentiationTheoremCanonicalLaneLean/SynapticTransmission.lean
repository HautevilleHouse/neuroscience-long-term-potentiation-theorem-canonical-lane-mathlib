import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure SynapticTransmissionPackage where
  presynapticTerminalModel : Type u
  neurotransmitterRelease : Prop
  postsynapticReceptorActivation : Prop
  epspSummation : Prop
  spineDensityDynamics : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  presynapticTerminalModelClosed : S.presynapticTerminalModel
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  postsynapticReceptorActivationClosed : S.postsynapticReceptorActivation
  epspSummationClosed : S.epspSummation
  spineDensityDynamicsClosed : S.spineDensityDynamics

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.presynapticTerminalModel ∧ S.neurotransmitterRelease ∧
  S.postsynapticReceptorActivation ∧ S.epspSummation ∧ S.spineDensityDynamics

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.presynapticTerminalModelClosed
    (And.intro E.neurotransmitterReleaseClosed
      (And.intro E.postsynapticReceptorActivationClosed
        (And.intro E.epspSummationClosed E.spineDensityDynamicsClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse