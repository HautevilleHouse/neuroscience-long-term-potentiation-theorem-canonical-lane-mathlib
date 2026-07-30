import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure LTPMolecularCascadePackage where
  glutamateReceptor : Type u
  calciumInflux : Type v
  kinaseCascade : Type w
  geneExpression : Type x
  receptorInsertion : Type y
  cascadeActivation : Prop
  geneExpressionRegulation : Prop
  structuralChange : Prop

structure LTPMolecularCascadeEvidence (L : LTPMolecularCascadePackage) where
  cascadeActivationClosed : L.cascadeActivation
  geneExpressionRegulationClosed : L.geneExpressionRegulation
  structuralChangeClosed : L.structuralChange

def LTPMolecularCascadeClosed (L : LTPMolecularCascadePackage) : Prop :=
  L.cascadeActivation ∧ L.geneExpressionRegulation ∧ L.structuralChange

theorem ltp_molecular_cascade_closed_from_evidence (L : LTPMolecularCascadePackage)
    (E : LTPMolecularCascadeEvidence L) : LTPMolecularCascadeClosed L := by
  exact And.intro E.cascadeActivationClosed (And.intro E.geneExpressionRegulationClosed E.structuralChangeClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean