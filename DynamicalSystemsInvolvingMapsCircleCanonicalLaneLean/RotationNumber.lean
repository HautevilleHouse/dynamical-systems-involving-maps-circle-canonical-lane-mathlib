import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircle.CircleHomeomorphisms

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircle

structure RotationNumberPackage {C : CircleHomeomorphismsPackage} where
  rotationNumber : C.circle → ℚ
  wellDefined : Prop
  continuousDependence : Prop

structure RotationNumberEvidence {C : CircleHomeomorphismsPackage}
    (R : RotationNumberPackage C) where
  wellDefinedClosed : R.wellDefined
  continuousDependenceClosed : R.continuousDependence

def RotationNumberClosed {C : CircleHomeomorphismsPackage}
    (R : RotationNumberPackage C) : Prop :=
  R.wellDefined ∧ R.continuousDependence

theorem rotation_number_closed_from_evidence {C : CircleHomeomorphismsPackage}
    (R : RotationNumberPackage C) (E : RotationNumberEvidence R) :
    RotationNumberClosed R := by
  exact And.intro E.wellDefinedClosed E.continuousDependenceClosed

end DynamicalSystemsInvolvingMapsCircle
end HautevilleHouse