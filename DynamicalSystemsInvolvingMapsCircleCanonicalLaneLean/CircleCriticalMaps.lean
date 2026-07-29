import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircle.CircleHomeomorphisms

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircle

structure CircleCriticalMapsPackage {C : CircleHomeomorphismsPackage} where
  criticalPoints : Set C.circle
  topologicalEntropy : ℝ
  kneadingSequence : Prop

structure CircleCriticalMapsEvidence {C : CircleHomeomorphismsPackage}
    (M : CircleCriticalMapsPackage C) where
  topologicalEntropyPositive : M.topologicalEntropy > 0
  kneadingSequenceClosed : M.kneadingSequence

def CircleCriticalMapsClosed {C : CircleHomeomorphismsPackage}
    (M : CircleCriticalMapsPackage C) : Prop :=
  M.topologicalEntropy > 0 ∧ M.kneadingSequence

theorem circle_critical_maps_closed_from_evidence {C : CircleHomeomorphismsPackage}
    (M : CircleCriticalMapsPackage C) (E : CircleCriticalMapsEvidence M) :
    CircleCriticalMapsClosed M := by
  exact And.intro E.topologicalEntropyPositive E.kneadingSequenceClosed

end DynamicalSystemsInvolvingMapsCircle
end HautevilleHouse