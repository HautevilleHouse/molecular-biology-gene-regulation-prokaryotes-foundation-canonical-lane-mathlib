import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

structure LinkageAnalysisPackage where
  markerSet : Type u
  recombinationFraction : markerSet → markerSet → Prop
  lodScore : markerSet → markerSet → Prop
  linkageEvidence : Prop
  linkageEvidenceTerm : linkageEvidence

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  linkageEvidenceClosed : L.linkageEvidence

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.linkageEvidence

theorem linkage_analysis_closed_from_evidence
    (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact E.linkageEvidenceClosed

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse