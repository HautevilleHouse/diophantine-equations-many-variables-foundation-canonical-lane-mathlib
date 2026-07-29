import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineEquationsManyVariablesFoundationCanonicalLaneLean

structure BirchSwinnertonDyerAnaloguePackage where
  abelianVarietyType : Type u
  lseriesType : Type v
  analyticRank : Prop
  algebraicRank : Prop
  rankEquality : Prop
  tateShafarevichGroupFinite : Prop

structure BirchSwinnertonDyerAnalogueEvidence (B : BirchSwinnertonDyerAnaloguePackage) where
  analyticRankClosed : B.analyticRank
  algebraicRankClosed : B.algebraicRank
  rankEqualityClosed : B.rankEquality
  tateShafarevichGroupFiniteClosed : B.tateShafarevichGroupFinite

def BirchSwinnertonDyerAnalogueClosed (B : BirchSwinnertonDyerAnaloguePackage) : Prop :=
  B.analyticRank ∧ B.algebraicRank ∧ B.rankEquality ∧
  B.tateShafarevichGroupFinite

theorem birch_swinnerton_dyer_analogue_closed_from_evidence
    (B : BirchSwinnertonDyerAnaloguePackage)
    (E : BirchSwinnertonDyerAnalogueEvidence B) :
    BirchSwinnertonDyerAnalogueClosed B := by
  exact And.intro E.analyticRankClosed
    (And.intro E.algebraicRankClosed
      (And.intro E.rankEqualityClosed E.tateShafarevichGroupFiniteClosed))

end DiophantineEquationsManyVariablesFoundationCanonicalLaneLean
end HautevilleHouse