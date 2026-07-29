import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircle.CircleHomeomorphisms

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircle

structure CircleMapsBifurcationPackage {C : CircleHomeomorphismsPackage} where
  parameterSpace : Type u
  bifurcationPoints : Set (C.circle × C.circle)
  stabilityChange : Prop
  periodDoubling : Prop

structure CircleMapsBifurcationEvidence {C : CircleHomeomorphismsPackage}
    (B : CircleMapsBifurcationPackage C) where
  stabilityChangeClosed : B.stabilityChange
  periodDoublingClosed : B.periodDoubling

def CircleMapsBifurcationClosed {C : CircleHomeomorphismsPackage}
    (B : CircleMapsBifurcationPackage C) : Prop :=
  B.stabilityChange ∧ B.periodDoubling

theorem circle_maps_bifurcation_closed_from_evidence {C : CircleHomeomorphismsPackage}
    (B : CircleMapsBifurcationPackage C) (E : CircleMapsBifurcationEvidence B) :
    CircleMapsBifurcationClosed B := by
  exact And.intro E.stabilityChangeClosed E.periodDoublingClosed

end DynamicalSystemsInvolvingMapsCircle
end HautevilleHouse