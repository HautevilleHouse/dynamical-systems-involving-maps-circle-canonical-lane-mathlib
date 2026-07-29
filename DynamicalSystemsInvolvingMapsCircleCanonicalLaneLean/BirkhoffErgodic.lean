import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure BirkhoffErgodicPackage where
  invariantMeasure : Type u
  ergodicDecomposition : Prop
  timeAveragesExist : Prop
  uniqueErgodicComponent : Prop

structure BirkhoffErgodicEvidence (B : BirkhoffErgodicPackage) where
  invariantMeasureClosed : B.invariantMeasure
  ergodicDecompositionClosed : B.ergodicDecomposition
  timeAveragesExistClosed : B.timeAveragesExist
  uniqueErgodicComponentClosed : B.uniqueErgodicComponent

def BirkhoffErgodicClosed (B : BirkhoffErgodicPackage) : Prop :=
  B.invariantMeasure ∧ B.ergodicDecomposition ∧ B.timeAveragesExist ∧ B.uniqueErgodicComponent

theorem birkhoff_ergodic_closed_from_evidence (B : BirkhoffErgodicPackage) (E : BirkhoffErgodicEvidence B) :
    BirkhoffErgodicClosed B := by
  exact And.intro E.invariantMeasureClosed (And.intro E.ergodicDecompositionClosed
    (And.intro E.timeAveragesExistClosed E.uniqueErgodicComponentClosed))

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse