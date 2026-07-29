import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsCircle.RotationNumber

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircle

structure DenjoyTheoryPackage {C : CircleHomeomorphismsPackage}
    {R : RotationNumberPackage C} where
  irrationalRotationNumber : Prop
  minimality : Prop
  topologicalConjugacy : Prop

structure DenjoyTheoryEvidence {C : CircleHomeomorphismsPackage}
    {R : RotationNumberPackage C} (D : DenjoyTheoryPackage C R) where
  irrationalRotationNumberClosed : D.irrationalRotationNumber
  minimalityClosed : D.minimality
  topologicalConjugacyClosed : D.topologicalConjugacy

def DenjoyTheoryClosed {C : CircleHomeomorphismsPackage}
    {R : RotationNumberPackage C} (D : DenjoyTheoryPackage C R) : Prop :=
  D.irrationalRotationNumber ∧ D.minimality ∧ D.topologicalConjugacy

theorem denjoy_theory_closed_from_evidence {C : CircleHomeomorphismsPackage}
    {R : RotationNumberPackage C} (D : DenjoyTheoryPackage C R)
    (E : DenjoyTheoryEvidence D) : DenjoyTheoryClosed D := by
  exact And.intro E.irrationalRotationNumberClosed
    (And.intro E.minimalityClosed E.topologicalConjugacyClosed)

end DynamicalSystemsInvolvingMapsCircle
end HautevilleHouse