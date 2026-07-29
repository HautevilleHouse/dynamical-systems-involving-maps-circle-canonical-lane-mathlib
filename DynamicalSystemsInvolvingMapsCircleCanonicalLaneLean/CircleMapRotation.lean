import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure CircleMapRotationPackage where
  rotationNumber : Prop
  topologicalDegree : Prop
  liftExists : Prop
  rotationNumberExists : Prop
  circleMapType : Type

structure CircleMapRotationEvidence (R : CircleMapRotationPackage) where
  rotationNumberClosed : R.rotationNumber
  topologicalDegreeClosed : R.topologicalDegree
  liftExistsClosed : R.liftExists
  rotationNumberExistsClosed : R.rotationNumberExists

def CircleMapRotationClosed (R : CircleMapRotationPackage) : Prop :=
  R.rotationNumber ∧ R.topologicalDegree ∧ R.liftExists ∧ R.rotationNumberExists

theorem circle_map_rotation_closed_from_evidence (R : CircleMapRotationPackage)
    (E : CircleMapRotationEvidence R) : CircleMapRotationClosed R := by
  exact And.intro E.rotationNumberClosed (And.intro E.topologicalDegreeClosed
    (And.intro E.liftExistsClosed E.rotationNumberExistsClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
