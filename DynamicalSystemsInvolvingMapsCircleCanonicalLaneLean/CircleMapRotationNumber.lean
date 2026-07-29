import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure CircleMapRotationNumberPackage where
  circle : Type u
  topology : TopologicalSpace circle
  map : circle → circle
  rotationNumber : ℝ
  rotationNumberExists : Prop
  rotationNumberIndependentOfBasepoint : Prop
  liftMapExists : Prop

structure CircleMapRotationNumberEvidence (R : CircleMapRotationNumberPackage) where
  rotationNumberExistsClosed : R.rotationNumberExists
  rotationNumberIndependentOfBasepointClosed : R.rotationNumberIndependentOfBasepoint
  liftMapExistsClosed : R.liftMapExists

def CircleMapRotationNumberClosed (R : CircleMapRotationNumberPackage) : Prop :=
  R.rotationNumberExists ∧ R.rotationNumberIndependentOfBasepoint ∧ R.liftMapExists

theorem circle_map_rotation_number_closed_from_evidence
    (R : CircleMapRotationNumberPackage) (E : CircleMapRotationNumberEvidence R) :
    CircleMapRotationNumberClosed R := by
  exact And.intro E.rotationNumberExistsClosed
    (And.intro E.rotationNumberIndependentOfBasepointClosed E.liftMapExistsClosed)

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
