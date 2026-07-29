import HautevilleHouse.DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean.LatticeStructure

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure SuperrigidityPackage {D : DiscreteSubgroupData} (L : LatticePackage D) where
  representationExtension : Prop
  cohomologyVanishing : Prop
  arithmeticityConsequence : Prop

structure SuperrigidityEvidence {D : DiscreteSubgroupData}
    {L : LatticePackage D} (S : SuperrigidityPackage L) where
  representationExtensionClosed : S.representationExtension
  cohomologyVanishingClosed : S.cohomologyVanishing
  arithmeticityConsequenceClosed : S.arithmeticityConsequence

def SuperrigidityClosed {D : DiscreteSubgroupData}
    {L : LatticePackage D} (S : SuperrigidityPackage L) : Prop :=
  S.representationExtension ∧ S.cohomologyVanishing ∧ S.arithmeticityConsequence

theorem superrigidity_closed_from_evidence
    {D : DiscreteSubgroupData} {L : LatticePackage D}
    (S : SuperrigidityPackage L) (E : SuperrigidityEvidence S) :
    SuperrigidityClosed S := by
  exact And.intro E.representationExtensionClosed
    (And.intro E.cohomologyVanishingClosed E.arithmeticityConsequenceClosed)

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse
