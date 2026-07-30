import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure GeneRegulationProkaryotesPackage where
  operonModel : Prop
  promoterRecognition : Prop
  repressorBinding : Prop
  inducerEffect : Prop

structure GeneRegulationProkaryotesEvidence (G : GeneRegulationProkaryotesPackage) where
  operonModelClosed : G.operonModel
  promoterRecognitionClosed : G.promoterRecognition
  repressorBindingClosed : G.repressorBinding
  inducerEffectClosed : G.inducerEffect

def GeneRegulationProkaryotesClosed (G : GeneRegulationProkaryotesPackage) : Prop :=
  G.operonModel ∧ G.promoterRecognition ∧
  G.repressorBinding ∧ G.inducerEffect

theorem gene_regulation_prokaryotes_closed_from_evidence (G : GeneRegulationProkaryotesPackage) (E : GeneRegulationProkaryotesEvidence G) :
    GeneRegulationProkaryotesClosed G := by
  exact And.intro E.operonModelClosed
    (And.intro E.promoterRecognitionClosed
      (And.intro E.repressorBindingClosed E.inducerEffectClosed))

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse