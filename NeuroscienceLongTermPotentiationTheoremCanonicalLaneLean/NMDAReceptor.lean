import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure NMDAReceptorPackage (S : SynapticPlasticityPackage) where
  magnesiumBlock : Float
  voltageDependence : Prop
  calciumInflux : Float
  glutamateBinding : Prop
  channelOpening : Prop

structure NMDAReceptorEvidence {S : SynapticPlasticityPackage} (N : NMDAReceptorPackage S) where
  magnesiumBlockClosed : N.magnesiumBlock > 0.0
  voltageDependenceClosed : N.voltageDependence
  calciumInfluxClosed : N.calciumInflux > 0.0
  glutamateBindingClosed : N.glutamateBinding
  channelOpeningClosed : N.channelOpening

def NMDAReceptorClosed {S : SynapticPlasticityPackage} (N : NMDAReceptorPackage S) : Prop :=
  N.magnesiumBlock > 0.0 ∧ N.voltageDependence ∧ N.calciumInflux > 0.0 ∧
  N.glutamateBinding ∧ N.channelOpening

theorem nmda_receptor_closed_from_evidence {S : SynapticPlasticityPackage} (N : NMDAReceptorPackage S) (E : NMDAReceptorEvidence N) : NMDAReceptorClosed N :=
  And.intro E.magnesiumBlockClosed (And.intro E.voltageDependenceClosed (And.intro E.calciumInfluxClosed (And.intro E.glutamateBindingClosed E.channelOpeningClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
