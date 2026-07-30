import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure CrystalStructurePackage where
  bravaisLattice : Type u
  unitCellParams : Type v
  atomicPositions : Type w
  spaceGroup : Prop
  symmetryOperationsClosed : Prop
  latticeParameterClosed : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  spaceGroupClosed : C.spaceGroup
  symmetryOperationsClosed : C.symmetryOperationsClosed
  latticeParameterClosed : C.latticeParameterClosed

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.spaceGroup ∧ C.symmetryOperationsClosed ∧ C.latticeParameterClosed

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.spaceGroupClosed (And.intro E.symmetryOperationsClosed E.latticeParameterClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse