import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure HassePrinciplePackage where
  localSolvabilityAllCompletions : Prop
  rationalPointExists : Prop
  brauerManinObstruction : Prop
  principalHomogeneousSpaces : Prop

structure HassePrincipleEvidence (H : HassePrinciplePackage) where
  localSolvabilityAllCompletionsClosed : H.localSolvabilityAllCompletions
  rationalPointExistsClosed : H.rationalPointExists
  brauerManinObstructionClosed : H.brauerManinObstruction
  principalHomogeneousSpacesClosed : H.principalHomogeneousSpaces

def HassePrincipleClosed (H : HassePrinciplePackage) : Prop :=
  H.localSolvabilityAllCompletions ∧ H.rationalPointExists ∧
  H.brauerManinObstruction ∧ H.principalHomogeneousSpaces

theorem hasse_principle_closed_from_evidence
    (H : HassePrinciplePackage) (E : HassePrincipleEvidence H) :
    HassePrincipleClosed H := by
  exact And.intro E.localSolvabilityAllCompletionsClosed
    (And.intro E.rationalPointExistsClosed
      (And.intro E.brauerManinObstructionClosed E.principalHomogeneousSpacesClosed))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse