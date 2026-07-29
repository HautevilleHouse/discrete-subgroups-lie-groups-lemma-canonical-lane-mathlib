import canonicalLaneMathlib.AdmissibleClass
import DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.SubgroupStructure

/-!
# Garland Integrability Package
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure GarlandIntegrabilityPackage {G : DiscreteSubgroupObject} (S : SubgroupStructurePackage G) where
  cohomologyVanishing : Prop
  garlandCondition : Prop
  integrabilityProof : Prop

def GarlandIntegrabilityClosed {G : DiscreteSubgroupObject} {S : SubgroupStructurePackage G} (P : GarlandIntegrabilityPackage S) : Prop :=
  P.cohomologyVanishing ∧ P.garlandCondition ∧ P.integrabilityProof

theorem garland_integrability_closed_from_package
    {G : DiscreteSubgroupObject} {S : SubgroupStructurePackage G}
    (P : GarlandIntegrabilityPackage S) (h : GarlandIntegrabilityClosed P) : GarlandIntegrabilityClosed P := h

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
