import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProkaryoteWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse