import canonicalLaneMathlib.AdmissibleClass

/-!
# Hardy-Littlewood Circle Method Package (Many Variables)
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure HardyLittlewoodPackage where
  weightFunction : Type
  singularIntegralConvergent : Prop
  singularSeriesPositive : Prop
  numberVariablesSufficient : Prop
  asymptoticFormulaHolds : Prop

structure HardyLittlewoodEvidence (H : HardyLittlewoodPackage) where
  singularIntegralConvergentClosed : H.singularIntegralConvergent
  singularSeriesPositiveClosed : H.singularSeriesPositive
  numberVariablesSufficientClosed : H.numberVariablesSufficient
  asymptoticFormulaHoldsClosed : H.asymptoticFormulaHolds

def HardyLittlewoodClosed (H : HardyLittlewoodPackage) : Prop :=
  H.singularIntegralConvergent ∧ H.singularSeriesPositive ∧
  H.numberVariablesSufficient ∧ H.asymptoticFormulaHolds

theorem hardy_littlewood_closed_from_evidence
    (H : HardyLittlewoodPackage) (E : HardyLittlewoodEvidence H) : HardyLittlewoodClosed H := by
  exact And.intro E.singularIntegralConvergentClosed
    (And.intro E.singularSeriesPositiveClosed
      (And.intro E.numberVariablesSufficientClosed E.asymptoticFormulaHoldsClosed))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse