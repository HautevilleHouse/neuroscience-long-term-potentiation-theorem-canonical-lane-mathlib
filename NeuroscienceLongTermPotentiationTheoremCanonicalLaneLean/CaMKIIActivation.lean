import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure CaMKIIActivationPackage where
  calmodulinBinding : Prop
  kinaseAutophosphorylation : Prop
  ampaReceptorPhosphorylation : Prop
  synapticStrengthIncrease : Prop
  ltpConsolidation : Prop

structure CaMKIIActivationEvidence (C : CaMKIIActivationPackage) where
  calmodulinBindingClosed : C.calmodulinBinding
  kinaseAutophosphorylationClosed : C.kinaseAutophosphorylation
  ampaReceptorPhosphorylationClosed : C.ampaReceptorPhosphorylation
  synapticStrengthIncreaseClosed : C.synapticStrengthIncrease
  ltpConsolidationClosed : C.ltpConsolidation

def CaMKIIActivationClosed (C : CaMKIIActivationPackage) : Prop :=
  C.calmodulinBinding ∧ C.kinaseAutophosphorylation ∧
  C.ampaReceptorPhosphorylation ∧ C.synapticStrengthIncrease ∧ C.ltpConsolidation

theorem camkii_activation_closed_from_evidence (C : CaMKIIActivationPackage) (E : CaMKIIActivationEvidence C) :
    CaMKIIActivationClosed C := by
  exact And.intro E.calmodulinBindingClosed
    (And.intro E.kinaseAutophosphorylationClosed
      (And.intro E.ampaReceptorPhosphorylationClosed
        (And.intro E.synapticStrengthIncreaseClosed E.ltpConsolidationClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse