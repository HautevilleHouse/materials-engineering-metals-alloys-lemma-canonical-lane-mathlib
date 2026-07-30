import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure ElasticityTheoryPackage where
  youngModulus : Prop
  poissonRatio : Prop
  hookeLaw : Prop
  stressStrainRelation : Prop

structure ElasticityTheoryEvidence (E : ElasticityTheoryPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  hookeLawClosed : E.hookeLaw
  stressStrainRelationClosed : E.stressStrainRelation

def ElasticityTheoryClosed (E : ElasticityTheoryPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.hookeLaw ∧ E.stressStrainRelation

theorem elasticity_theory_closed_from_evidence (E : ElasticityTheoryPackage) (Ev : ElasticityTheoryEvidence E) : ElasticityTheoryClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed (And.intro Ev.hookeLawClosed Ev.stressStrainRelationClosed))

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse