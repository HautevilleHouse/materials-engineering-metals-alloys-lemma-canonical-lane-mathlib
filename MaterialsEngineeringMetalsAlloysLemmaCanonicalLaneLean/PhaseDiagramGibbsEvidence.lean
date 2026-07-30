import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean.PhaseDiagramGibbs

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  gibbsFreeEnergyMinimizedClosed : P.gibbsFreeEnergyMinimized
  phaseBoundariesDefinedClosed : P.phaseBoundariesDefined

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.gibbsFreeEnergyMinimizedClosed E.phaseBoundariesDefinedClosed

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse