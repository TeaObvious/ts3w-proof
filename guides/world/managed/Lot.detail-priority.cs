/* Analyst: original PC 1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Core.Lot.
   Complete original priority producer, calculator and per-lot simulation consumer. Home=2 takes precedence; a non-rabbithole active household member gives PlayerSim=1; otherwise None=0. No Camera=3 or Active=4 output is produced here.
   Original selected metadata tokens: 0x0600f2cc, 0x0600f2cd, 0x0600f2ce.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using Sims3.Gameplay.Actors;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;

public override void Simulate()
{
	while (true)
	{
		mSavedData.mAlarmManager.Simulate();
		UpdateDoorPrivacy();
		UpdateDetailPriority();
		if (DisplayLevelChanged)
		{
			UpdateDisplayLevelInfo();
			DisplayLevelChanged = false;
		}
		if (ShouldSimulate)
		{
			if (mLastTime == 0f)
			{
				mLastTime = SimClock.ElapsedTime(TimeUnit.Minutes);
			}
			else
			{
				float timePassed = SimClock.ElapsedTimeInMinutes(ref mLastTime);
				UpdateReactions(timePassed, simulateFullLot: true);
				if (GameUtils.IsInstalled(ProductVersion.EP7))
				{
					UpdateNumZombiesOnLot(timePassed);
				}
			}
		}
		else if (mSavedData.mBroadcastersWithSims.Count > 0)
		{
			if (mLastTime == 0f)
			{
				mLastTime = SimClock.ElapsedTime(TimeUnit.Minutes);
			}
			else
			{
				float timePassed2 = SimClock.ElapsedTimeInMinutes(ref mLastTime);
				UpdateReactions(timePassed2, simulateFullLot: false);
			}
		}
		else
		{
			Simulator.Sleep(kInactiveLotSleepTicks);
		}
		Simulator.Sleep(0u);
	}
}
private void UpdateDetailPriority()
{
	World.LotSetDetailPriority(LotId, CalculateDetailPriority());
}
private LotDetailPriority CalculateDetailPriority()
{
	Household activeHousehold = Household.ActiveHousehold;
	if (activeHousehold != null)
	{
		if (activeHousehold.LotHome == this)
		{
			return LotDetailPriority.Home;
		}
		foreach (Sim allActor in Household.ActiveHousehold.AllActors)
		{
			if (allActor.LotCurrent == this && allActor.RabbitHoleCurrent == null)
			{
				return LotDetailPriority.PlayerSim;
			}
		}
	}
	return LotDetailPriority.None;
}
