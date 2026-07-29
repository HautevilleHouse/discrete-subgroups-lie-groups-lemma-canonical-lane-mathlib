import canonicalLaneMathlib.AdmissibleClass
import Mathlib.GroupTheory.Subgroup.Basic

/-!
# Discrete Subgroups Lie Groups Lemma Admissible Class
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiscreteSubgroupObject where
  ambientLieGroup : Type u
  lieGroupStructure : LieGroup ambientLieGroup
  subgroup : Set ambientLieGroup
  isSubgroup : Subgroup ambientLieGroup subgroup
  discreteTopology : DiscreteTopology (Subtype subgroup)
  closedDiscrete : IsClosed (subgroup : Set ambientLieGroup)
  conclusion : Prop

structure AdmissibleClass where
  object : DiscreteSubgroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
