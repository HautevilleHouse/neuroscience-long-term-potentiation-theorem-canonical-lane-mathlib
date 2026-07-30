import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : Prop
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakageConductance : Prop
  gatingVariables : Prop
  actionPotentialGeneration : Prop
  channelKinetics : Prop
  modelClosed : Prop

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance ∧ H.sodiumConductance ∧
  H.potassiumConductance ∧ H.leakageConductance ∧
  H.gatingVariables ∧ H.actionPotentialGeneration ∧
  H.channelKinetics

theorem hodgkin_huxley_closed (H : HodgkinHuxleyPackage) : HodgkinHuxleyClosed H := by
  exact And.intro H.membraneCapacitance
    (And.intro H.sodiumConductance
      (And.intro H.potassiumConductance
        (And.intro H.leakageConductance
          (And.intro H.gatingVariables
            (And.intro H.actionPotentialGeneration H.channelKinetics)))))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse