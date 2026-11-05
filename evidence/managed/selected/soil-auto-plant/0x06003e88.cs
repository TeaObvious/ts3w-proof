/* Analyst: selected complete original PC1.67 Sims3.Gameplay.Objects.Gardening.Plant::CreateAutoPlantFromSeed 0x06003e88.
 * Actual ILSpy11.1 selected-member rendering; paired original CIL governs operand types and branches.
 * Original definition-null return, Plantable-component quality or GetQualityLevelMedian literal5, original PlantInitParameters and IsMushroom then DoCreatePlantFromSeed. Child internals unexpanded.
 */

using Sims3.Gameplay.Interfaces;

public static Plant CreateAutoPlantFromSeed(IGameObject seedObj, SoilAutoPlant soil)
{
	PlantDefinition plantDefinition = PlantHelper.GetPlantDefinition(seedObj);
	if (plantDefinition == null)
	{
		return null;
	}
	float qualityLevel = seedObj.Plantable?.QualityLevel ?? GetQualityLevelMedian(Quality.Neutral);
	PlantInitParameters initParams = new PlantInitParameters(seedObj, qualityLevel, plantDefinition, soil);
	return DoCreatePlantFromSeed(plantDefinition, soil, initParams, IsMushroom(seedObj));
}
