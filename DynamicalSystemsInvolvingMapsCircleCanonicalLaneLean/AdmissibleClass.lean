import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean

structure CircleMapAdmittedObject where
  circleCarrier : Type
  circleTopology : TopologicalSpace circleCarrier
  mapToCircle : circleCarrier → circleCarrier
  continuousMap : Prop
  degreeInteger : ℤ
  conclusion : continuousMap

structure AdmissibleClass where
  object : CircleMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CircleMapWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsCircleCanonicalLaneLean
end HautevilleHouse