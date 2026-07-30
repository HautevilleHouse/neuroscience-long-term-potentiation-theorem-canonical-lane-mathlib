import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure NeuralFieldTheoryPackage where
  populationActivity : Type u
  spatialCoordinate : Type v
  connectivityKernel : Type w
  integralEquation : Prop
  stationaryStates : Prop
  stabilityCondition : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheoryPackage) where
  integralEquationClosed : N.integralEquation
  stationaryStatesClosed : N.stationaryStates
  stabilityConditionClosed : N.stabilityCondition

def NeuralFieldTheoryClosed (N : NeuralFieldTheoryPackage) : Prop :=
  N.integralEquation ∧ N.stationaryStates ∧ N.stabilityCondition

theorem neural_field_theory_closed_from_evidence (N : NeuralFieldTheoryPackage)
    (E : NeuralFieldTheoryEvidence N) : NeuralFieldTheoryClosed N := by
  exact And.intro E.integralEquationClosed (And.intro E.stationaryStatesClosed E.stabilityConditionClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean