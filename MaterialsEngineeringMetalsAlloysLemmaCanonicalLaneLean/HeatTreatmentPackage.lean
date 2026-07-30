import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure HeatTreatmentPackage where
  annealingSchedule : Type u
  quenchingRate : Prop
  temperingTime : Prop
  phaseTransformationClosed : Prop
  hardnessAchievedClosed : Prop

structure HeatTreatmentEvidence (H : HeatTreatmentPackage) where
  phaseTransformationClosed : H.phaseTransformationClosed
  hardnessAchievedClosed : H.hardnessAchievedClosed
  quenchingRateClosed : H.quenchingRate
  temperingTimeClosed : H.temperingTime

def HeatTreatmentClosed (H : HeatTreatmentPackage) : Prop :=
  H.phaseTransformationClosed ∧ H.hardnessAchievedClosed ∧ H.quenchingRate ∧ H.temperingTime

theorem heat_treatment_closed_from_evidence (H : HeatTreatmentPackage) (E : HeatTreatmentEvidence H) :
    HeatTreatmentClosed H := by
  exact And.intro E.phaseTransformationClosed (And.intro E.hardnessAchievedClosed (And.intro E.quenchingRateClosed E.temperingTimeClosed))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse