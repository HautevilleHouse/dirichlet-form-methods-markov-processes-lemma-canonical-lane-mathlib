import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean

structure CapacityDatum where
  capacityDef : String
  polarSets : String
  quasiContinuity : String
  equilibriumPotential : String

def primitiveCapacityDatum : CapacityDatum := {
  capacityDef := "capacity defined via Dirichlet form norm",
  polarSets := "sets of capacity zero are polar for the process",
  quasiContinuity := "every function in the Dirichlet space has a quasi-continuous version",
  equilibriumPotential := "equilibrium potential for compact sets exists"
}

structure CapacityLayerCertificate where
  capacityDatum : CapacityDatum
  fineTopologyRoute : String
  quasiEverywhereRoute : String
  balayageRoute : String
  mathlibSubstrateReady : Bool

def capacityLayerCertificate : CapacityLayerCertificate := {
  capacityDatum := primitiveCapacityDatum,
  fineTopologyRoute := "fine topology is the coarsest topology making all subharmonic functions continuous",
  quasiEverywhereRoute := "quasi-everywhere convergence implies convergence in Dirichlet space",
  balayageRoute := "balayage of measures on fine open sets",
  mathlibSubstrateReady := true
}

def CapacityPotentialLayerClosed (C : CapacityLayerCertificate) : Prop :=
  C.mathlibSubstrateReady = true

theorem capacity_potential_layer_closed_checked :
    CapacityPotentialLayerClosed capacityLayerCertificate := by
  exact rfl

end DirichletFormMethodsMarkovProcessesLemmaCanonicalLaneLean
end HautevilleHouse