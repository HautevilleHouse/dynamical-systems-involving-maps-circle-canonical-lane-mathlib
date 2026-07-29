import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure CircleMapPackage where
  circle : Type u
  topology : TopologicalSpace circle
  hausdorff : Prop
  compact : Prop
  connected : Prop
  groupStructure : AddGroup circle
  continuousGroupOps : Prop

structure CircleMapEvidence (C : CircleMapPackage) where
  hausdorffClosed : C.hausdorff
  compactClosed : C.compact
  connectedClosed : C.connected
  continuousGroupOpsClosed : C.continuousGroupOps

def CircleMapClosed (C : CircleMapPackage) : Prop :=
  C.hausdorff ∧ C.compact ∧ C.connected ∧ C.continuousGroupOps

theorem circle_map_closed_from_evidence (C : CircleMapPackage) (E : CircleMapEvidence C) :
    CircleMapClosed C := by
  exact And.intro E.hausdorffClosed (And.intro E.compactClosed (And.intro E.connectedClosed E.continuousGroupOpsClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse