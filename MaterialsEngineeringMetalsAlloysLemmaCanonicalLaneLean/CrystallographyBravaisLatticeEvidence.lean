import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean.CrystallographyBravaisLattice

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  latticeVectorsFiniteClosed : B.latticeVectorsFinite
  volumePositiveClosed : B.volumePositive

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) :
    BravaisLatticeClosed B := by
  exact And.intro E.latticeVectorsFiniteClosed E.volumePositiveClosed

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse