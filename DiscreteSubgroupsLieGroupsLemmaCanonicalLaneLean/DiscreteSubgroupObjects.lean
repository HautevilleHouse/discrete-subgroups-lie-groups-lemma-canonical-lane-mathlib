import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure LieGroupData where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Type
  groupStructure : Group carrier

structure DiscreteSubgroupData where
  ambientGroup : LieGroupData
  subgroupSet : Set ambientGroup.carrier
  discreteTopology : TopologicalSpace subgroupSet
  subgroupIsClosed : Prop
  subgroupIsDiscrete : Prop
  subgroupIsClosedTerm : subgroupIsClosed
  subgroupIsDiscreteTerm : subgroupIsDiscrete

structure DiscreteSubgroupAdmittedObject where
  data : DiscreteSubgroupData
  conclusion : Prop

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
