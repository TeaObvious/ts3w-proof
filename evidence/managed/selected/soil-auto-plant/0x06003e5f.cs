/* Analyst: selected complete original PC1.67 Sims3.Gameplay.Objects.Gardening.Plant::OnCreation 0x06003e5f.
 * Actual ILSpy11.1 selected-member rendering; paired original CIL governs operand types and branches.
 * Original managed creation initialization owns quality/seed/definition, time/water/alarm, virtual initial growth and health/season/material update ordering. This is not a native renderer function. Original base, alarm timing and child update bodies remain unexpanded.
 */

using Sims3.Gameplay.Core;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;

public override void OnCreation()
{
	base.OnCreation();
	PlantInitParameters plantInitParameters = Simulator.GetObjectInitParameters(ObjectId) as PlantInitParameters;
	if (plantInitParameters != null)
	{
		QualityLevel = plantInitParameters.QualityLevel;
		Seed = plantInitParameters.Seed;
		if (Seed != null)
		{
			Seed.SetPosition(Position);
			Seed.RemoveFromWorld();
		}
		PlantDef = plantInitParameters.PlantDef;
	}
	mLastEvaluationTime = SimClock.ElapsedTime(TimeUnit.Hours);
	mWaterLevel = 50f;
	float maxValue = kDailyEvaluatePlantGrowthVarianceInSimMinutes / 60f;
	float num = RandomUtil.GetFloat(maxValue);
	mDailyEvaluatePlantGrowthAlarm = AddAlarmDay(5f + num, DaysOfTheWeek.All, EvaluatePlantGrowth, "PlantGrowth: " + ToString(), AlarmType.AlwaysPersisted);
	PlantGrowthState growthState = PlantGrowthState.Planted;
	if (plantInitParameters != null && plantInitParameters.Soil is SoilAutoPlant soilAutoPlant)
	{
		growthState = soilAutoPlant.GetInitGrowthState();
	}
	SetGrowthState(growthState);
	UpdateHealth();
	UpdateSeasonalState();
	UpdateMaterialState();
}
