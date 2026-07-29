import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure AdmittedObject where
  polynomialSystem : Type
  variableCount : Nat
  integralPointSet : Type
  solvability : Prop
  conclusion : solvability

def DiophantineWitnessClosed (O : AdmittedObject) : Prop :=
  O.solvability

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse