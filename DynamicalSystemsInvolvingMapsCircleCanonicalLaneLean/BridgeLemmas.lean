import DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CircleMapWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse