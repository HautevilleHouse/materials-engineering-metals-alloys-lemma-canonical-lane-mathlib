import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  unitCellVectors : Type v
  bravaisLatticeClassification : Prop
  symmetryGroup : Type w
  laueClass : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassificationClosed : C.bravaisLatticeClassification
  laueClassClosed : C.laueClass

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassification ∧ C.laueClass

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassificationClosed E.laueClassClosed

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse