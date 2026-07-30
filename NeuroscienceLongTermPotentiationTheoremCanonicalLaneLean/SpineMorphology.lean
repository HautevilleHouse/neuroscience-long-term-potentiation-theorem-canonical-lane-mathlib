import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure SpineMorphologyPackage where
  spineHeadVolume : Prop
  spineNeckResistance : Prop
  actinPolymerization : Prop
  pSDScaffoldAssembly : Prop
  synapticContactStabilization : Prop

structure SpineMorphologyEvidence (S : SpineMorphologyPackage) where
  spineHeadVolumeClosed : S.spineHeadVolume
  spineNeckResistanceClosed : S.spineNeckResistance
  actinPolymerizationClosed : S.actinPolymerization
  pSDScaffoldAssemblyClosed : S.pSDScaffoldAssembly
  synapticContactStabilizationClosed : S.synapticContactStabilization

def SpineMorphologyClosed (S : SpineMorphologyPackage) : Prop :=
  S.spineHeadVolume ∧ S.spineNeckResistance ∧ S.actinPolymerization ∧
  S.pSDScaffoldAssembly ∧ S.synapticContactStabilization

theorem spine_morphology_closed_from_evidence (S : SpineMorphologyPackage) (E : SpineMorphologyEvidence S) :
    SpineMorphologyClosed S := by
  exact And.intro E.spineHeadVolumeClosed
    (And.intro E.spineNeckResistanceClosed
      (And.intro E.actinPolymerizationClosed
        (And.intro E.pSDScaffoldAssemblyClosed E.synapticContactStabilizationClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse