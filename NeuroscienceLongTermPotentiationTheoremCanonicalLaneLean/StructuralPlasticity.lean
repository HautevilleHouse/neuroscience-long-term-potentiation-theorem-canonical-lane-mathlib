import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure StructuralPlasticityModel where
  spineDensity : Type
  actinCytoskeleton : Type
  receptorTrafficking : Type
  spineEnlargement : Prop
  cytoskeletonReorganization : Prop
  ampaInsertion : Prop
  spineEnlargementTerm : spineEnlargement
  cytoskeletonReorganizationTerm : cytoskeletonReorganization
  ampaInsertionTerm : ampaInsertion

structure StructuralPlasticityEvidence (S : StructuralPlasticityModel) where
  spineEnlargementClosed : S.spineEnlargement
  cytoskeletonReorganizationClosed : S.cytoskeletonReorganization
  ampaInsertionClosed : S.ampaInsertion

def StructuralPlasticityClosed (S : StructuralPlasticityModel) : Prop :=
  S.spineEnlargement ∧ S.cytoskeletonReorganization ∧ S.ampaInsertion

theorem structural_plasticity_closed_from_evidence (S : StructuralPlasticityModel) (E : StructuralPlasticityEvidence S) :
    StructuralPlasticityClosed S := by
  exact And.intro E.spineEnlargementClosed (And.intro E.cytoskeletonReorganizationClosed E.ampaInsertionClosed)

end HautevilleHouse
end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean