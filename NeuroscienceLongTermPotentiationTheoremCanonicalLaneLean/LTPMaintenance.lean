import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure LTPMaintenancePackage (L : LTPInductionPackage) where
  persistentKinaseActivity : Prop
  ampaReceptorInsertion : Prop
  structuralChanges : Prop
  proteinSynthesis : Prop
  longLastingPotentiation : Prop

structure LTPMaintenanceEvidence {L : LTPInductionPackage} (M : LTPMaintenancePackage L) where
  persistentKinaseActivityClosed : M.persistentKinaseActivity
  ampaReceptorInsertionClosed : M.ampaReceptorInsertion
  structuralChangesClosed : M.structuralChanges
  proteinSynthesisClosed : M.proteinSynthesis
  longLastingPotentiationClosed : M.longLastingPotentiation

def LTPMaintenanceClosed {L : LTPInductionPackage} (M : LTPMaintenancePackage L) : Prop :=
  M.persistentKinaseActivity ∧ M.ampaReceptorInsertion ∧ M.structuralChanges ∧
  M.proteinSynthesis ∧ M.longLastingPotentiation

theorem ltp_maintenance_closed_from_evidence {L : LTPInductionPackage} (M : LTPMaintenancePackage L) (E : LTPMaintenanceEvidence M) : LTPMaintenanceClosed M :=
  And.intro E.persistentKinaseActivityClosed (And.intro E.ampaReceptorInsertionClosed (And.intro E.structuralChangesClosed (And.intro E.proteinSynthesisClosed E.longLastingPotentiationClosed)))

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
