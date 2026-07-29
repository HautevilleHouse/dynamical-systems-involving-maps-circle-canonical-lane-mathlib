import DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean.RotationNumber

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure DenjoyTheoremPackage where
  rotationNumber : RotationNumberPackage
  differentiableWithDerivativeOne : Prop
  minimalSetNonEmpty : Prop
  minimalSetIsCircle : Prop
  noWanderingIntervals : Prop

structure DenjoyTheoremEvidence (D : DenjoyTheoremPackage) where
  differentiableWithDerivativeOneClosed : D.differentiableWithDerivativeOne
  minimalSetNonEmptyClosed : D.minimalSetNonEmpty
  minimalSetIsCircleClosed : D.minimalSetIsCircle
  noWanderingIntervalsClosed : D.noWanderingIntervals

def DenjoyTheoremClosed (D : DenjoyTheoremPackage) : Prop :=
  D.differentiableWithDerivativeOne ∧ D.minimalSetNonEmpty ∧ D.minimalSetIsCircle ∧ D.noWanderingIntervals

theorem denjoy_theorem_closed_from_evidence (D : DenjoyTheoremPackage) (E : DenjoyTheoremEvidence D) :
    DenjoyTheoremClosed D := by
  exact And.intro E.differentiableWithDerivativeOneClosed
    (And.intro E.minimalSetNonEmptyClosed
      (And.intro E.minimalSetIsCircleClosed E.noWanderingIntervalsClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse