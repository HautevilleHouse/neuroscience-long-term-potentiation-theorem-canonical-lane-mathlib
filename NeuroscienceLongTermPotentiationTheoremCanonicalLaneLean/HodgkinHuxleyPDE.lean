import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure HodgkinHuxleyPDEPackage where
  membraneVoltage : Type u
  timeParameter : Type v
  potassiumConductance : Type w
  sodiumConductance : Type x
  leakageConductance : Type y
  voltageEquation : Prop
  gatingEquations : Prop
  initialConditions : Prop

structure HodgkinHuxleyPDEevidence (H : HodgkinHuxleyPDEPackage) where
  voltageEquationClosed : H.voltageEquation
  gatingEquationsClosed : H.gatingEquations
  initialConditionsClosed : H.initialConditions

def HodgkinHuxleyPDEClosed (H : HodgkinHuxleyPDEPackage) : Prop :=
  H.voltageEquation ∧ H.gatingEquations ∧ H.initialConditions

theorem hodgkin_huxley_pde_closed_from_evidence (H : HodgkinHuxleyPDEPackage)
    (E : HodgkinHuxleyPDEevidence H) : HodgkinHuxleyPDEClosed H := by
  exact And.intro E.voltageEquationClosed (And.intro E.gatingEquationsClosed E.initialConditionsClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean