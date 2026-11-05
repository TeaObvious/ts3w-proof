// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.ObjectComponents.PortalComponent.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Objects.Elevator;
using Sims3.Gameplay.Pools;
using Sims3.Gameplay.Routing;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;

namespace Sims3.Gameplay.ObjectComponents;

public abstract class PortalComponent : StaticObjectComponent
{
	[Flags]
	public enum LaneInfoFlags
	{
		None = 0,
		ForcePortalPlan = 1,
		PlanToSlotNotPosition = 2,
		PortalPlanIgnoresPortalObject = 4,
		ElevatorDoor = 8,
		NoLanesAvailableFailsRoute = 0x10,
		NoLanesAvailableSkipsAdditionalLaneChecks = 0x20,
		Default = PortalPlanIgnoresPortalObject,
		IrregularLane = ForcePortalPlan | PlanToSlotNotPosition
	}

	public struct LaneInfo(uint index, Slot[] slots, LaneInfoFlags flags)
	{
		public uint mLaneIndex = index;

		public Slot[] mLaneSlots = slots;

		public LaneInfoFlags mLaneFlags = flags;

		public bool IrregularLane => LaneInfoFlags.IrregularLane != (mLaneFlags & LaneInfoFlags.ForcePortalPlan);

		public bool ForcePortalPlan => 0 != (mLaneFlags & LaneInfoFlags.ForcePortalPlan);

		public bool PlanToSlotNotPosition => 0 != (mLaneFlags & LaneInfoFlags.PlanToSlotNotPosition);

		public bool PortalPlanIgnoresPortalObject => 0 != (mLaneFlags & LaneInfoFlags.PortalPlanIgnoresPortalObject);

		public bool ElevatorDoor => 0 != (mLaneFlags & LaneInfoFlags.ElevatorDoor);

		public bool NoLanesAvailableFailsRoute => 0 != (mLaneFlags & LaneInfoFlags.NoLanesAvailableFailsRoute);

		public bool NoLanesAvailableSkipsAdditionalLaneChecks => 0 != (mLaneFlags & LaneInfoFlags.NoLanesAvailableSkipsAdditionalLaneChecks);

		public void DEBUG_CheckLaneFlags(GameObject portalObject)
		{
		}
	}

	private enum LaneStatus
	{
		None,
		OnAtPortalObjectEventReceived,
		OnCompletedPortalObjectEventReceived
	}

	public delegate void AddPortalsCallback();

	protected enum PortalAddInitTime
	{
		None,
		OnCreation,
		OnStartup
	}

	private class AcquireLaneRouteAction : RouteAction
	{
		private Sim mRoutingSim;

		private GameObject mPortalObject;

		private Route mRoute;

		private ActionResult mActionResult;

		public override GameObject RoutingObject => mRoutingSim;

		private AcquireLaneRouteAction()
		{
		}

		public AcquireLaneRouteAction(Sim routingSim, GameObject portalObject, Route route)
		{
			mRoutingSim = routingSim;
			mPortalObject = portalObject;
			mRoute = route;
		}

		public override ActionResult PerformAction()
		{
			mRoutingSim.SimRoutingComponent.EnableDynamicFootprint();
			mActionResult = ActionResult.Terminate;
			if (AcquireLane())
			{
				mActionResult = ActionResult.Continue;
			}
			mRoutingSim.SimRoutingComponent.DisableDynamicFootprint();
			return mActionResult;
		}

		private bool WaitInLine(ElevatorDoors elevatorDoors)
		{
			if (elevatorDoors != null)
			{
				elevatorDoors.Line.RemoveFromQueue(mRoutingSim);
				if (elevatorDoors.InteriorObj != null && elevatorDoors.InteriorObj.ElevatorPortal.ElevatorHasEnoughSimsToTeleportSkip() && elevatorDoors.ElevatorDoorsPortal.TryTeleportSkip(mRoutingSim))
				{
					mActionResult = ActionResult.ContinueAndPopPathAndReplan;
					mRoutingSim.RoutingComponent.ClearQueuedActions();
					mRoutingSim.ClearExitReasons();
					return false;
				}
				if (!elevatorDoors.Line.WaitForTurn(mRoutingSim.CurrentInteraction, elevatorDoors, SimQueue.WaitBehavior.DontPlayRouteFail | SimQueue.WaitBehavior.OrderByProximity, ExitReason.Default | ExitReason.MidRoutePushRequested, ElevatorInterior.ElevatorSimQueueWaitBeforeTeleportSkipTime))
				{
					if (mRoutingSim.HasExitReason(ExitReason.TimedOut))
					{
						if (elevatorDoors.ElevatorDoorsPortal.TryTeleportSkip(mRoutingSim))
						{
							mActionResult = ActionResult.ContinueAndPopPathAndReplan;
							mRoutingSim.RoutingComponent.ClearQueuedActions();
							mRoutingSim.ClearExitReasons();
							return false;
						}
					}
					else if (mRoutingSim.HasExitReason(ExitReason.MidRoutePushRequested))
					{
						AddFailureExplanation(FailureExplanation.CancelledByScript);
						mActionResult = ActionResult.Continue;
						return false;
					}
					mRoutingSim.ClearExitReasons();
				}
			}
			return true;
		}

		private bool AcquireLane()
		{
			if (mRoutingSim == null || mPortalObject == null || mPortalObject.PortalComponent == null || mRoute == null)
			{
				return false;
			}
			bool flag = 0 != (mPortalObject.PortalComponent.GetLaneFlagsForLaneIndex(0u) & LaneInfoFlags.ElevatorDoor);
			ElevatorDoors elevatorDoors = null;
			if (flag)
			{
				elevatorDoors = mPortalObject as ElevatorDoors;
			}
			if (elevatorDoors != null)
			{
				if (elevatorDoors.InteriorObj != null && elevatorDoors.InteriorObj.ElevatorPortal.IsSimInElevator(mRoutingSim))
				{
					elevatorDoors = null;
				}
				else if (!WaitInLine(elevatorDoors))
				{
					Simulator.Sleep(0u);
					return false;
				}
			}
			Vector3 preferredPos = mRoutingSim.Position;
			if (mRoutingSim.RoutingComponent.GetRouteActionAfter(this) is PortalAction portalAction)
			{
				preferredPos = portalAction.PortalStartPos;
			}
			if (mPortalObject.PortalComponent.IsFullyBlocked(mRoutingSim))
			{
				elevatorDoors?.Line.RemoveFromQueue(mRoutingSim);
				return false;
			}
			if (mPortalObject.PortalComponent.LockRoutingLane(mRoutingSim, preferredPos, checkForSims: false, Route.RouteOption.None, out var preferredLaneSelected))
			{
				elevatorDoors?.Line.RemoveFromQueue(mRoutingSim);
				return true;
			}
			float num = 20f;
			ExitReason acceptedExitReasons = ExitReason.Canceled;
			if (flag)
			{
				num = ElevatorInterior.ElevatorGiveUpTime;
				Route currentRoute = mRoutingSim.RoutingComponent.GetCurrentRoute();
				if (currentRoute != null)
				{
					acceptedExitReasons = (ExitReason)currentRoute.ExitReasonsInterrupt;
				}
			}
			mRoutingSim.LoopIdle();
			float num2 = SimClock.ElapsedTime(TimeUnit.Minutes);
			while (!mRoutingSim.WaitForExitReason(0.25f, acceptedExitReasons))
			{
				if (elevatorDoors != null && !WaitInLine(elevatorDoors))
				{
					return false;
				}
				float num3 = SimClock.ElapsedTime(TimeUnit.Minutes);
				if (num3 - num2 >= num)
				{
					break;
				}
				if (mPortalObject.PortalComponent.LockRoutingLane(mRoutingSim, preferredPos, checkForSims: false, Route.RouteOption.None, out preferredLaneSelected))
				{
					elevatorDoors?.Line.RemoveFromQueue(mRoutingSim);
					return true;
				}
			}
			elevatorDoors?.Line.RemoveFromQueue(mRoutingSim);
			return false;
		}
	}

	private const float kMinWalkAwayRadius = 0.75f;

	private const float kMaxWalkAwayRadius = 3f;

	private const float kWaitingAreaConeAngle = 45f;

	private Dictionary<Sim, LaneInfo> mLockedLaneIndices = new Dictionary<Sim, LaneInfo>();

	[Persistable(false)]
	protected AddPortalsCallback mAddPortalsCallback;

	[CompilerGenerated]
	private static Predicate<Slot> <>9__CachedAnonymousMethodDelegate1;

	public override Type BaseType => typeof(PortalComponent);

	public bool NoLanesAvailableFailsRoute => 0 != (GetLaneFlagsForLaneIndex(0u) & LaneInfoFlags.NoLanesAvailableFailsRoute);

	protected virtual PortalAddInitTime ShouldAddPortalAtInit => PortalAddInitTime.None;

	protected abstract bool AddToUseListDuringTraversal { get; }

	protected abstract bool RemoveFromUseListAfterTraversal { get; }

	public abstract bool CanUseUmbrella { get; }

	public virtual bool UseStartAnimWhenExitingPortal => true;

	public PortalComponent()
	{
	}

	public PortalComponent(GameObject o)
		: base(o)
	{
		RefreshDebugHoverText();
	}

	public override void OnCreation()
	{
		if (ShouldAddPortalAtInit == PortalAddInitTime.OnCreation && World.HandToolGetObjectHeld() != Owner.ObjectId && mAddPortalsCallback != null)
		{
			mAddPortalsCallback();
		}
		base.OnCreation();
	}

	public override void OnStartup()
	{
		if (ShouldAddPortalAtInit == PortalAddInitTime.OnStartup && World.HandToolGetObjectHeld() != Owner.ObjectId && mAddPortalsCallback != null)
		{
			mAddPortalsCallback();
		}
		base.OnStartup();
	}

	private static void InvokeAddPortalsCallback(ulong objectId)
	{
		IScriptProxy proxy = Simulator.GetProxy(new ObjectGuid(objectId));
		if (proxy != null && proxy.Target is GameObject { PortalComponent: { mAddPortalsCallback: not null } portalComponent })
		{
			portalComponent.mAddPortalsCallback();
		}
	}

	public override void Dispose()
	{
		ClearRouteActionDelegates();
		base.Dispose();
	}

	public override void OnReset()
	{
		ClearRouteActionDelegates();
		base.OnReset();
	}

	private void ClearRouteActionDelegates()
	{
		foreach (Sim item in Owner.ActorsUsingMe)
		{
			if (item.RoutingComponent != null)
			{
				item.RoutingComponent.OnRouteActionsFinished -= OnSimRouteActionsFinished;
			}
		}
	}

	private void RefreshDebugHoverText()
	{
	}

	public void OnHandToolPickup(ePickupTypeHandTool pickupType)
	{
		if (mAddPortalsCallback != null && Owner != null)
		{
			Route.RemovePortals(Owner.ObjectId);
		}
	}

	public void OnHandToolPlacement()
	{
		if (mAddPortalsCallback != null)
		{
			mAddPortalsCallback();
		}
	}

	public virtual bool LockRoutingLane(Sim s, Vector3 preferredPos, bool checkForSims, Route.RouteOption routeOptions, out bool preferredLaneSelected)
	{
		if (GetLaneInfo(s, out var lane))
		{
			preferredLaneSelected = false;
			return true;
		}
		if (GetFreeRoutingLane(s, preferredPos, checkForSims, routeOptions, out lane, out preferredLaneSelected))
		{
			mLockedLaneIndices.Add(s, lane);
			OnLaneLocked(s, lane);
			if (AddToUseListDuringTraversal && !Owner.IsActorUsingMe(s))
			{
				Owner.AddToUseList(s);
			}
			RefreshDebugHoverText();
			return true;
		}
		RefreshDebugHoverText();
		return false;
	}

	private bool GetFreeRoutingLane(Sim s, Vector3 preferredPos, bool checkForSims, Route.RouteOption routeOptions, out LaneInfo laneInfo, out bool preferredLaneSelected)
	{
		preferredLaneSelected = true;
		List<Slot> startSlotsForApproachingSim = GetStartSlotsForApproachingSim(s, preferredPos, ref preferredLaneSelected);
		List<Slot> list = new List<Slot>(startSlotsForApproachingSim);
		Slot slot = Slot.None;
		Slot slot2 = Slot.None;
		Slot slot3 = Slot.None;
		Slot slot4 = Slot.None;
		uint num = uint.MaxValue;
		list.RemoveAll((Slot slot5) => slot5 == Slot.None);
		while (list.Count > 0 && slot == Slot.None)
		{
			Slot nearestSlot = Owner.GetNearestSlot(s, isExitSlot: false, preferredPos, list.ToArray());
			Slot pairedSlot = GetPairedSlot(nearestSlot);
			uint laneIndexFromSlot = GetLaneIndexFromSlot(nearestSlot);
			bool flag = true;
			foreach (KeyValuePair<Sim, LaneInfo> mLockedLaneIndex in mLockedLaneIndices)
			{
				if (mLockedLaneIndex.Value.mLaneIndex == laneIndexFromSlot)
				{
					if (mLockedLaneIndex.Value.mLaneSlots[0] != nearestSlot || mLockedLaneIndex.Value.ElevatorDoor)
					{
						flag = false;
					}
					break;
				}
			}
			LaneInfo laneInfo2 = new LaneInfo(laneIndexFromSlot, new Slot[2] { nearestSlot, pairedSlot }, GetLaneFlagsForLaneIndex(laneIndexFromSlot));
			if (flag && !DoAdditionalLaneChecks(preferredLaneSelected, s, laneInfo2))
			{
				flag = false;
				if (laneInfo2.NoLanesAvailableSkipsAdditionalLaneChecks && slot3 == Slot.None)
				{
					slot3 = nearestSlot;
					slot4 = pairedSlot;
				}
			}
			if (flag && !IsLaneUnobstructed(new Slot[2] { nearestSlot, pairedSlot }, s, checkForSims: true, Route.RouteOption.None))
			{
				flag = false;
				if (slot3 == Slot.None)
				{
					slot3 = nearestSlot;
					slot4 = pairedSlot;
				}
			}
			if (!flag)
			{
				list.Remove(nearestSlot);
				preferredLaneSelected = false;
				continue;
			}
			slot = nearestSlot;
			num = laneIndexFromSlot;
			slot2 = pairedSlot;
			break;
		}
		if (slot == Slot.None)
		{
			if (slot3 != Slot.None)
			{
				laneInfo.mLaneIndex = GetLaneIndexFromSlot(slot3);
				laneInfo.mLaneSlots = new Slot[2] { slot3, slot4 };
				laneInfo.mLaneFlags = GetLaneFlagsForLaneIndex(laneInfo.mLaneIndex);
				laneInfo.DEBUG_CheckLaneFlags(Owner);
				return true;
			}
			laneInfo.mLaneIndex = uint.MaxValue;
			laneInfo.mLaneSlots = new Slot[0];
			laneInfo.mLaneFlags = GetLaneFlagsForLaneIndex(uint.MaxValue);
			laneInfo.DEBUG_CheckLaneFlags(Owner);
			return false;
		}
		laneInfo.mLaneIndex = num;
		laneInfo.mLaneSlots = new Slot[2] { slot, slot2 };
		laneInfo.mLaneFlags = GetLaneFlagsForLaneIndex(num);
		laneInfo.DEBUG_CheckLaneFlags(Owner);
		return true;
	}

	protected virtual bool DoAdditionalLaneChecks(bool bPreferedLane, Sim s, LaneInfo laneInfo)
	{
		return true;
	}

	public bool WaitForLaneAndPlantToItRouteInterruptCallback(Sim s, Route interruptedPath)
	{
		AcquireLaneRouteAction acquireLaneRouteAction = new AcquireLaneRouteAction(s, Owner, interruptedPath);
		if ((GetLaneFlagsForLaneIndex(0u) & LaneInfoFlags.ElevatorDoor) != 0)
		{
			s.RoutingComponent.InsertRouteActionNext(acquireLaneRouteAction);
		}
		else
		{
			Route route = ComponentCreateRoute(s);
			Vector3 vector = Owner.Position - s.Position;
			Vector3 sideOfSlot = Owner.GetSideOfSlot(Owner.GetNearestRoutingSlot(s.Position));
			float num = vector * sideOfSlot;
			if (num >= 0f)
			{
				sideOfSlot *= -1f;
			}
			route.PlanToPointRadialRange(null, s.Position, 0.75f, 3f, sideOfSlot, 45f, RouteDistancePreference.PreferNearestToRouteDestination, RouteOrientationPreference.NoPreference, s.LotCurrent.LotId, new int[1] { s.RoomId });
			FollowRouteAction followRouteAction = new BasicFollowRouteAction(s, route);
			s.RoutingComponent.InsertRouteActionNext(followRouteAction);
			s.RoutingComponent.InsertRouteActionAfter(followRouteAction, acquireLaneRouteAction);
		}
		return true;
	}

	public virtual void OnLaneLocked(Sim s, LaneInfo laneInfo)
	{
	}

	public virtual void OnLaneUnlocked(Sim s, LaneInfo laneInfo)
	{
	}

	public virtual void OnAllLanesUnlocked()
	{
	}

	public virtual bool OnApproachingPortalObject(Sim sim)
	{
		return true;
	}

	public virtual bool CancelApproachingPortalObject(Sim sim)
	{
		return true;
	}

	public virtual void OnPortalActionReset(Sim sim)
	{
	}

	public void OnSimRouteActionsFinished(GameObject routingObject, bool routeSuccess)
	{
		if (routingObject is Sim sim)
		{
			FreeRoutingLane(sim);
			if (AddToUseListDuringTraversal && Owner.IsActorUsingMe(sim))
			{
				Owner.RemoveFromUseList(sim);
			}
			sim.RoutingComponent.OnRouteActionsFinished -= OnSimRouteActionsFinished;
		}
	}

	public void FreeAllRoutingLanes()
	{
		OnAllLanesUnlocked();
		mLockedLaneIndices.Clear();
		Owner.ClearUseList();
		RefreshDebugHoverText();
	}

	public void FreeRoutingLane(Sim s)
	{
		if (mLockedLaneIndices.ContainsKey(s))
		{
			if (mLockedLaneIndices.TryGetValue(s, out var value))
			{
				OnLaneUnlocked(s, value);
			}
			if (mLockedLaneIndices.Remove(s) && (RemoveFromUseListAfterTraversal || (Owner is Pool && !(s.Posture is SwimmingInPool) && Owner.IsActorUsingMe(s))))
			{
				Owner.RemoveFromUseList(s);
			}
			s.RoutingComponent.OnRouteActionsFinished -= OnSimRouteActionsFinished;
		}
		RefreshDebugHoverText();
	}

	public virtual bool GetLaneInfo(Sim s, out LaneInfo lane)
	{
		return mLockedLaneIndices.TryGetValue(s, out lane);
	}

	protected uint GetSimLaneIndex(Sim s)
	{
		if (mLockedLaneIndices.TryGetValue(s, out var value))
		{
			return value.mLaneIndex;
		}
		return uint.MaxValue;
	}

	public Route GetPathToLane(Sim sim, ref LaneInfo laneInfo)
	{
		Route route = ComponentCreateRoute(sim);
		if (route != null)
		{
			route.SetOption(Route.RouteOption.CreateSubPaths, value: false);
			if (laneInfo.PortalPlanIgnoresPortalObject)
			{
				route.AddObjectToIgnoreForRoute(Owner.ObjectId);
			}
			if (laneInfo.PlanToSlotNotPosition)
			{
				route.PlanToSlot(Owner, laneInfo.mLaneSlots[0], bOffsetForPortalsByAGS: true);
			}
			else
			{
				Vector3 positionOfSlot = Owner.GetPositionOfSlot(laneInfo.mLaneSlots[0], sim.SimDescription.AgeGenderSpecies, isExitSlot: false);
				route.PlanToPoint(positionOfSlot);
			}
		}
		return route;
	}

	public Route GetPathThroughLane(Sim sim, ref LaneInfo laneInfo)
	{
		Route route = ComponentCreateRoute(sim);
		if (route != null)
		{
			route.SetOption(Route.RouteOption.CreateSubPaths, value: false);
			route.AddObjectToIgnoreForRoute(Owner.ObjectId);
			Vector3 positionOfSlot = Owner.GetPositionOfSlot(laneInfo.mLaneSlots[0], sim.SimDescription.AgeGenderSpecies, isExitSlot: false);
			Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(laneInfo.mLaneSlots[1], sim.SimDescription.AgeGenderSpecies, isExitSlot: true);
			route.PlanToPointFromPoint(positionOfSlot, positionOfSlot2);
		}
		return route;
	}

	public bool PushSimsAtPortalDestRouteInterruptCallback(Sim s, Route interruptedPath)
	{
		if (GetLaneInfo(s, out var lane))
		{
			s.LoopIdle();
			s.PushSims(Owner.GetPositionOfSlot(lane.mLaneSlots[1]), 0.6f);
			BridgeOrigin bridgeOrigin = s.BridgeOrigin;
			s.BridgeOrigin = null;
			bridgeOrigin?.MakeRequest();
			List<Sim> pushableSimsAtPos = s.RoutingComponent.GetPushableSimsAtPos(Owner.GetPositionOfSlot(lane.mLaneSlots[1]), 0.6f);
			if (pushableSimsAtPos.Count > 0)
			{
				if (interruptedPath.DoRouteFail)
				{
					s.PlayRouteFailure(pushableSimsAtPos[0].GetThoughtBalloonThumbnailKey());
				}
				return false;
			}
		}
		return true;
	}

	public bool OnPortalCompleted(Sim sim)
	{
		bool result = OnPortalStop(sim);
		FreeRoutingLane(sim);
		return result;
	}

	public virtual uint GetLaneIndexFromSlot(Slot routingSlot)
	{
		uint numLanes = GetNumLanes();
		for (uint num = 0u; num < numLanes; num++)
		{
			Slot[] slotsForLaneIndex = GetSlotsForLaneIndex(num);
			if (routingSlot == slotsForLaneIndex[0] || routingSlot == slotsForLaneIndex[1])
			{
				return num;
			}
		}
		return uint.MaxValue;
	}

	public Slot GetPairedSlot(Slot routingSlot)
	{
		uint laneIndexFromSlot = GetLaneIndexFromSlot(routingSlot);
		if (laneIndexFromSlot != uint.MaxValue)
		{
			Slot[] slotsForLaneIndex = GetSlotsForLaneIndex(laneIndexFromSlot);
			if (routingSlot == slotsForLaneIndex[0])
			{
				return slotsForLaneIndex[1];
			}
			return slotsForLaneIndex[0];
		}
		return Slot.None;
	}

	public abstract PortalObjectType GetPortalObjectType();

	protected virtual LaneInfoFlags GetLaneFlagsForLaneIndex(uint laneIndex)
	{
		return LaneInfoFlags.PortalPlanIgnoresPortalObject;
	}

	public abstract uint GetNumLanes();

	public abstract Slot[] GetSlotsForLaneIndex(uint laneIndex);

	public abstract List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected);

	public abstract bool OnPortalStart(Sim s);

	protected virtual bool OnPortalStop(Sim s)
	{
		return true;
	}

	public virtual bool IsLaneUnobstructed(Slot[] laneSlots, Sim s, bool checkForSims, Route.RouteOption routeOptions)
	{
		if (!Owner.IsRoutingSlotObstructed(s, laneSlots[0], s, checkForSims, routeOptions, s.SimDescription.AgeGenderSpecies, isExitSlot: false))
		{
			return !Owner.IsRoutingSlotObstructed(s, laneSlots[1], s, checkForSims, routeOptions, s.SimDescription.AgeGenderSpecies, isExitSlot: true);
		}
		return false;
	}

	public virtual bool IsFullyBlocked(Sim sim)
	{
		uint numLanes = GetNumLanes();
		for (uint num = 0u; num < numLanes; num++)
		{
			Slot[] slotsForLaneIndex = GetSlotsForLaneIndex(num);
			if (IsLaneUnobstructed(slotsForLaneIndex, sim, checkForSims: false, Route.RouteOption.None))
			{
				return false;
			}
		}
		return true;
	}

	public virtual Route ComponentCreateRoute(Sim s)
	{
		return s.CreateRoute();
	}
}
