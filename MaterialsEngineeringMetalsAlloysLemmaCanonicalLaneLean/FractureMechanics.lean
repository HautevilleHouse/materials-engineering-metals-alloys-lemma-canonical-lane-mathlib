import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Type u
  crackPropagation : Type v
  griffithCriterion : Prop
  parisLaw : Prop
  fractureToughness : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  griffithCriterionClosed : F.griffithCriterion
  parisLawClosed : F.parisLaw
  fractureToughnessClosed : F.fractureToughness

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.griffithCriterion ∧ F.parisLaw ∧ F.fractureToughness

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.griffithCriterionClosed (And.intro E.parisLawClosed E.fractureToughnessClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse
