import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure GeneRegulationAdmittedObject where
  genomeSequence : String
  operonStructure : String
  promoterRegion : String
  regulatorBindingSite : String
  regulationMechanism : String
  conclusion : Prop

structure ProkaryoteAdmissibleClass where
  object : GeneRegulationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ProkaryoteAdmissibleClass) : Prop :=
  GeneRegulationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse