// Original PC 1.67 Sims3GameplaySystems.dll; actual complete ILSpy type export.
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Academics;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Careers;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Services;
using Sims3.Gameplay.Socializing;
using Sims3.Gameplay.TimeTravel;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;

namespace Sims3.Gameplay.Visa;

public static class ReturnHomeBehaviorInHomeWorld
{
	private const int kMaximumNumberOfAttempts = 10;

	private static List<SimDescription> mCarTravelers;

	private static List<SimDescription> mEarlyDepartureSims;

	private static AlarmHandle mRideInCarAlarm = AlarmHandle.kInvalidHandle;

	private static AlarmHandle mDegreeUpdatesAlarm = AlarmHandle.kInvalidHandle;

	private static WorldType mReturningFromWorld = WorldType.Undefined;

	public static WorldType ReturningFromWorld => mReturningFromWorld;

	public static void SetupReturnHomeBehavior(List<SimDescription> carTravelers, List<SimDescription> earlyDepartureSims)
	{
		mReturningFromWorld = GameStates.ReturningFromWorld;
		if (carTravelers != null && carTravelers.Count > 0)
		{
			if (mRideInCarAlarm == AlarmHandle.kInvalidHandle)
			{
				mCarTravelers = carTravelers;
				mEarlyDepartureSims = earlyDepartureSims;
				mRideInCarAlarm = AlarmManager.Global.AddAlarm(1f, TimeUnit.Minutes, TriggerReturnHomeSequence, "Travelers return home", AlarmType.AlwaysPersisted, mCarTravelers[0]);
			}
			if (GameStates.ReturningFromWorld == WorldType.University && mDegreeUpdatesAlarm == AlarmHandle.kInvalidHandle)
			{
				mDegreeUpdatesAlarm = AlarmManager.Global.AddAlarm(1f, TimeUnit.Minutes, TriggerDegreeUpdates, "SetupDegreeBonuses Alarm", AlarmType.AlwaysPersisted, mCarTravelers[0]);
			}
		}
	}

	private static void TriggerReturnHomeSequence()
	{
		try
		{
			SetupReturnHomeInteractions();
			ScatterEarlyDepartureSim();
			Gameflow.SetGameSpeed(Sims3.SimIFace.Gameflow.GameSpeed.Normal, Gameflow.SetGameSpeedContext.Gameplay);
			if (PlumbBob.SelectedActor == null)
			{
				return;
			}
			GrimReaperSituation.CheckForAbandonedChildren(PlumbBob.SelectedActor.Household);
			foreach (Sim allActor in Household.ActiveHousehold.AllActors)
			{
				allActor.Motives.SetMotivesToTimedDefaultsAndRemoveBuffs(fromTravel: true);
			}
		}
		finally
		{
			mRideInCarAlarm = AlarmHandle.kInvalidHandle;
		}
	}

	private static void TriggerDegreeUpdates()
	{
		try
		{
			foreach (Sim allActor in Household.ActiveHousehold.AllActors)
			{
				allActor.OccupationAsCareer?.UpdateCareerBonusesForDegree();
				AcademicDegreeManager degreeManager = allActor.CareerManager.DegreeManager;
				if (degreeManager == null)
				{
					continue;
				}
				AcademicDegree element = degreeManager.GetElement(degreeManager.LastStudiedDegree);
				if (element != null && element.IsDegreeCompleted)
				{
					Career.ShowUploadResumeTns(allActor);
					if (!element.IsRewardsGranted)
					{
						CollegeGraduation.GraduateInPlace entry = CollegeGraduation.GraduateInPlace.Singleton.CreateInstance(allActor, allActor, new InteractionPriority(InteractionPriorityLevel.High), isAutonomous: false, cancellableByPlayer: false) as CollegeGraduation.GraduateInPlace;
						allActor.InteractionQueue.AddNext(entry);
					}
				}
			}
		}
		finally
		{
			mDegreeUpdatesAlarm = AlarmHandle.kInvalidHandle;
		}
	}

	private static void SetupReturnHomeInteractions()
	{
		Household activeHousehold = Household.ActiveHousehold;
		if (activeHousehold == null || activeHousehold.LotHome == null)
		{
			return;
		}
		if (mReturningFromWorld == WorldType.Future)
		{
			if (CauseEffectService.GetInstance().GetDepartureTimePortal() is ITimePortal timePortal && timePortal.PushArriveInteraction(mCarTravelers))
			{
			}
			return;
		}
		Lot farthestLot = LotManager.GetFarthestLot(activeHousehold.LotHome);
		if (farthestLot == null)
		{
			return;
		}
		Sim sim = null;
		Vector3 position = Vector3.Invalid;
		List<Sim> list = new List<Sim>();
		for (int i = 0; i < mCarTravelers.Count; i++)
		{
			Sim createdSim = mCarTravelers[i].CreatedSim;
			if (sim == null)
			{
				sim = createdSim;
				position = Service.GetPositionInRandomLot(farthestLot);
				sim.SetPosition(position);
			}
			else
			{
				ActiveTopic.AddToSim(createdSim, "Attended University");
				createdSim.SetPosition(position);
				list.Add(createdSim);
			}
		}
		if (mReturningFromWorld != WorldType.University)
		{
			if (TravelUtil.SitInCarToReturnHomeWithinHomeWorld.Singleton.CreateInstance(sim.LotHome, sim, new InteractionPriority(InteractionPriorityLevel.Autonomous, 1f), isAutonomous: false, cancellableByPlayer: true) is TravelUtil.SitInCarToReturnHomeWithinHomeWorld sitInCarToReturnHomeWithinHomeWorld)
			{
				sitInCarToReturnHomeWithinHomeWorld.Followers = list;
				sim.InteractionQueue.Add(sitInCarToReturnHomeWithinHomeWorld);
			}
		}
		else if (TravelUtil.ArrivalRouteHomeInMovingVanInHomeWorld.Singleton.CreateInstance(sim.LotHome, sim, new InteractionPriority(InteractionPriorityLevel.Autonomous), isAutonomous: false, cancellableByPlayer: true) is TravelUtil.ArrivalRouteHomeInMovingVanInHomeWorld arrivalRouteHomeInMovingVanInHomeWorld)
		{
			arrivalRouteHomeInMovingVanInHomeWorld.Followers = list;
			sim.InteractionQueue.Add(arrivalRouteHomeInMovingVanInHomeWorld);
		}
		mReturningFromWorld = WorldType.Undefined;
	}

	private static void ScatterEarlyDepartureSim()
	{
		if (mEarlyDepartureSims == null || mEarlyDepartureSims.Count == 0)
		{
			return;
		}
		Lot lotHome = mEarlyDepartureSims[0].LotHome;
		List<GameObject> list = new List<GameObject>(lotHome.GetObjects<GameObject>());
		if (list.Count == 0)
		{
			return;
		}
		for (int i = 0; i < mEarlyDepartureSims.Count; i++)
		{
			Sim createdSim = mEarlyDepartureSims[i].CreatedSim;
			Vector3 vector = Vector3.Invalid;
			int num = 0;
			while (list.Count > 0 && num < 10 && vector == Vector3.Invalid)
			{
				GameObject randomObjectFromList = RandomUtil.GetRandomObjectFromList(list);
				list.Remove(randomObjectFromList);
				num++;
				World.FindGoodLocationParams fglParams = new World.FindGoodLocationParams(randomObjectFromList.PositionOnFloor);
				if (GlobalFunctions.FindGoodLocation(createdSim, fglParams, out var pos, out var _) && createdSim.IsPointInLotSafelyRoutable(lotHome, pos))
				{
					vector = pos;
				}
			}
			if (vector == Vector3.Invalid)
			{
				createdSim.AttemptToPutInSafeLocation(sendHome: true);
			}
			else
			{
				createdSim.SetPosition(vector);
			}
			ActiveTopic.AddToSim(createdSim, "Attended University");
		}
	}
}
