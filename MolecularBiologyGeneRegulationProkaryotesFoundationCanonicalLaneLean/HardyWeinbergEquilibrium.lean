import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure HardyWeinbergEquilibriumPackage where
  populationType : Type u
  alleleFrequencies : populationType → Prop
  genotypeFrequencies : populationType → populationType → Prop
  randomMating : Prop
  noEvolutionaryForces : Prop
  equilibriumCondition : Prop
  equilibriumConditionTerm : equilibriumCondition

structure HardyWeinbergEquilibriumEvidence (H : HardyWeinbergEquilibriumPackage) where
  randomMatingClosed : H.randomMating
  noEvolutionaryForcesClosed : H.noEvolutionaryForces
  equilibriumConditionClosed : H.equilibriumCondition

def HardyWeinbergEquilibriumClosed (H : HardyWeinbergEquilibriumPackage) : Prop :=
  H.randomMating ∧ H.noEvolutionaryForces ∧ H.equilibriumCondition

theorem hardy_weinberg_equilibrium_closed_from_evidence
    (H : HardyWeinbergEquilibriumPackage) (E : HardyWeinbergEquilibriumEvidence H) :
    HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.randomMatingClosed (And.intro E.noEvolutionaryForcesClosed E.equilibriumConditionClosed)

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse