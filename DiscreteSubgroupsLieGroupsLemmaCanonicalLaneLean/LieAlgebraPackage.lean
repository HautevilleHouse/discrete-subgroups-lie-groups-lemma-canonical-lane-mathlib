import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure LieAlgebraPackage where
  lieAlgebra : Type u
  bracket : lieAlgebra → lieAlgebra → lieAlgebra
  jacobiIdentity : Prop
  bracketClosed : jacobiIdentity

structure LieGroupPackage where
  lieGroup : Type u
  groupStructure : Group lieGroup
  smoothStructure : TopologicalSpace lieGroup
  analyticManifold : Prop
  analyticClosed : analyticManifold

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse