import HautevilleHouse.DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.DiscreteSubgroupObjects

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure LatticePackage (D : DiscreteSubgroupData) where
  covolumeFinite : Prop
  ZariskiDense : Prop
  superrigidityConnected : Prop
  margulisNormalSubgroup : Prop

structure LatticeEvidence {D : DiscreteSubgroupData} (L : LatticePackage D) where
  covolumeFiniteClosed : L.covolumeFinite
  ZariskiDenseClosed : L.ZariskiDense
  superrigidityConnectedClosed : L.superrigidityConnected
  margulisNormalSubgroupClosed : L.margulisNormalSubgroup

def LatticeClosed {D : DiscreteSubgroupData} (L : LatticePackage D) : Prop :=
  L.covolumeFinite ∧ L.ZariskiDense ∧ L.superrigidityConnected ∧ L.margulisNormalSubgroup

theorem lattice_closed_from_evidence
    {D : DiscreteSubgroupData} (L : LatticePackage D) (E : LatticeEvidence L) :
    LatticeClosed L := by
  exact And.intro E.covolumeFiniteClosed
    (And.intro E.ZariskiDenseClosed
      (And.intro E.superrigidityConnectedClosed E.margulisNormalSubgroupClosed))

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
