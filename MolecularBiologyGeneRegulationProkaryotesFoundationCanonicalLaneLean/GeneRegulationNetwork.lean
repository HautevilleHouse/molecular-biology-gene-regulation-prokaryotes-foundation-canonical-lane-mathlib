import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure GeneRegulationNetworkPackage where
  genes : List String
  regulatoryInteractions : Prop
  transcriptionFactors : Prop
  promoterRegions : Prop
  operonStructure : Prop
  regulatoryLogic : Prop

structure GeneRegulationNetworkEvidence (G : GeneRegulationNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  transcriptionFactorsClosed : G.transcriptionFactors
  promoterRegionsClosed : G.promoterRegions
  operonStructureClosed : G.operonStructure
  regulatoryLogicClosed : G.regulatoryLogic

def GeneRegulationNetworkClosed (G : GeneRegulationNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.transcriptionFactors ∧ G.promoterRegions ∧ G.operonStructure ∧ G.regulatoryLogic

theorem gene_regulation_network_closed_from_evidence (G : GeneRegulationNetworkPackage) (E : GeneRegulationNetworkEvidence G) : GeneRegulationNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed (And.intro E.transcriptionFactorsClosed (And.intro E.promoterRegionsClosed (And.intro E.operonStructureClosed E.regulatoryLogicClosed)))

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse
