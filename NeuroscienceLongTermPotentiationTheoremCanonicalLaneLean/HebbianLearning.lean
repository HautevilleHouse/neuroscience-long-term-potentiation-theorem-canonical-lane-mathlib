import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure HebbianLearningPackage (S : SynapticPlasticityPackage) where
  prePostCorrelation : Float
  weightChange : Float
  learningRate : Float
  hebbianRule : Prop
  coincidenceDetection : Prop

structure HebbianLearningEvidence {S : SynapticPlasticityPackage} (H : HebbianLearningPackage S) where
  prePostCorrelationClosed : H.prePostCorrelation > 0.0
  weightChangeClosed : H.weightChange > 0.0
  learningRateClosed : H.learningRate > 0.0
  hebbianRuleClosed : H.hebbianRule
  coincidenceDetectionClosed : H.coincidenceDetection

def HebbianLearningClosed {S : SynapticPlasticityPackage} (H : HebbianLearningPackage S) : Prop :=
  H.prePostCorrelation > 0.0 ∧ H.weightChange > 0.0 ∧ H.learningRate > 0.0 ∧
  H.hebbianRule ∧ H.coincidenceDetection

theorem hebbian_learning_closed_from_evidence {S : SynapticPlasticityPackage} (H : HebbianLearningPackage S) (E : HebbianLearningEvidence H) : HebbianLearningClosed H :=
  And.intro E.prePostCorrelationClosed (And.intro E.weightChangeClosed (And.intro E.learningRateClosed (And.intro E.hebbianRuleClosed E.coincidenceDetectionClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
