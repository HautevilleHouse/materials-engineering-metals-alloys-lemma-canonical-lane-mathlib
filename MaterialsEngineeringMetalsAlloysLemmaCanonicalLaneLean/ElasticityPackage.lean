import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  youngModulus : Prop
  poissonRatio : Prop
  hookesLawClosed : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  hookesLawClosed : E.hookesLawClosed

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.youngModulus ∧ E.poissonRatio ∧ E.hookesLawClosed

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed Ev.hookesLawClosed)

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse