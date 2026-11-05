// Selected original members, not a standalone compilable type; no target code executed.
// Sims3.Gameplay.Core.LotManager; assembly Sims3GameplaySystems MVID e8701302-f3cd-4f23-9387-d9d17a68ff9e
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects.Fishing;
using Sims3.Gameplay.Objects.Vehicles;
using Sims3.Gameplay.Seasons;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.UI;
using Sims3.SimIFace;

public static void EnterBuildBuyMode(Lot lot, bool disableFunds)
{
	if (lot == null)
	{
		foreach (Lot value in sLots.Values)
		{
			if (value.IsEditable)
			{
				lot = value;
				break;
			}
		}
	}
	if (lot == null)
	{
		lot = ActiveLot;
	}
	sActiveBuildBuyLot = lot;
	sIsBuildBuyModeOn = true;
	sFamilyFundsDisabled = disableFunds;
	CarOwnable.sCanShowCarTns = true;
	BoatOwnable.sCanShowBoatTns = true;
	Bicycle.sCanShowBikeTns = true;
	LockActiveLot(lot);
	lot.MakeLotMetricsDirty();
	World.LotClusterTrees(lot.LotId, cluster: false);
	if (SeasonsManager.Enabled)
	{
		SeasonsManager.OnEnterBuildBuy(lot);
	}
	IBuildBuyListener[] objects = sActiveBuildBuyLot.GetObjects<IBuildBuyListener>();
	foreach (IBuildBuyListener buildBuyListener in objects)
	{
		buildBuyListener.OnEnterBuildBuyMode();
	}
	FishingSpot.EnterBuildMode(sActiveBuildBuyLot);
	IntroTutorial.StateComplete(TutorialStates.BuyModeEntered);
	Camera.OnEnterBuildBuy(lot.LotId);
	if (TombRoomManager.CreateOrRemoveTombRoomManagerFromLotAsNecessary(sActiveBuildBuyLot))
	{
		sActiveBuildBuyLot.TombRoomManager.OnEnterBuildBuyMode();
	}
	ISlidingBookcase[] objects2 = sActiveBuildBuyLot.GetObjects<ISlidingBookcase>();
	ISlidingBookcase[] array = objects2;
	foreach (ISlidingBookcase slidingBookcase in array)
	{
		slidingBookcase.UnfogThisRoom();
	}
	if (!Responder.Instance.ClockSpeedModel.GameSpeedLocked)
	{
		Gameflow.LockGameSpeed(Sims3.SimIFace.Gameflow.GameSpeed.Pause);
	}
	if (EnteringBuildBuyMode != null)
	{
		EnteringBuildBuyMode();
	}
}

using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.ActiveCareer.ActiveCareers;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Careers;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.Objects.Fishing;
using Sims3.Gameplay.Pools;
using Sims3.Gameplay.RealEstate;
using Sims3.Gameplay.Seasons;
using Sims3.Gameplay.Tutorial;
using Sims3.Gameplay.UI;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI.Hud;

public static void ExitBuildBuyMode()
{
	UserToolUtils.FlushCommandQueues();
	Simulator.Sleep(0u);
	Route.OnExitBuildBuy();
	if (SeasonsManager.Enabled && GameStates.NextInWorldStateId == InWorldState.SubState.LiveMode)
	{
		SeasonsManager.OnExitBuildBuy(sActiveBuildBuyLot);
	}
	if (ActiveLot != null)
	{
		World.LotClusterTrees(ActiveLot.LotId, cluster: true);
		foreach (Sim sim in ActiveLot.GetSims())
		{
			sim.UpdateEnvironment = true;
			if (!(sim.Posture is SwimmingInPool) || sim.Posture.Container == null || !sim.Posture.Container.HasBeenDestroyed)
			{
				continue;
			}
			Pool poolNearestPoint = Pool.GetPoolNearestPoint(sim.Position);
			if (poolNearestPoint == null)
			{
				sim.SetObjectToReset();
				continue;
			}
			SwimmingInPool swimmingInPool = sim.Posture as SwimmingInPool;
			swimmingInPool.ContainerPool = poolNearestPoint;
			if (!poolNearestPoint.IsActorUsingMe(sim))
			{
				poolNearestPoint.AddToUseList(sim);
			}
		}
		ActiveLot.RefreshObjectCaches();
		Door[] objects = ActiveLot.GetObjects<Door>();
		foreach (Door door in objects)
		{
			door.OnBuildBuyExit();
		}
		ActiveLot.TimeOfLastBuildBuy = SimClock.CurrentTime();
	}
	foreach (Sim sActor in sActorList)
	{
		if (sActor != null && sActor.SimRoutingComponent != null)
		{
			sActor.SimRoutingComponent.OnBuildBuyExit();
		}
	}
	if (GameStates.NextInWorldStateId == InWorldState.SubState.EditTown)
	{
		GameObject.SendBoughtEventForEditTownMode();
	}
	else if (InteriorDesigner.ActiveRenovation == null)
	{
		GameObject.DepreciateNewPurchasesAndSendBoughtEvent();
	}
	IBuildBuyListener[] objects2 = sActiveBuildBuyLot.GetObjects<IBuildBuyListener>();
	foreach (IBuildBuyListener buildBuyListener in objects2)
	{
		buildBuyListener.OnExitBuildBuyMode();
	}
	if (HudModel.LightsToggledByDayNightMode != null)
	{
		foreach (LightGameObject item in HudModel.LightsToggledByDayNightMode)
		{
			if (Sims3.SimIFace.Objects.IsValid(item.ObjectId))
			{
				item.SwitchLight(turnOn: false, setUserControlled: false);
			}
		}
		HudModel.LightsToggledByDayNightMode = null;
	}
	IntroTutorial.StateComplete(TutorialStates.ReturnedToLiveMode);
	FishingSpot.ExitBuildMode(sActiveBuildBuyLot);
	Camera.OnExitBuildBuy();
	if (TombRoomManager.CreateOrRemoveTombRoomManagerFromLotAsNecessary(sActiveBuildBuyLot))
	{
		sActiveBuildBuyLot.TombRoomManager.OnExitBuildBuyMode();
	}
	ISlidingBookcase[] objects3 = sActiveBuildBuyLot.GetObjects<ISlidingBookcase>();
	ISlidingBookcase[] array = objects3;
	foreach (ISlidingBookcase slidingBookcase in array)
	{
		slidingBookcase.FogIfUnexplored();
	}
	sActiveBuildBuyLot.CalculateMetaAutonomyTypeAndConsiderAddingToPublicMetaObjects();
	sActiveBuildBuyLot.UpdateVirtualResidentialSlots();
	if (GameStates.NextInWorldStateId != InWorldState.SubState.EditTown)
	{
		sActiveBuildBuyLot.AssignNPCDoors();
	}
	sActiveBuildBuyLot.VerifyLocationOpportunity();
	sActiveBuildBuyLot.FrontDoorCalculatedValidated = false;
	sActiveBuildBuyLot.FrontDoorOverrideValidated = false;
	sActiveBuildBuyLot.BestRouteIntoLotLocationValidated = false;
	sActiveBuildBuyLot.UpdateRoomMarkers();
	sActiveBuildBuyLot.UpdateCachedValues();
	RealEstateManager.OnExitBuildBuy();
	sActiveBuildBuyLot = null;
	sIsBuildBuyModeOn = false;
	UnlockActiveLot();
	Gameflow.UnlockGameSpeed();
	foreach (Situation sAllSituation in Situation.sAllSituations)
	{
		sAllSituation.OnExitBuildBuyMode();
	}
	BorderTreatmentsController.OnExitBuildBuyMode();
	CareerManager.FixUpCareersAndCareerLocations();
	if (ExitingBuildBuyMode != null)
	{
		ExitingBuildBuyMode();
	}
}

using Sims3.SimIFace;

public static void ClusterAllLotTrees()
{
	foreach (ulong key in sLots.Keys)
	{
		World.LotClusterTrees(key, cluster: true);
	}
}


// Sims3.SimIFace.World; assembly SimIFace MVID e4365bd8-6054-4cb5-8702-c69b1c102ce9
public static void LotClusterTrees(ulong lotId, bool cluster)
{
	if (gWorld != null)
	{
		gWorld.LotClusterTrees(lotId, cluster);
	}
}


