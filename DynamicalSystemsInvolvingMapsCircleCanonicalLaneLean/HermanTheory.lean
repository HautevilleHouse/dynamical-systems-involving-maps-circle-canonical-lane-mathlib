import DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean.DenjoyTheorem

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure HermanTheoryPackage where
  denjoy : DenjoyTheoremPackage
  analyticCircleMap : Prop
  rotationDiophantine : Prop
  analyticConjugationExists : Prop
  endsInLinearRotation : Prop

structure HermanTheoryEvidence (H : HermanTheoryPackage) where
  analyticCircleMapClosed : H.analyticCircleMap
  rotationDiophantineClosed : H.rotationDiophantine
  analyticConjugationExistsClosed : H.analyticConjugationExists
  endsInLinearRotationClosed : H.endsInLinearRotation

def HermanTheoryClosed (H : HermanTheoryPackage) : Prop :=
  H.analyticCircleMap ∧ H.rotationDiophantine ∧ H.analyticConjugationExists ∧ H.endsInLinearRotation

theorem herman_theory_closed_from_evidence (H : HermanTheoryPackage) (E : HermanTheoryEvidence H) :
    HermanTheoryClosed H := by
  exact And.intro E.analyticCircleMapClosed
    (And.intro E.rotationDiophantineClosed
      (And.intro E.analyticConjugationExistsClosed E.endsInLinearRotationClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse