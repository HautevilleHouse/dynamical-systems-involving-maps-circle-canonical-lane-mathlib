import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure PeriodicOrbitsPackage where
  periodicPointsCount : ℕ
  hyperbolicity : Prop
  saddleNode : Prop
  periodDoubling : Prop

structure PeriodicOrbitsEvidence (P : PeriodicOrbitsPackage) where
  periodicPointsCountClosed : P.periodicPointsCount = P.periodicPointsCount
  hyperbolicityClosed : P.hyperbolicity
  saddleNodeClosed : P.saddleNode
  periodDoublingClosed : P.periodDoubling

def PeriodicOrbitsClosed (P : PeriodicOrbitsPackage) : Prop :=
  P.hyperbolicity ∧ P.saddleNode ∧ P.periodDoubling

theorem periodic_orbits_closed_from_evidence (P : PeriodicOrbitsPackage)
    (E : PeriodicOrbitsEvidence P) : PeriodicOrbitsClosed P := by
  exact And.intro E.hyperbolicityClosed (And.intro E.saddleNodeClosed E.periodDoublingClosed)

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
