import canonicalLaneMathlib.AdmissibleClass
import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.BridgeLemmas
import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

def ConstrainedDiscreteSubgroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_subgroup_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteSubgroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
