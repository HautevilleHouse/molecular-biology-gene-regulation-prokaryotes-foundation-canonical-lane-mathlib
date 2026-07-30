import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure SequenceAlignmentPackage where
  sequenceType : Type u
  scoringScheme : sequenceType → sequenceType → Prop
  alignmentAlgorithim : Prop
  optimalAlignment : Prop
  alignmentScore : Prop
  optimalAlignmentTerm : optimalAlignment
  alignmentScoreTerm : alignmentScore

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  alignmentAlgorithimClosed : S.alignmentAlgorithim
  optimalAlignmentClosed : S.optimalAlignment
  alignmentScoreClosed : S.alignmentScore

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.alignmentAlgorithim ∧ S.optimalAlignment ∧ S.alignmentScore

theorem sequence_alignment_closed_from_evidence
    (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.alignmentAlgorithimClosed (And.intro E.optimalAlignmentClosed E.alignmentScoreClosed)

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse