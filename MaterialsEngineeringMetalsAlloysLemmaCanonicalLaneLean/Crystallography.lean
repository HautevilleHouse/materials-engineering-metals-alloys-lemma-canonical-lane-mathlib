import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Type u
  bravaisLattice : Type v
  unitCell : Prop
  symmetryGroup : Prop
  millerIndices : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  unitCellClosed : C.unitCell
  symmetryGroupClosed : C.symmetryGroup
  millerIndicesClosed : C.millerIndices

def CrystallographyClosed (C : CrystallographyPackage) : Prop := 
  C.latticeStructure ∧ C.unitCell ∧ C.symmetryGroup ∧ C.millerIndices

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : 
  CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed (And.intro E.unitCellClosed (And.intro E.symmetryGroupClosed E.millerIndicesClosed))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse