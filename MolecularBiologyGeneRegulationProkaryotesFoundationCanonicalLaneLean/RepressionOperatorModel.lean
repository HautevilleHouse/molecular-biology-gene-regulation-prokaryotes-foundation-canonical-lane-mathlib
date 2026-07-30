import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.RepressionOperator

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure RepressionOperatorPackage where
  operatorSite : String
  repressorBinding : Prop
  transcriptionInhibition : Prop
  inductionMechanism : Prop
  feedbackLoop : Prop

structure RepressionOperatorEvidence (R : RepressionOperatorPackage) where
  repressorBindingClosed : R.repressorBinding
  transcriptionInhibitionClosed : R.transcriptionInhibition
  inductionMechanismClosed : R.inductionMechanism

def RepressionOperatorClosed (R : RepressionOperatorPackage) : Prop :=
  R.repressorBinding ∧ R.transcriptionInhibition ∧ R.inductionMechanism

theorem repression_operator_closed_from_evidence (R : RepressionOperatorPackage) (E : RepressionOperatorEvidence R) :
    RepressionOperatorClosed R := by
  exact And.intro E.repressorBindingClosed (And.intro E.transcriptionInhibitionClosed E.inductionMechanismClosed)

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse