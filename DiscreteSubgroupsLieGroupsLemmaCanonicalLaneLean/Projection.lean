import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def discreteSubgroupProjection : Projection DiscreteSubgroupEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem discrete_subgroup_projection_idempotent (x : DiscreteSubgroupEndgameState) :
    discreteSubgroupProjection.toFun (discreteSubgroupProjection.toFun x) = discreteSubgroupProjection.toFun x := by
  exact discreteSubgroupProjection.idempotent x

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse