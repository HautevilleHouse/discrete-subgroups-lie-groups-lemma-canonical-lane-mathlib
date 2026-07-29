import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.DiscreteSubgroupStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure LatticeInLieGroup {G : LieGroupPackage} (D : DiscreteSubgroupStructure G) where
  covolumeFinite : Prop
  latticeProperty : Prop
  covolumeFiniteClosed : covolumeFinite
  latticePropertyClosed : latticeProperty

def LatticeClosed {G : LieGroupPackage} {D : DiscreteSubgroupStructure G} (L : LatticeInLieGroup D) : Prop :=
  L.covolumeFinite ∧ L.latticeProperty

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse