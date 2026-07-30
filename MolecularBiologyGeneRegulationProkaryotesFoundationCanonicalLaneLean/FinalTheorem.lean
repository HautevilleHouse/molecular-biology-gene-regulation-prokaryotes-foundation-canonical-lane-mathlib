import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean.OperonModel
import HautevilleHouse.MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean.LacOperonRegulation

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  OperonClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedOperonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_operon_endgame (A : AdmissibleClass) : ConstrainedOperonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneRegulationProkaryotesFoundationCanonicalLaneLean
end HautevilleHouse
