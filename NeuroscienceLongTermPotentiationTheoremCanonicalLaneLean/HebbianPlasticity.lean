import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticStimulation : Prop
  postsynapticDepolarization : Prop
  nmdaReceptorActivation : Prop
  calciumInflux : Prop
  kinaseActivation : Prop
  ampaReceptorInsertion : Prop
  ltpInduction : Prop
  hebbianMatchingRule : Prop
  learningRuleClosed : Prop

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.presynapticStimulation ∧ H.postsynapticDepolarization ∧
  H.nmdaReceptorActivation ∧ H.calciumInflux ∧
  H.kinaseActivation ∧ H.ampaReceptorInsertion ∧
  H.ltpInduction ∧ H.hebbianMatchingRule

theorem hebbian_plasticity_closed (H : HebbianPlasticityPackage) : HebbianPlasticityClosed H := by
  exact And.intro H.presynapticStimulation
    (And.intro H.postsynapticDepolarization
      (And.intro H.nmdaReceptorActivation
        (And.intro H.calciumInflux
          (And.intro H.kinaseActivation
            (And.intro H.ampaReceptorInsertion
              (And.intro H.ltpInduction H.hebbianMatchingRule))))))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse