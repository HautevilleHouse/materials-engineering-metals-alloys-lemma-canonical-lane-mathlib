import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure BravaisLatticePackage where
  latticeVectors : List (ℝ × ℝ × ℝ)
  unitCellVolume : ℝ
  symmetryGroup : Type
  bravaisClass : String
  latticeVectorsFinite : latticeVectors.length = 3
  volumePositive : unitCellVolume > 0

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.latticeVectorsFinite ∧ B.volumePositive

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse