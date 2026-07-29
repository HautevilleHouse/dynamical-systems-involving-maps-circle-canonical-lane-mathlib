import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure RotationNumberPackage where
  rotationNumberDefined : Prop
  rationalRotation : Prop
  irrationalRotation : Prop
  topologicalConjugacy : Prop

structure RotationNumberEvidence (R : RotationNumberPackage) where
  rotationNumberDefinedClosed : R.rotationNumberDefined
  rationalRotationClosed : R.rationalRotation
  irrationalRotationClosed : R.irrationalRotation
  topologicalConjugacyClosed : R.topologicalConjugacy

def RotationNumberClosed (R : RotationNumberPackage) : Prop :=
  R.rotationNumberDefined ∧ R.rationalRotation ∧ R.irrationalRotation ∧ R.topologicalConjugacy

theorem rotation_number_closed_from_evidence (R : RotationNumberPackage)
    (E : RotationNumberEvidence R) : RotationNumberClosed R := by
  exact And.intro E.rotationNumberDefinedClosed (And.intro E.rationalRotationClosed
    (And.intro E.irrationalRotationClosed E.topologicalConjugacyClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
