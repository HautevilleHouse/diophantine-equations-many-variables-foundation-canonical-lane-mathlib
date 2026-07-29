import canonicalLaneMathlib.AdmissibleClass

/-!
# Fibration Method Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure FibrationMethodPackage (V : Type) [VarietyOverFiniteField V] where
  fiberNonempty : Prop
  genericFiberRational : Prop
  totalSpaceRational : Prop
  inductionStep : Prop

structure FibrationMethodEvidence {V : Type} [VarietyOverFiniteField V]
    (F : FibrationMethodPackage V) where
  fiberNonemptyClosed : F.fiberNonempty
  genericFiberRationalClosed : F.genericFiberRational
  totalSpaceRationalClosed : F.totalSpaceRational
  inductionStepClosed : F.inductionStep

def FibrationMethodClosed {V : Type} [VarietyOverFiniteField V]
    (F : FibrationMethodPackage V) : Prop :=
  F.fiberNonempty ∧ F.genericFiberRational ∧
  F.totalSpaceRational ∧ F.inductionStep

theorem fibration_method_closed_from_evidence
    {V : Type} [VarietyOverFiniteField V]
    (F : FibrationMethodPackage V) (E : FibrationMethodEvidence F) :
    FibrationMethodClosed F := by
  exact And.intro E.fiberNonemptyClosed
    (And.intro E.genericFiberRationalClosed
      (And.intro E.totalSpaceRationalClosed E.inductionStepClosed))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse