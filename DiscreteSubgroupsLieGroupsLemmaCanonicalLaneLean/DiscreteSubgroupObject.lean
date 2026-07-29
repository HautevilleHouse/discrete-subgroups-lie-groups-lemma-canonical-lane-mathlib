import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure DiscreteSubgroupObject where
  group : Type u
  topology : TopologicalSpace group
  subgroup : Set group
  discrete : Prop
  closed : Prop
  conclusion : discrete ∧ closed

structure DiscreteSubgroupEndgameState where
  object : DiscreteSubgroupObject

def DiscreteSubgroupClosed (O : DiscreteSubgroupObject) : Prop :=
  O.discrete ∧ O.closed

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse