import canonicalLaneMathlib.AdmissibleClass

/-!
# Circle Method Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure CircleMethodPackage where
  exponentialSumEstimates : Prop
  minorArcBound : Prop
  majorArcApproximation : Prop
  singularSeriesConvergence : Prop
  asymptoticFormula : Prop

structure CircleMethodEvidence (C : CircleMethodPackage) where
  exponentialSumEstimatesClosed : C.exponentialSumEstimates
  minorArcBoundClosed : C.minorArcBound
  majorArcApproximationClosed : C.majorArcApproximation
  singularSeriesConvergenceClosed : C.singularSeriesConvergence
  asymptoticFormulaClosed : C.asymptoticFormula

def CircleMethodClosed (C : CircleMethodPackage) : Prop :=
  C.exponentialSumEstimates ∧ C.minorArcBound ∧
  C.majorArcApproximation ∧ C.singularSeriesConvergence ∧
  C.asymptoticFormula

theorem circle_method_closed_from_evidence
    (C : CircleMethodPackage) (E : CircleMethodEvidence C) : CircleMethodClosed C := by
  exact And.intro E.exponentialSumEstimatesClosed
    (And.intro E.minorArcBoundClosed
      (And.intro E.majorArcApproximationClosed
        (And.intro E.singularSeriesConvergenceClosed E.asymptoticFormulaClosed)))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse