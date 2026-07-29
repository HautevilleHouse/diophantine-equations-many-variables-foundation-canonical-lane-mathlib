import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure CircaTheoremPackage where
  polynomialDegree : Nat
  variableNumber : Nat
  hasSolution : Prop
  solutionCount : Prop
  witnessConstructible : Prop

structure CircaTheoremEvidence (C : CircaTheoremPackage) where
  hasSolutionClosed : C.hasSolution
  solutionCountClosed : C.solutionCount
  witnessConstructibleClosed : C.witnessConstructible

def CircaTheoremClosed (C : CircaTheoremPackage) : Prop :=
  C.hasSolution ∧ C.solutionCount ∧ C.witnessConstructible

theorem circa_theorem_closed_from_evidence (C : CircaTheoremPackage)
    (E : CircaTheoremEvidence C) : CircaTheoremClosed C := by
  exact And.intro E.hasSolutionClosed (And.intro E.solutionCountClosed E.witnessConstructibleClosed)

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse