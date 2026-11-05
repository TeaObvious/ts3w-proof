/* Analyst: selected complete original PC1.67 Sims3.Gameplay.Objects.Gardening.SoilAutoPlant::CreateSeed 0x0600a96e.
 * Actual ILSpy11.1 selected-member rendering; paired original CIL governs operand types and branches.
 * Original exact-key dictionaries and virtual GetPlantableNameKey calls; second lookup only when first creation is null. No generic key normalization or Seed suffix fallback here. Quality literal5, true, disclosure0; nonnull seed removed from world before return.
 */

using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects.FoodObjects;

private IGameObject CreateSeed()
{
	IGameObject gameObject = null;
	IngredientData value = null;
	if (IngredientData.NameToDataMap.TryGetValue(GetPlantableNameKey(), out value))
	{
		gameObject = Ingredient.Create(value);
	}
	if (gameObject == null)
	{
		PlantableNonIngredientData value2 = null;
		if (PlantableNonIngredientData.NameToDataMap.TryGetValue(GetPlantableNameKey(), out value2))
		{
			gameObject = PlantableNonIngredient.Create(value2, Quality.Neutral, isSeed: true, PlayerDisclosure.Exposed);
		}
	}
	gameObject?.RemoveFromWorld();
	return gameObject;
}
