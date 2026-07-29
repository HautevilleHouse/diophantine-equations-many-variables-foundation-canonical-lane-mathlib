import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure WeakApproximationPackage where
  varietyType : Type u
  adelicPoints : Prop
  weakApproximationProperty : Prop
  strongApproximationProperty : Prop
  finitelyManyExceptions : Prop

structure WeakApproximationEvidence (W : WeakApproximationPackage) where
  weakApproximationPropertyClosed : W.weakApproximationProperty
  strongApproximationPropertyClosed : W.strongApproximationProperty
  finitelyManyExceptionsClosed : W.finitelyManyExceptions

def WeakApproximationClosed (W : WeakApproximationPackage) : Prop :=
  W.weakApproximationProperty ∧ W.strongApproximationProperty ∧
  W.finitelyManyExceptions

theorem weak_approximation_closed_from_evidence (W : WeakApproximationPackage)
    (E : WeakApproximationEvidence W) : WeakApproximationClosed W := by
  exact And.intro E.weakApproximationPropertyClosed
    (And.intro E.strongApproximationPropertyClosed E.finitelyManyExceptionsClosed)

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse