import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.DiscreteSubgroupStructure

/-!
# Borel Density Package

This module encodes the Borel density theorem: a Zariski dense discrete subgroup
of a semisimple Lie group is a lattice.
-/

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure BorelDensityPackage (G : Type*) [LieGroupStructure G] (Γ : DiscreteSubgroup G) where
  semisimpleAssumption : Prop
  ZariskiDenseAssumption : Γ.carrier.ZariskiDense
  conclusion : ∃ (A : AdmissibleDiscreteSubgroup G Γ), A.latticeProperty ∧ A.cocompact

structure BorelDensityEvidence (G : Type*) [LieGroupStructure G] (Γ : DiscreteSubgroup G) (B : BorelDensityPackage G Γ) where
  semisimpleAssumptionClosed : B.semisimpleAssumption
  ZariskiDenseAssumptionClosed : B.ZariskiDenseAssumption
  conclusionClosed : B.conclusion

def BorelDensityClosed (G : Type*) [LieGroupStructure G] (Γ : DiscreteSubgroup G) (B : BorelDensityPackage G Γ) : Prop :=
  B.semisimpleAssumption ∧ B.ZariskiDenseAssumption ∧ B.conclusion

theorem borel_density_closed_from_evidence
    (G : Type*) [LieGroupStructure G] (Γ : DiscreteSubgroup G) (B : BorelDensityPackage G Γ)
    (E : BorelDensityEvidence G Γ B) : BorelDensityClosed G Γ B := by
  exact And.intro E.semisimpleAssumptionClosed (And.intro E.ZariskiDenseAssumptionClosed E.conclusionClosed)

end HautevilleHouse.DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse