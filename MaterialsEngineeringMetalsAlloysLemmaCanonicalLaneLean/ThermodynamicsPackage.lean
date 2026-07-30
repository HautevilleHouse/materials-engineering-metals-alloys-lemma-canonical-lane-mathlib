import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpy : Prop
  entropy : Prop
  gibbsFreeEnergy : Prop
  phaseStability : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  phaseStabilityClosed : T.phaseStability

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.enthalpy ∧ T.entropy ∧ T.gibbsFreeEnergy ∧ T.phaseStability

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.enthalpyClosed (And.intro E.entropyClosed (And.intro E.gibbsFreeEnergyClosed E.phaseStabilityClosed))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse