import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure OperonPackage where
  promoterRegion : Prop
  operatorSite : Prop
  repressorProtein : Prop
  inducerMolecule : Prop
  structuralGenes : Prop
  rnapBinding : Prop
  transcriptionInitiation : Prop
  repressionMechanism : Prop
  inductionMechanism : Prop
  basalExpression : Prop

structure OperonEvidence (O : OperonPackage) where
  promoterRegionClosed : O.promoterRegion
  operatorSiteClosed : O.operatorSite
  repressorProteinClosed : O.repressorProtein
  inducerMoleculeClosed : O.inducerMolecule
  structuralGenesClosed : O.structuralGenes
  rnapBindingClosed : O.rnapBinding
  transcriptionInitiationClosed : O.transcriptionInitiation
  repressionMechanismClosed : O.repressionMechanism
  inductionMechanismClosed : O.inductionMechanism
  basalExpressionClosed : O.basalExpression

def OperonClosed (O : OperonPackage) : Prop :=
  O.promoterRegion ∧ O.operatorSite ∧ O.repressorProtein ∧
  O.inducerMolecule ∧ O.structuralGenes ∧ O.rnapBinding ∧
  O.transcriptionInitiation ∧ O.repressionMechanism ∧
  O.inductionMechanism ∧ O.basalExpression

theorem operon_closed_from_evidence (O : OperonPackage) (E : OperonEvidence O) :
    OperonClosed O := by
  exact And.intro E.promoterRegionClosed
    (And.intro E.operatorSiteClosed
      (And.intro E.repressorProteinClosed
        (And.intro E.inducerMoleculeClosed
          (And.intro E.structuralGenesClosed
            (And.intro E.rnapBindingClosed
              (And.intro E.transcriptionInitiationClosed
                (And.intro E.repressionMechanismClosed
                  (And.intro E.inductionMechanismClosed
                    E.basalExpressionClosed))))))))

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse
