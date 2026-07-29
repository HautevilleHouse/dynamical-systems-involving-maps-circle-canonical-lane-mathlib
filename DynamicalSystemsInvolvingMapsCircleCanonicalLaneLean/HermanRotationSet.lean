import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.RotationNumber

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure HermanRotationSetPackage (R : CircleMapRotationNumberPackage) where
  rotationSet : Set ℝ
  rotationSetNonempty : Prop
  rotationSetClosed : Prop
  rotationSetInterval : Prop
  rotationNumberInSet : Prop

structure HermanRotationSetEvidence {R : CircleMapRotationNumberPackage} (H : HermanRotationSetPackage R) where
  rotationSetNonemptyClosed : H.rotationSetNonempty
  rotationSetClosedClosed : H.rotationSetClosed
  rotationSetIntervalClosed : H.rotationSetInterval
  rotationNumberInSetClosed : H.rotationNumberInSet

def HermanRotationSetClosed {R : CircleMapRotationNumberPackage} (H : HermanRotationSetPackage R) : Prop :=
  H.rotationSetNonempty ∧ H.rotationSetClosed ∧ H.rotationSetInterval ∧ H.rotationNumberInSet

theorem herman_rotation_set_closed_from_evidence
    {R : CircleMapRotationNumberPackage} (H : HermanRotationSetPackage R)
    (E : HermanRotationSetEvidence H) : HermanRotationSetClosed H := by
  exact And.intro E.rotationSetNonemptyClosed
    (And.intro E.rotationSetClosedClosed
      (And.intro E.rotationSetIntervalClosed E.rotationNumberInSetClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
