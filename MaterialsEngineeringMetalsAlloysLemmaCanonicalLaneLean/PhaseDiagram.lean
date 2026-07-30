import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundary : Type u
  gibbsFreeEnergy : Type v
  leverRule : Prop
  eutecticPoint : Prop
  phaseFraction : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  leverRuleClosed : P.leverRule
  eutecticPointClosed : P.eutecticPoint
  phaseFractionClosed : P.phaseFraction

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.leverRule ∧ P.eutecticPoint ∧ P.phaseFraction

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.leverRuleClosed (And.intro E.eutecticPointClosed E.phaseFractionClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse
