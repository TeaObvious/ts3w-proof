// Original PC 1.67 Sims3GameplaySystems.dll; actual complete ILSpy type export.
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;

namespace Sims3.Gameplay.Visa;

public static class ArriveHomeBehaviorInVacationWorld
{
	private static AlarmHandle mPushArriveHomeInteraction = AlarmHandle.kInvalidHandle;

	[PersistableStatic(true)]
	private static bool sNeedsToShowDormModal = true;

	public static void SetupArriveHomeInteractionAlarm()
	{
		Household travelHousehold = GameStates.TravelHousehold;
		if (travelHousehold != null)
		{
			mPushArriveHomeInteraction = AlarmManager.Global.AddAlarm(1f, TimeUnit.Minutes, PushArriveHomeInteraction, "Travelers arrive at home", AlarmType.AlwaysPersisted, travelHousehold);
		}
	}

	private static void PushArriveHomeInteraction()
	{
		try
		{
			Household activeHousehold = Household.ActiveHousehold;
			Lot lotHome = activeHousehold.LotHome;
			if (GameStates.DestinationTravelWorld == WorldName.FutureWorld)
			{
				if (ShouldArriveByTimePortal(lotHome, out var portals))
				{
					if (portals[0].PushArriveInteraction(activeHousehold.AllSimDescriptions))
					{
					}
					return;
				}
				{
					foreach (Sim allActor in activeHousehold.AllActors)
					{
						VisualEffect visualEffect = VisualEffect.Create("repoTeleport");
						visualEffect.SetPosAndOrient(allActor.Position, allActor.ForwardVector, allActor.UpVector);
						visualEffect.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
						allActor.FadeIn();
					}
					return;
				}
			}
			IGameObject gameObject = FindRouteDestinationGameObject(lotHome);
			if (gameObject == null)
			{
				return;
			}
			foreach (Sim allActor2 in activeHousehold.AllActors)
			{
				if (allActor2.InteractionQueue.Count == 0)
				{
					InteractionInstance interactionInstance = null;
					interactionInstance = ((GameStates.DestinationTravelWorld != WorldName.University) ? TravelUtil.TriggerArrivalRouteWithinHomeLotAtVacationWorld.Singleton.CreateInstance(gameObject, allActor2, new InteractionPriority(InteractionPriorityLevel.UserDirected, -2f), isAutonomous: false, cancellableByPlayer: false) : TravelUtil.ArrivalRouteHomeInMovingVanInUniversityWorld.Singleton.CreateInstance(gameObject, allActor2, new InteractionPriority(InteractionPriorityLevel.UserDirected, -2f), isAutonomous: false, cancellableByPlayer: false));
					allActor2.InteractionQueue.Add(interactionInstance);
				}
			}
		}
		finally
		{
			Lot lotHome2 = Household.ActiveHousehold.LotHome;
			if (sNeedsToShowDormModal && lotHome2 != null && lotHome2.IsDormitoryLot)
			{
				Simulator.AddObject(new OneShotFunction(ShowDormModal));
				sNeedsToShowDormModal = false;
			}
			mPushArriveHomeInteraction = AlarmHandle.kInvalidHandle;
		}
	}

	public static bool ShouldArriveByTimePortal(Lot home, out ITimePortal[] portals)
	{
		portals = null;
		if (GameStates.DestinationTravelWorld != WorldName.FutureWorld && GameStates.ReturningFromWorld != WorldType.Future)
		{
			return false;
		}
		if (home != null)
		{
			portals = home.GetObjects<ITimePortal>();
			if (portals != null && portals.Length > 0 && portals[0] != null)
			{
				return true;
			}
		}
		return false;
	}

	private static void ShowDormModal()
	{
		SimpleMessageDialog.Show(Localization.LocalizeString("Gameplay/Excel/Tutorial/Tutorialettes:DormitoryTutorialKey"), Localization.LocalizeString("Gameplay/University:WelcomeToDormsText"));
	}

	private static IGameObject FindRouteDestinationGameObject(Lot home)
	{
		IGameObject gameObject = null;
		if (home != null)
		{
			if (home.CommercialLotSubType == CommercialLotSubType.kEP1_BaseCamp)
			{
				gameObject = home.FindPostBox();
			}
			else
			{
				gameObject = home.GetFrontDoor(eFrontDoorType.kFrontDoorTypeDefault);
				if (gameObject == null)
				{
					gameObject = home.FindMailbox();
				}
			}
		}
		return gameObject;
	}
}
