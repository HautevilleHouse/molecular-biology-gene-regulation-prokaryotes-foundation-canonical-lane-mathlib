import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure PhylogeneticsPackage where
  taxa : List String
  distanceMatrix : Prop
  treeTopology : Prop
  branchLengths : Prop
  evolutionaryModel : Prop

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.distanceMatrix ∧ P.treeTopology ∧ P.branchLengths ∧ P.evolutionaryModel

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  distanceMatrixClosed : P.distanceMatrix
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  evolutionaryModelClosed : P.evolutionaryModel

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) : PhylogeneticsClosed P := by
  exact And.intro E.distanceMatrixClosed (And.intro E.treeTopologyClosed (And.intro E.branchLengthsClosed E.evolutionaryModelClosed))

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse
