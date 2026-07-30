import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure PhylogeneticTreePackage where
  speciesSet : Type u
  distanceMetric : speciesSet → speciesSet → Prop
  treeTopology : Type v
  branchLengths : treeTopology → Prop
  likelihoodScore : Prop
  treeTopologyTerm : treeTopology
  likelihoodScoreTerm : likelihoodScore

structure PhylogeneticTreeEvidence (P : PhylogeneticTreePackage) where
  distanceMetricClosed : P.distanceMetric
  likelihoodScoreClosed : P.likelihoodScore

def PhylogeneticTreeClosed (P : PhylogeneticTreePackage) : Prop :=
  P.distanceMetric ∧ P.likelihoodScore

theorem phylogenetic_tree_closed_from_evidence
    (P : PhylogeneticTreePackage) (E : PhylogeneticTreeEvidence P) :
    PhylogeneticTreeClosed P := by
  exact And.intro E.distanceMetricClosed E.likelihoodScoreClosed

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse