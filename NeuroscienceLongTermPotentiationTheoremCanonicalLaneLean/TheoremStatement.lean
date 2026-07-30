import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  neuroscienceConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "neuroscience-ltp-canonical-lane",
    theoremName := "Neuroscience Long Term Potentiation Theorem",
    theoremObject := "Hebbian plasticity induction via spike-timing dependent plasticity",
    classicalBoundary := "classical boundary: remaining neurobiological detail not formalized",
    neuroscienceConstrainedStatement := "htz: constrained LTP model",
    certificateLane := "neuroscience_constrained",
    carriedRemainder := "unrestricted classical boundary remains open" }

end NeuroscienceLongTermPotentiationTheoremCanonicalLaneLean
end HautevilleHouse
