import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.LieAlgebraPackage

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure DiscreteSubgroupStructure {G : LieGroupPackage} where
  subgroup : Set G.lieGroup
  discreteTopology : Prop
  subgroupClosed : subgroup
  discreteClosed : discreteTopology

def DiscreteSubgroupClosed {G : LieGroupPackage} (D : DiscreteSubgroupStructure G) : Prop :=
  D.subgroupClosed ∧ D.discreteClosed

structure AdmittedObject where
  space : LieGroupPackage
  discreteSubgroup : DiscreteSubgroupStructure space
  conclusion : DiscreteSubgroupClosed discreteSubgroup

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse