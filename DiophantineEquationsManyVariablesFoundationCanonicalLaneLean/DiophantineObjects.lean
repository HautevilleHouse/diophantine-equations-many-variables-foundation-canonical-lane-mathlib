import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure DiophantineSpace where
  carrier : Type
  discreteTopology : TopologicalSpace carrier

structure DiophantineAdmittedObject where
  space : DiophantineSpace
  numberOfVariables : Nat
  degree : Nat
  hasIntegerSolution : Prop
  conclusion : hasIntegerSolution

structure DiophantineEndgameState where
  object : DiophantineAdmittedObject

def DiophantineWitnessClosed (O : DiophantineAdmittedObject) : Prop :=
  O.hasIntegerSolution

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse