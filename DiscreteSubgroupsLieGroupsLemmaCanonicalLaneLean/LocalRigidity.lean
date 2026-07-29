import AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure LocalRigidityPackage where
  discreteSubgroup : AdmittedObject
  infinitesimalDeformations : Prop
  vanishingFirstCohomology : Prop
  localRigidityConclusion : Prop

structure LocalRigidityEvidence (L : LocalRigidityPackage) where
  infinitesimalDeformationsClosed : L.infinitesimalDeformations
  vanishingFirstCohomologyClosed : L.vanishingFirstCohomology
  localRigidityConclusionClosed : L.localRigidityConclusion

def LocalRigidityClosed (L : LocalRigidityPackage) : Prop :=
  L.infinitesimalDeformations ∧ L.vanishingFirstCohomology ∧ L.localRigidityConclusion

theorem local_rigidity_closed_from_evidence (L : LocalRigidityPackage)
    (E : LocalRigidityEvidence L) : LocalRigidityClosed L := by
  exact And.intro E.infinitesimalDeformationsClosed (And.intro E.vanishingFirstCohomologyClosed E.localRigidityConclusionClosed)

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse