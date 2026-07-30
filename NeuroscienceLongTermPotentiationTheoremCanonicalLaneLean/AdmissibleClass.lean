import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure NeuroscienceAdmittedObject where
  hebbianSynapse : Type
  ltpInduction : Prop
  spikeTimingDependentPlasticity : Prop
  conclusion : ltpInduction

def NeuroScienceWitnessClosed (O : NeuroscienceAdmittedObject) : Prop :=
  O.ltpInduction

structure AdmissibleClass where
  object : NeuroscienceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuroScienceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
