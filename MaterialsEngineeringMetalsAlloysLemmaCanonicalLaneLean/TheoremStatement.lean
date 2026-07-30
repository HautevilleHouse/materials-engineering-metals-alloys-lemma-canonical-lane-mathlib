import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean

structure MaterialsAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  crystalStructure : Type v
  phaseDiagramModel : Prop
  elasticConstantsDefined : Prop
  fractureToughnessModel : Prop
  conclusion : phaseDiagramModel ∧ elasticConstantsDefined ∧ fractureToughnessModel

def MaterialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.phaseDiagramModel ∧ O.elasticConstantsDefined ∧ O.fractureToughnessModel

end MaterialsEngineeringMetalsAlloysLemmaCanonicalLaneLean
end HautevilleHouse
