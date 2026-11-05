/* Analyst: selected complete original PC1.67 Sims3.Gameplay.Objects.Gardening.Plant::DoCreatePlantFromSeed 0x06003e89.
 * Actual ILSpy11.1 selected-member rendering; paired original CIL governs operand types and branches.
 * Original mediator-name and mushroom GetInt(0,2)/suffix choices, data-version fallback, original CreateObjectParentedToSlot with original Plant slot and initParams. Null/wrong Plant returnsnull without locally destroying a non-Plant object; successful soil/dormancy/dampness and FlameFruit notification preserved. Factory/cleanup semantics remain separate.
 */

using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects.FoodObjects;
using Sims3.SimIFace;

private static Plant DoCreatePlantFromSeed(PlantDefinition pd, Soil soilToParentPlantTo, PlantInitParameters initParams, bool isMushroom)
{
	string instanceName = pd.MedatorName;
	int num = 3;
	ProductVersion version = ProductVersion.BaseGame;
	if (isMushroom)
	{
		num = RandomUtil.GetInt(0, 2);
		if (num == 1)
		{
			instanceName = pd.MedatorName + "1";
		}
		if (num == 2)
		{
			instanceName = pd.MedatorName + "2";
		}
	}
	if (!pd.GetDataVersion(out version))
	{
		version = ProductVersion.BaseGame;
	}
	IGameObject gameObject = GlobalFunctions.CreateObjectParentedToSlot(instanceName, version, soilToParentPlantTo, Soil.ContainmentSlots.Plant, null, initParams);
	if (gameObject == null)
	{
		return null;
	}
	if (!(gameObject is Plant plant))
	{
		return null;
	}
	plant.mNumberOfShroomsPerPlant = num;
	plant.mSoil = soilToParentPlantTo;
	soilToParentPlantTo?.SetDormant(plant.mDormant);
	plant.UpdateSoilDampness();
	if (!PlantHelper.IsSeed(initParams.Seed) && initParams.Seed is FlameFruit flameFruit)
	{
		flameFruit.NotifyPlanted();
	}
	return plant;
}
