import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.RotationNumber

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure PoincareClassificationPackage (R : CircleMapRotationNumberPackage) where
  rotationNumberRational : Prop
  periodicPointsExist : Prop
  periodicPointsDense : Prop
  topologicalEntropyZero : Prop

structure PoincareClassificationEvidence {R : CircleMapRotationNumberPackage} (P : PoincareClassificationPackage R) where
  rotationNumberRationalClosed : P.rotationNumberRational
  periodicPointsExistClosed : P.periodicPointsExist
  periodicPointsDenseClosed : P.periodicPointsDense
  topologicalEntropyZeroClosed : P.topologicalEntropyZero

def PoincareClassificationClosed {R : CircleMapRotationNumberPackage} (P : PoincareClassificationPackage R) : Prop :=
  P.rotationNumberRational ∧ P.periodicPointsExist ∧ P.periodicPointsDense ∧ P.topologicalEntropyZero

theorem poincare_classification_closed_from_evidence
    {R : CircleMapRotationNumberPackage} (P : PoincareClassificationPackage R)
    (E : PoincareClassificationEvidence P) : PoincareClassificationClosed P := by
  exact And.intro E.rotationNumberRationalClosed
    (And.intro E.periodicPointsExistClosed
      (And.intro E.periodicPointsDenseClosed E.topologicalEntropyZeroClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
