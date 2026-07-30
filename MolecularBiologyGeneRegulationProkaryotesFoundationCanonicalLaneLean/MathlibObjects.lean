import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure RegulatoryGene where
  geneID : String
  regulatorType : String
  targetOperon : String
  bindingAffinity : Prop
  expressionLevel : Float
  activationRepression : String

def GeneRegulationWitnessClosed (O : GeneRegulationAdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse