import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure SynapticTagCaptureModel where
  synapticTag : Type
  captureProtein : Type
  proteinSynthesis : Type
  tagSet : Prop
  captureBinding : Prop
  lateLTPExpression : Prop
  tagSetTerm : tagSet
  captureBindingTerm : captureBinding
  lateLTPExpressionTerm : lateLTPExpression

structure SynapticTagCaptureEvidence (S : SynapticTagCaptureModel) where
  tagSetClosed : S.tagSet
  captureBindingClosed : S.captureBinding
  lateLTPExpressionClosed : S.lateLTPExpression

def SynapticTagCaptureClosed (S : SynapticTagCaptureModel) : Prop :=
  S.tagSet ∧ S.captureBinding ∧ S.lateLTPExpression

theorem synaptic_tag_capture_closed_from_evidence (S : SynapticTagCaptureModel) (E : SynapticTagCaptureEvidence S) :
    SynapticTagCaptureClosed S := by
  exact And.intro E.tagSetClosed (And.intro E.captureBindingClosed E.lateLTPExpressionClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean