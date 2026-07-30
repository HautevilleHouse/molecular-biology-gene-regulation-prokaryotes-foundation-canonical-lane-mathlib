import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure RepressorOperatorInteraction where
  repressorProtein : Type
  operatorSequence : Type
  bindingAffinity : Prop
  conformationalChange : Prop
  dissociationConstant : Prop
  specificBinding : Prop

def RepressorInteractionClosed (R : RepressorOperatorInteraction) : Prop :=
  R.bindingAffinity ∧ R.conformationalChange ∧ R.dissociationConstant ∧ R.specificBinding

theorem repressor_interaction_closed (R : RepressorOperatorInteraction) :
    RepressorInteractionClosed R := by
  trivial

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse