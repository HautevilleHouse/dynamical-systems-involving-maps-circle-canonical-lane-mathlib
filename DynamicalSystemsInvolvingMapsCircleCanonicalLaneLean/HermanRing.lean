import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure HermanRingPackage where
  analyticLinearization : Prop
  brjunoCondition : Prop
  siegelDisk : Prop
  criticalPoint : Prop

structure HermanRingEvidence (H : HermanRingPackage) where
  analyticLinearizationClosed : H.analyticLinearization
  brjunoConditionClosed : H.brjunoCondition
  siegelDiskClosed : H.siegelDisk
  criticalPointClosed : H.criticalPoint

def HermanRingClosed (H : HermanRingPackage) : Prop :=
  H.analyticLinearization ∧ H.brjunoCondition ∧ H.siegelDisk ∧ H.criticalPoint

theorem herman_ring_closed_from_evidence (H : HermanRingPackage)
    (E : HermanRingEvidence H) : HermanRingClosed H := by
  exact And.intro E.analyticLinearizationClosed
    (And.intro E.brjunoConditionClosed
      (And.intro E.siegelDiskClosed E.criticalPointClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse
