import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure CalciumSignalingPackage (N : NMDAReceptorPackage) where
  calciumConcentration : Float
  camkiiActivation : Prop
  calcineurinActivation : Prop
  kinasePhosphataseBalance : Prop
  geneExpression : Prop

structure CalciumSignalingEvidence {N : NMDAReceptorPackage} (C : CalciumSignalingPackage N) where
  calciumConcentrationClosed : C.calciumConcentration > 0.0
  camkiiActivationClosed : C.camkiiActivation
  calcineurinActivationClosed : C.calcineurinActivation
  kinasePhosphataseBalanceClosed : C.kinasePhosphataseBalance
  geneExpressionClosed : C.geneExpression

def CalciumSignalingClosed {N : NMDAReceptorPackage} (C : CalciumSignalingPackage N) : Prop :=
  C.calciumConcentration > 0.0 ∧ C.camkiiActivation ∧ C.calcineurinActivation ∧
  C.kinasePhosphataseBalance ∧ C.geneExpression

theorem calcium_signaling_closed_from_evidence {N : NMDAReceptorPackage} (C : CalciumSignalingPackage N) (E : CalciumSignalingEvidence C) : CalciumSignalingClosed C :=
  And.intro E.calciumConcentrationClosed (And.intro E.camkiiActivationClosed (And.intro E.calcineurinActivationClosed (And.intro E.kinasePhosphataseBalanceClosed E.geneExpressionClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
