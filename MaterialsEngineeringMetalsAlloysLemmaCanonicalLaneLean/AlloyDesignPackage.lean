import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure AlloyDesignPackage where
  compositionRange : Prop
  strengtheningMechanisms : Prop
  precipitationHardening : Prop
  solutionStrengthening : Prop

structure AlloyDesignEvidence (A : AlloyDesignPackage) where
  compositionRangeClosed : A.compositionRange
  strengtheningMechanismsClosed : A.strengtheningMechanisms
  precipitationHardeningClosed : A.precipitationHardening
  solutionStrengtheningClosed : A.solutionStrengthening

def AlloyDesignClosed (A : AlloyDesignPackage) : Prop :=
  A.compositionRange ∧ A.strengtheningMechanisms ∧ A.precipitationHardening ∧ A.solutionStrengthening

theorem alloy_design_closed_from_evidence (A : AlloyDesignPackage) (E : AlloyDesignEvidence A) : AlloyDesignClosed A := by
  exact And.intro E.compositionRangeClosed (And.intro E.strengtheningMechanismsClosed (And.intro E.precipitationHardeningClosed E.solutionStrengtheningClosed))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse