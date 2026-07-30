import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure CorrosionPackage where
  electrochemicalPotential : Type u
  corrosionRate : Prop
  passivation : Prop
  galvanicSeries : Prop
  pittingResistance : Prop

structure CorrosionEvidence (C : CorrosionPackage) where
  electrochemicalPotentialClosed : C.electrochemicalPotential
  corrosionRateClosed : C.corrosionRate
  passivationClosed : C.passivation
  galvanicSeriesClosed : C.galvanicSeries
  pittingResistanceClosed : C.pittingResistance

def CorrosionClosed (C : CorrosionPackage) : Prop :=
  C.electrochemicalPotential ∧ C.corrosionRate ∧ C.passivation ∧ C.galvanicSeries ∧ C.pittingResistance

theorem corrosion_closed_from_evidence (C : CorrosionPackage) (E : CorrosionEvidence C) : 
  CorrosionClosed C := by
  exact And.intro E.electrochemicalPotentialClosed (And.intro E.corrosionRateClosed (And.intro E.passivationClosed (And.intro E.galvanicSeriesClosed E.pittingResistanceClosed)))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse