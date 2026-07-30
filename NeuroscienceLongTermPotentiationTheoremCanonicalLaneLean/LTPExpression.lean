import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure LTPExpression where
  ampaReceptorPhosphorylation : Prop
  ampaReceptorInsertion : Prop
  dendriticSpineGrowth : Prop
  proteinSynthesis : Prop
  immediateEarlyGenes : Prop
  lateLTP : Prop
  structuralConsolidation : Prop

structure LTPExpressionEvidence (L : LTPExpression) where
  ampaReceptorPhosphorylationClosed : L.ampaReceptorPhosphorylation
  ampaReceptorInsertionClosed : L.ampaReceptorInsertion
  dendriticSpineGrowthClosed : L.dendriticSpineGrowth
  proteinSynthesisClosed : L.proteinSynthesis
  immediateEarlyGenesClosed : L.immediateEarlyGenes
  lateLTPClosed : L.lateLTP
  structuralConsolidationClosed : L.structuralConsolidation

def LTPExpressionClosed (L : LTPExpression) : Prop :=
  L.ampaReceptorPhosphorylation ∧ L.ampaReceptorInsertion ∧ L.dendriticSpineGrowth ∧ L.proteinSynthesis ∧ L.immediateEarlyGenes ∧ L.lateLTP ∧ L.structuralConsolidation

theorem ltp_expression_closed_from_evidence (L : LTPExpression) (E : LTPExpressionEvidence L) : LTPExpressionClosed L := by
  exact And.intro E.ampaReceptorPhosphorylationClosed (And.intro E.ampaReceptorInsertionClosed (And.intro E.dendriticSpineGrowthClosed (And.intro E.proteinSynthesisClosed (And.intro E.immediateEarlyGenesClosed (And.intro E.lateLTPClosed E.structuralConsolidationClosed)))))

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean