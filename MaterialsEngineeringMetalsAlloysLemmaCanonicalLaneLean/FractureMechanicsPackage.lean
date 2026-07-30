import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackPropagation : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop
  parisLaw : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  parisLawClosed : F.parisLaw

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.crackPropagation ∧ F.stressIntensityFactor ∧ F.fractureToughness ∧ F.parisLaw

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (Ev : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro Ev.crackPropagationClosed (And.intro Ev.stressIntensityFactorClosed (And.intro Ev.fractureToughnessClosed Ev.parisLawClosed))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse