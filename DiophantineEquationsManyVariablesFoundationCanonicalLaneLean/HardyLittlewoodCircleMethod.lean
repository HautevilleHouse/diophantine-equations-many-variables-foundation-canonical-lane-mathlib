import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure HardyLittlewoodCircleMethodPackage where
  exponentialSumEstimates : Prop
  majorArcAsymptotics : Prop
  minorArcBounds : Prop
  singularSeriesAbsoluteConvergence : Prop
  asymptoticFormula : Prop

structure HardyLittlewoodCircleMethodEvidence
    (H : HardyLittlewoodCircleMethodPackage) where
  exponentialSumEstimatesClosed : H.exponentialSumEstimates
  majorArcAsymptoticsClosed : H.majorArcAsymptotics
  minorArcBoundsClosed : H.minorArcBounds
  singularSeriesAbsoluteConvergenceClosed : H.singularSeriesAbsoluteConvergence
  asymptoticFormulaClosed : H.asymptoticFormula

def HardyLittlewoodCircleMethodClosed
    (H : HardyLittlewoodCircleMethodPackage) : Prop :=
  H.exponentialSumEstimates ∧ H.majorArcAsymptotics ∧
  H.minorArcBounds ∧ H.singularSeriesAbsoluteConvergence ∧ H.asymptoticFormula

theorem hardy_littlewood_circle_method_closed_from_evidence
    (H : HardyLittlewoodCircleMethodPackage)
    (E : HardyLittlewoodCircleMethodEvidence H) :
    HardyLittlewoodCircleMethodClosed H := by
  exact And.intro E.exponentialSumEstimatesClosed
    (And.intro E.majorArcAsymptoticsClosed
      (And.intro E.minorArcBoundsClosed
        (And.intro E.singularSeriesAbsoluteConvergenceClosed
          E.asymptoticFormulaClosed)))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse