import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  compositionRange : ℝ → ℝ → Prop
  gibbsFreeEnergyMinimized : Prop
  phaseBoundariesDefined : Prop

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.gibbsFreeEnergyMinimized ∧ P.phaseBoundariesDefined

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse