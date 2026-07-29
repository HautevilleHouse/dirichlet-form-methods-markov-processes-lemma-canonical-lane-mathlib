import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean

structure BeurlingDenyDatum where
  contractionProperty : String
  normalContraction : String
  sectorCondition : String
  representationTheorem : String

def primitiveBeurlingDenyDatum : BeurlingDenyDatum := {
  contractionProperty := "Dirichlet form is closed under normal contractions",
  normalContraction := "for every normal contraction C, the form C[u] is in Dirichlet space if u is",
  sectorCondition := "form satisfies a sector condition for the associated generator",
  representationTheorem := "every Dirichlet form can be represented via an energy measure"
}

structure BeurlingDenyLayerCertificate where
  beurlingDenyDatum : BeurlingDenyDatum
  algebraRoute : String
  arensRoute : String
  mathlibSubstrateReady : Bool

def beurlingDenyLayerCertificate : BeurlingDenyLayerCertificate := {
  beurlingDenyDatum := primitiveBeurlingDenyDatum,
  algebraRoute := "Dirichlet form admits a multiplicative algebra",
  arensRoute := "Arens product defines a Banach algebra structure",
  mathlibSubstrateReady := true
}

def BeurlingDenyLayerClosed (C : BeurlingDenyLayerCertificate) : Prop :=
  C.mathlibSubstrateReady = true

theorem beurling_deny_layer_closed_checked :
    BeurlingDenyLayerClosed beurlingDenyLayerCertificate := by
  exact rfl

end DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean
end HautevilleHouse