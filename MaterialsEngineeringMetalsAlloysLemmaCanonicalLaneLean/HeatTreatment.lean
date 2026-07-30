import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure HeatTreatmentPackage where
  tttDiagram : Type u
  quenchRate : Type v
  phaseTransformation : Prop
  hardenability : Prop
  temperingResponse : Prop

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  phaseTransformationClosed : H.phaseTransformation
  hardenabilityClosed : H.hardenability
  temperingResponseClosed : H.temperingResponse

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.phaseTransformation ∧ H.hardenability ∧ H.temperingResponse

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage) (E : HeatTreatmentEvidence H) :
    HeatTreatmentClosed H := by
  exact And.intro E.phaseTransformationClosed (And.intro E.hardenabilityClosed E.temperingResponseClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse
