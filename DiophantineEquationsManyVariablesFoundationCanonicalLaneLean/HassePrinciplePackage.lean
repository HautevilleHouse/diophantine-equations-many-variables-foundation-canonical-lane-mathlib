import canonicalLaneMathlib.AdmissibleClass

/-!
# Hasse Principle Package
-/

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure HassePrinciplePackage (F : Field) (V : Type) [AlgebraicVariety F V] where
  localGlobalOverNumberField : Prop
  obstructionGroupFinite : Prop
  weakApproximation : Prop
  strongApproximation : Prop

structure HassePrincipleEvidence {F : Field} {V : Type} [AlgebraicVariety F V]
    (H : HassePrinciplePackage F V) where
  localGlobalOverNumberFieldClosed : H.localGlobalOverNumberField
  obstructionGroupFiniteClosed : H.obstructionGroupFinite
  weakApproximationClosed : H.weakApproximation
  strongApproximationClosed : H.strongApproximation

def HassePrincipleClosed {F : Field} {V : Type} [AlgebraicVariety F V]
    (H : HassePrinciplePackage F V) : Prop :=
  H.localGlobalOverNumberField ∧ H.obstructionGroupFinite ∧
  H.weakApproximation ∧ H.strongApproximation

theorem hasse_principle_closed_from_evidence
    {F : Field} {V : Type} [AlgebraicVariety F V]
    (H : HassePrinciplePackage F V) (E : HassePrincipleEvidence H) :
    HassePrincipleClosed H := by
  exact And.intro E.localGlobalOverNumberFieldClosed
    (And.intro E.obstructionGroupFiniteClosed
      (And.intro E.weakApproximationClosed E.strongApproximationClosed))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse