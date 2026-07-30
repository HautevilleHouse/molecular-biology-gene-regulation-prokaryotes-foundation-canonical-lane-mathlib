import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure ProkaryoticTranscriptionPackage where
  rnaPolymerase : Prop
  sigmaFactor : Prop
  promoterBinding : Prop
  transcriptionInitiation : Prop
  elongationTermination : Prop

def ProkaryoticTranscriptionClosed (P : ProkaryoticTranscriptionPackage) : Prop :=
  P.rnaPolymerase ∧ P.sigmaFactor ∧ P.promoterBinding ∧ P.transcriptionInitiation ∧ P.elongationTermination

structure ProkaryoticTranscriptionEvidence (P : ProkaryoticTranscriptionPackage) where
  rnaPolymeraseClosed : P.rnaPolymerase
  sigmaFactorClosed : P.sigmaFactor
  promoterBindingClosed : P.promoterBinding
  transcriptionInitiationClosed : P.transcriptionInitiation
  elongationTerminationClosed : P.elongationTermination

theorem prokaryotic_transcription_closed_from_evidence (P : ProkaryoticTranscriptionPackage) (E : ProkaryoticTranscriptionEvidence P) : ProkaryoticTranscriptionClosed P := by
  exact And.intro E.rnaPolymeraseClosed (And.intro E.sigmaFactorClosed (And.intro E.promoterBindingClosed (And.intro E.transcriptionInitiationClosed E.elongationTerminationClosed)))

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse
