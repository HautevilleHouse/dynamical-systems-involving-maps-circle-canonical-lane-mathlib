import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure ArnoldTonguePackage where
  frequencyLocking : Prop
  rotationNumberRational : Prop
  parameterRegion : Prop
  devilStaircase : Prop

structure ArnoldTongueEvidence (A : ArnoldTonguePackage) where
  frequencyLockingClosed : A.frequencyLocking
  rotationNumberRationalClosed : A.rotationNumberRational
  parameterRegionClosed : A.parameterRegion
  devilStaircaseClosed : A.devilStaircase

def ArnoldTongueClosed (A : ArnoldTonguePackage) : Prop :=
  A.frequencyLocking ∧ A.rotationNumberRational ∧ A.parameterRegion ∧ A.devilStaircase

theorem arnold_tongue_closed_from_evidence (A : ArnoldTonguePackage)
    (E : ArnoldTongueEvidence A) : ArnoldTongueClosed A := by
  exact And.intro E.frequencyLockingClosed
    (And.intro E.rotationNumberRationalClosed
      (And.intro E.parameterRegionClosed E.devilStaircaseClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
