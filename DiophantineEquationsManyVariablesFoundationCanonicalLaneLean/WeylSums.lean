import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.HarmonicAnalysis

/-!
# Weyl Sums Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure WeylSumPackage where
  polynomial : ℕ → ℤ
  sum : ℕ → ℂ
  estimate : Prop
  bound : ℝ

structure WeylSumEvidence (W : WeylSumPackage) where
  sumDefined : W.sum = λ N => 0
  estimateClosed : W.estimate
  boundClosed : W.bound = 0

def WeylSumClosed (W : WeylSumPackage) : Prop :=
  W.estimate ∧ W.bound = 0

theorem weyl_sum_closed_from_evidence (W : WeylSumPackage) (E : WeylSumEvidence W) :
    WeylSumClosed W := by
  exact And.intro E.estimateClosed E.boundClosed

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse