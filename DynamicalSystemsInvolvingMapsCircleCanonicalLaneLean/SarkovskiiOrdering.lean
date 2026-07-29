import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure SarkovskiiOrderingPackage where
  continuousMapOnInterval : Prop
  periodThreeImpliesChaos : Prop
  periodicPointsOfAllOrders : Prop
  topologicalEntropyPositive : Prop

structure SarkovskiiOrderingEvidence (S : SarkovskiiOrderingPackage) where
  continuousMapOnIntervalClosed : S.continuousMapOnInterval
  periodThreeImpliesChaosClosed : S.periodThreeImpliesChaos
  periodicPointsOfAllOrdersClosed : S.periodicPointsOfAllOrders
  topologicalEntropyPositiveClosed : S.topologicalEntropyPositive

def SarkovskiiOrderingClosed (S : SarkovskiiOrderingPackage) : Prop :=
  S.continuousMapOnInterval ∧ S.periodThreeImpliesChaos ∧ S.periodicPointsOfAllOrders ∧ S.topologicalEntropyPositive

theorem sarkovskii_ordering_closed_from_evidence
    (S : SarkovskiiOrderingPackage) (E : SarkovskiiOrderingEvidence S) :
    SarkovskiiOrderingClosed S := by
  exact And.intro E.continuousMapOnIntervalClosed
    (And.intro E.periodThreeImpliesChaosClosed
      (And.intro E.periodicPointsOfAllOrdersClosed E.topologicalEntropyPositiveClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
