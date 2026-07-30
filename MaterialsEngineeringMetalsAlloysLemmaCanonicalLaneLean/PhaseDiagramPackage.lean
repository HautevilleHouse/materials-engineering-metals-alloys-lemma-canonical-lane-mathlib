import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  leverRule : Prop
  invariantReactions : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  leverRuleClosed : P.leverRule
  invariantReactionsClosed : P.invariantReactions

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.leverRule ∧ P.invariantReactions

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyClosed (And.intro E.leverRuleClosed E.invariantReactionsClosed))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse