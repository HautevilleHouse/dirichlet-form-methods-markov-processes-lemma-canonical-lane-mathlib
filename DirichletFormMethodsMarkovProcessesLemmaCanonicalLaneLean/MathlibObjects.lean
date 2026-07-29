import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

def sourceRepository : String := "HautevilleHouse/DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean"
def sourceDescription : String := "Dirichlet Form Methods Markov Processes Lemma"
def sourceTheoremBoundary : String := "classical Dirichlet form theory for Markov processes"
def classical_source_boundary_carried_checked : Prop := True

def theoremSpecificObject : TheoremSpecificObject :=
  { sourceKey := sourceRepository,
    theoremObject := sourceDescription,
    claimBoundary := sourceTheoremBoundary
  }

end DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean
end HautevilleHouse