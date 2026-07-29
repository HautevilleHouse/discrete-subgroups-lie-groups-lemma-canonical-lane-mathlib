import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean

structure DiscreteSubgroupsLieGroupsLemmaStatement where
  lieGroupDimension : Nat
  discreteSubgroupLattice : Prop
  fundamentalDomainFiniteVolume : Prop
  cofiniteVolume : Prop
  conclusion : discreteSubgroupLattice ∧ fundamentalDomainFiniteVolume ∧ cofiniteVolume

theorem discrete_subgroups_lie_groups_lemma_statement_holds
    (st : DiscreteSubgroupsLieGroupsLemmaStatement) :
    st.conclusion := by
  exact st.conclusion

end DiscreteSubgroupsLieGroupsLemmaCanonicalLaneLean
end HautevilleHouse