import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure ElasticityPackage where
  elasticModulus : Type u
  poissonRatio : Type v
  hookesLaw : Prop
  stressStrainRelation : Prop
  yieldCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  stressStrainRelationClosed : E.stressStrainRelation
  yieldCriterionClosed : E.yieldCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.stressStrainRelation ∧ E.yieldCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.stressStrainRelationClosed Ev.yieldCriterionClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse
