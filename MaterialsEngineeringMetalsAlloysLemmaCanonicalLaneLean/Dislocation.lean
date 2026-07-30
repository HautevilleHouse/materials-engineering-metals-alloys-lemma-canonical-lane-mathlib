import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure DislocationPackage where
  burgersVector : Type u
  slipSystem : Type v
  peierlsStress : Prop
  dislocationMobility : Prop
  strainHardening : Prop

structure DislocationEvidence (D : DislocationPackage) where
  peierlsStressClosed : D.peierlsStress
  dislocationMobilityClosed : D.dislocationMobility
  strainHardeningClosed : D.strainHardening

def DislocationClosed (D : DislocationPackage) : Prop :=
  D.peierlsStress ∧ D.dislocationMobility ∧ D.strainHardening

theorem dislocation_closed_from_evidence (D : DislocationPackage) (E : DislocationEvidence D) :
    DislocationClosed D := by
  exact And.intro E.peierlsStressClosed (And.intro E.dislocationMobilityClosed E.strainHardeningClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse
