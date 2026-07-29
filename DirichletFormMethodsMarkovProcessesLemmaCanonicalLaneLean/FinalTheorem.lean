import canonicalLaneMathlib.AdmissibleClass
import DirichletFormLayer
import MarkovProcessLemmaLayer

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean

def DirichletFormMarkovClosure (A : AdmissibleClass) : Prop :=
  DirichletFormLayerClosed primitiveDirichletFormCertificate ∧
  MarkovProcessLemmaLayerClosed primitiveMarkovProcessLemmaCertificate ∧
  gateClosed A

theorem dirichlet_form_markov_endgame (A : AdmissibleClass) :
    DirichletFormMarkovClosure A := by
  have h1 : DirichletFormLayerClosed primitiveDirichletFormCertificate :=
    dirichlet_form_layer_closed_checked
  have h2 : MarkovProcessLemmaLayerClosed primitiveMarkovProcessLemmaCertificate :=
    markov_process_lemma_layer_closed_checked
  have h3 : gateClosed A := gate_from_admissible_class A
  exact And.intro h1 (And.intro h2 h3)

end DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean
end HautevilleHouse
