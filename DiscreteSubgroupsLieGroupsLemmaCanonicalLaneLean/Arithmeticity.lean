import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure ArithmeticityPackage {O : DiscreteSubgroupObject}
    (L : LatticeStructurePackage O) where
  commensuratorDense : Prop
  integralStructureExists : Prop
  superrigidityInput : Prop
  margulisArithmeticity : Prop

structure ArithmeticityEvidence {O : DiscreteSubgroupObject}
    {L : LatticeStructurePackage O} (A : ArithmeticityPackage L) where
  commensuratorDenseClosed : A.commensuratorDense
  integralStructureExistsClosed : A.integralStructureExists
  superrigidityInputClosed : A.superrigidityInput
  margulisArithmeticityClosed : A.margulisArithmeticity

def ArithmeticityClosed {O : DiscreteSubgroupObject}
    {L : LatticeStructurePackage O} (A : ArithmeticityPackage L) : Prop :=
  A.commensuratorDense ∧ A.integralStructureExists ∧
  A.superrigidityInput ∧ A.margulisArithmeticity

theorem arithmeticity_closed_from_evidence
    {O : DiscreteSubgroupObject} {L : LatticeStructurePackage O}
    (A : ArithmeticityPackage L) (E : ArithmeticityEvidence A) :
    ArithmeticityClosed A := by
  exact And.intro E.commensuratorDenseClosed
    (And.intro E.integralStructureExistsClosed
      (And.intro E.superrigidityInputClosed E.margulisArithmeticityClosed))

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse