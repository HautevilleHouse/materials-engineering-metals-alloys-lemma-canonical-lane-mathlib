import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure CrystalLatticePackage where
  bravaisLattice : Type u
  unitCellVolume : Type v
  symmetryGroup : Type w
  latticeParameters : Prop
  atomicPositions : Prop
  diffractionPattern : Prop

structure CrystalLatticeEvidence (L : CrystalLatticePackage) where
  latticeParametersClosed : L.latticeParameters
  atomicPositionsClosed : L.atomicPositions
  diffractionPatternClosed : L.diffractionPattern

def CrystalLatticeClosed (L : CrystalLatticePackage) : Prop :=
  L.latticeParameters ∧ L.atomicPositions ∧ L.diffractionPattern

theorem crystal_lattice_closed_from_evidence (L : CrystalLatticePackage) (E : CrystalLatticeEvidence L) :
    CrystalLatticeClosed L := by
  exact And.intro E.latticeParametersClosed (And.intro E.atomicPositionsClosed E.diffractionPatternClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse
