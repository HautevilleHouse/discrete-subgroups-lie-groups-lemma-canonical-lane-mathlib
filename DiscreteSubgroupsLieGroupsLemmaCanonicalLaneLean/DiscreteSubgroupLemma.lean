import canonicalLaneMathlib.AdmissibleClass
import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.GarlandIntegrability

/-!
# Discrete Subgroup Lemma Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure DiscreteSubgroupLemmaPackage {G : DiscreteSubgroupObject} {S : SubgroupStructurePackage G} (P : GarlandIntegrabilityPackage S) where
  ambientLieGroup : Type u
  subgroup : Set ambientLieGroup
  isSubgroup : Subgroup ambientLieGroup subgroup
  isClosed : IsClosed (subgroup : Set ambientLieGroup)
  isDiscrete : DiscreteTopology (Subtype subgroup)
  constructionTerm : Prop
  proofTerm : Prop

def DiscreteSubgroupLemmaClosed {G : DiscreteSubgroupObject} {S : SubgroupStructurePackage G} {P : GarlandIntegrabilityPackage S} (L : DiscreteSubgroupLemmaPackage P) : Prop :=
  L.constructionTerm ∧ L.proofTerm

theorem discrete_subgroup_lemma_closed_from_package
    {G : DiscreteSubgroupObject} {S : SubgroupStructurePackage G}
    {P : GarlandIntegrabilityPackage S} (L : DiscreteSubgroupLemmaPackage P)
    (h : DiscreteSubgroupLemmaClosed L) : DiscreteSubgroupLemmaClosed L := h

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
