import DiophantineEquationsManyVariablesFoundationCanonicalLaneLean.HardyLittlewoodCircleMethod

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure ManinPackage {A : AdmissibleClass}
    (H : HardyLittlewoodPackage A) where
  weakApproximation : Prop
  fibrationMethod : Prop
  brauerManinObstruction : Prop
  hasIntegerSolution : Prop

structure ManinEvidence {A : AdmissibleClass} {H : HardyLittlewoodPackage A}
    (M : ManinPackage H) where
  weakApproximationClosed : M.weakApproximation
  fibrationMethodClosed : M.fibrationMethod
  brauerManinObstructionClosed : M.brauerManinObstruction
  hasIntegerSolutionClosed : M.hasIntegerSolution

def ManinClosed {A : AdmissibleClass} {H : HardyLittlewoodPackage A}
    (M : ManinPackage H) : Prop :=
  M.weakApproximation ∧ M.fibrationMethod ∧ M.brauerManinObstruction ∧ M.hasIntegerSolution

theorem manin_closed_from_evidence {A : AdmissibleClass} {H : HardyLittlewoodPackage A}
    (M : ManinPackage H) (E : ManinEvidence M) : ManinClosed M := by
  exact And.intro E.weakApproximationClosed
    (And.intro E.fibrationMethodClosed
      (And.intro E.brauerManinObstructionClosed E.hasIntegerSolutionClosed))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse