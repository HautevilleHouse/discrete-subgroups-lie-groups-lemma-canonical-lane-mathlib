import canonicalLaneMathlib.AdmissibleClass
import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Subgroup Structure Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure SubgroupStructurePackage (G : DiscreteSubgroupObject) where
  ambientLieGroup : Type u
  lieGroupStructure : LieGroup ambientLieGroup
  subgroup : Set ambientLieGroup
  isSubgroup : Subgroup ambientLieGroup subgroup
  isClosed : IsClosed (subgroup : Set ambientLieGroup)
  isDiscrete : DiscreteTopology (Subtype subgroup)
  finitelyGenerated : Prop
  latticeProperty : Prop

def SubgroupStructureClosed {G : DiscreteSubgroupObject} (S : SubgroupStructurePackage G) : Prop :=
  S.finitelyGenerated ∧ S.latticeProperty

theorem subgroup_structure_closed_from_package
    {G : DiscreteSubgroupObject} (S : SubgroupStructurePackage G) (h : SubgroupStructureClosed S) : SubgroupStructureClosed S := h

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
