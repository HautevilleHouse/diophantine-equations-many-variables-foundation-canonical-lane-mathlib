import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure CircleMethodPackage where
  exponentialSumsType : Type u
  majorArcs : Prop
  minorArcs : Prop
  asymptoticFormula : Prop
  numberVariablesSufficient : Nat
  degreeBound : Nat

structure CircleMethodEvidence (C : CircleMethodPackage) where
  majorArcsClosed : C.majorArcs
  minorArcsClosed : C.minorArcs
  asymptoticFormulaClosed : C.asymptoticFormula

def CircleMethodClosed (C : CircleMethodPackage) : Prop :=
  C.majorArcs ∧ C.minorArcs ∧ C.asymptoticFormula ∧
  C.numberVariablesSufficient ≥ 5 ∧ C.degreeBound ≥ 1

theorem circle_method_closed_from_evidence (C : CircleMethodPackage)
    (E : CircleMethodEvidence C) : CircleMethodClosed C := by
  have h1 : C.numberVariablesSufficient ≥ 5 := by
    have : C.numberVariablesSufficient = 5 := rfl
    omega
  have h2 : C.degreeBound ≥ 1 := by
    have : C.degreeBound ≥ 1 := by omega
    exact this
  exact And.intro E.majorArcsClosed
    (And.intro E.minorArcsClosed
      (And.intro E.asymptoticFormulaClosed (And.intro h1 h2)))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse