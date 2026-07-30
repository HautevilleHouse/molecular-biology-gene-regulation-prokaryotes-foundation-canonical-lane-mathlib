import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean.OperonModel

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure LacOperonEvidence {O : OperonPackage} (E : OperonEvidence O) where
  lactoseInducerPresent : Prop
  glucoseAbsent : Prop
  capBinding : Prop
  crpActivation : Prop
  allolactoseInduction : Prop
  lacZExpression : Prop
  lacYExpression : Prop
  lacAExpression : Prop
  lactoseInducerPresentClosed : lactoseInducerPresent
  glucoseAbsentClosed : glucoseAbsent
  capBindingClosed : capBinding
  crpActivationClosed : crpActivation
  allolactoseInductionClosed : allolactoseInduction
  lacZExpressionClosed : lacZExpression
  lacYExpressionClosed : lacYExpression
  lacAExpressionClosed : lacAExpression

def LacOperonClosed {O : OperonPackage} {E : OperonEvidence O} (L : LacOperonEvidence E) : Prop :=
  L.lactoseInducerPresent ∧ L.glucoseAbsent ∧ L.capBinding ∧
  L.crpActivation ∧ L.allolactoseInduction ∧
  L.lacZExpression ∧ L.lacYExpression ∧ L.lacAExpression

theorem lac_operon_closed_from_evidence {O : OperonPackage} {E : OperonEvidence O}
    (L : LacOperonEvidence E) : LacOperonClosed L := by
  exact And.intro L.lactoseInducerPresentClosed
    (And.intro L.glucoseAbsentClosed
      (And.intro L.capBindingClosed
        (And.intro L.crpActivationClosed
          (And.intro L.allolactoseInductionClosed
            (And.intro L.lacZExpressionClosed
              (And.intro L.lacYExpressionClosed
                L.lacAExpressionClosed))))))

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse
