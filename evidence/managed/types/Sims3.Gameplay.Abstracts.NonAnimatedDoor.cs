/* Analyst: PC1.67 original managed evidence. Complete original type rendering for tomb/diving producer, state, consumer or reader/writer context. The focused guide states the reviewed contract and remaining limits.
   Source identity and original assembly resource mapping: guides/tombs/README.md.
   Decompiled syntax is a representation; the paired complete original type IL controls exact semantics. */

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Abstracts;

public abstract class NonAnimatedDoor : CommonDoor
{
	public class NonAnimatedDoorPortalComponent : PortalComponent
	{
		private readonly float kDogOffsetEntry = 0.066f;

		private readonly float kDogOffsetExit = 0.271f;

		public new NonAnimatedDoor Owner => base.Owner as NonAnimatedDoor;

		protected override bool AddToUseListDuringTraversal => true;

		protected override bool RemoveFromUseListAfterTraversal => true;

		public override bool CanUseUmbrella => false;

		protected NonAnimatedDoorPortalComponent()
		{
		}

		public NonAnimatedDoorPortalComponent(GameObject owner)
			: base(owner)
		{
			mAddPortalsCallback = AddPortalsComponentCallback;
		}

		private void AddPortalsComponentCallback()
		{
			if (Owner.IsOpen)
			{
				AddPortals();
			}
		}

		public void AddPortals()
		{
			uint numLanes = GetNumLanes();
			for (uint num = 0u; num < numLanes; num++)
			{
				Slot[] slotsForLaneIndex = GetSlotsForLaneIndex(num);
				Vector3 positionOfSlot = Owner.GetPositionOfSlot(slotsForLaneIndex[0]);
				Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(slotsForLaneIndex[1]);
				CASAGSAvailabilityFlags agsFlags = ~(CASAGSAvailabilityFlags.AllHorsesMask | CASAGSAvailabilityFlags.AllWildAnimalsMask | CASAGSAvailabilityFlags.DogAdult | CASAGSAvailabilityFlags.DogElder | CASAGSAvailabilityFlags.LargeBird | CASAGSAvailabilityFlags.SimWalkingDog | CASAGSAvailabilityFlags.SimWalkingLittleDog | CASAGSAvailabilityFlags.SimLeadingHorse);
				PortalHandle portalHandle = Route.AddPortal(Owner.ObjectId, positionOfSlot, positionOfSlot2, Owner.PortalCost, PortalType.PortalTypeRouteThrough, RoutePortalFlags.None, agsFlags);
				Vector3 vector = (positionOfSlot2 - positionOfSlot).Normalize();
				CASAGSAvailabilityFlags agsFlags2 = CASAGSAvailabilityFlags.GenderMask | CASAGSAvailabilityFlags.HandednessMask | CASAGSAvailabilityFlags.DogAdult | CASAGSAvailabilityFlags.DogElder;
				Route.AddPortalLocationVariation(Owner.ObjectId, portalHandle, positionOfSlot + vector * kDogOffsetEntry, positionOfSlot2 + vector * kDogOffsetExit, positionOfSlot2 - vector * kDogOffsetEntry, positionOfSlot - vector * kDogOffsetExit, agsFlags2);
				if (Owner is IBarnDoor)
				{
					CASAGSAvailabilityFlags agsFlags3 = CASAGSAvailabilityFlags.GenderMask | CASAGSAvailabilityFlags.HandednessMask | CASAGSAvailabilityFlags.HorseAdult | CASAGSAvailabilityFlags.HorseElder | CASAGSAvailabilityFlags.Deer;
					Slot[] horseSlotsForLaneIndex = GetHorseSlotsForLaneIndex(num);
					Vector3 positionOfSlot3 = Owner.GetPositionOfSlot(horseSlotsForLaneIndex[0]);
					Vector3 positionOfSlot4 = Owner.GetPositionOfSlot(horseSlotsForLaneIndex[1]);
					Vector3 positionOfSlot5 = Owner.GetPositionOfSlot(horseSlotsForLaneIndex[2]);
					Vector3 positionOfSlot6 = Owner.GetPositionOfSlot(horseSlotsForLaneIndex[3]);
					Route.AddPortalLocationVariation(Owner.ObjectId, portalHandle, positionOfSlot3, positionOfSlot4, positionOfSlot5, positionOfSlot6, agsFlags3);
				}
			}
		}

		public void RemovePortals()
		{
			Route.RemovePortals(Owner.ObjectId);
		}

		public override uint GetNumLanes()
		{
			return (uint)(Owner.GetRoutingSlots().Length / 2);
		}

		public override PortalObjectType GetPortalObjectType()
		{
			return PortalObjectType.RouteThroughPortalObject;
		}

		public override Slot[] GetSlotsForLaneIndex(uint laneIndex)
		{
			string slotName = "RoutingSlot_Door" + laneIndex + "_Front";
			string slotName2 = "RoutingSlot_Door" + laneIndex + "_Rear";
			return new Slot[2]
			{
				Slots.Hash(slotName),
				Slots.Hash(slotName2)
			};
		}

		public Slot[] GetHorseSlotsForLaneIndex(uint laneIndex)
		{
			string slotName = "RoutingSlot_Door" + laneIndex + "_Horse_FrontEntry";
			string slotName2 = "RoutingSlot_Door" + laneIndex + "_Horse_RearExit";
			string slotName3 = "RoutingSlot_Door" + laneIndex + "_Horse_RearEntry";
			string slotName4 = "RoutingSlot_Door" + laneIndex + "_Horse_FrontExit";
			return new Slot[4]
			{
				Slots.Hash(slotName),
				Slots.Hash(slotName2),
				Slots.Hash(slotName3),
				Slots.Hash(slotName4)
			};
		}

		public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
		{
			Slot[] slotsForLaneIndex = GetSlotsForLaneIndex(0u);
			Slot nearestSlot = Owner.GetNearestSlot(preferredPos, slotsForLaneIndex);
			bool flag = nearestSlot == slotsForLaneIndex[0];
			uint numLanes = GetNumLanes();
			List<Slot> list = new List<Slot>((int)numLanes);
			for (uint num = 0u; num < numLanes; num++)
			{
				Slot[] slotsForLaneIndex2 = GetSlotsForLaneIndex(num);
				if (flag)
				{
					list.Add(slotsForLaneIndex2[0]);
				}
				else
				{
					list.Add(slotsForLaneIndex2[1]);
				}
			}
			return list;
		}

		public override bool IsLaneUnobstructed(Slot[] laneSlots, Sim s, bool checkForSims, Route.RouteOption routeOptions)
		{
			if (!Owner.IsOpen && Owner.IsActorUsingMe(s))
			{
				Owner.RemoveFromUseList(s);
			}
			return Owner.IsOpen;
		}

		public override bool LockRoutingLane(Sim s, Vector3 preferredPos, bool checkForSims, Route.RouteOption routeOptions, out bool preferredLaneSelected)
		{
			if (IsFullyBlocked(s))
			{
				preferredLaneSelected = false;
				return false;
			}
			return base.LockRoutingLane(s, preferredPos, checkForSims, routeOptions, out preferredLaneSelected);
		}

		public override bool OnPortalStart(Sim s)
		{
			return true;
		}

		protected override bool OnPortalStop(Sim s)
		{
			if (Owner.IsAutoshut && Owner.CanClose)
			{
				Owner.CloseWhenAble(s);
			}
			Owner.OnWalkedThrough(s);
			return true;
		}

		protected override bool DoAdditionalLaneChecks(bool bPreferedLane, Sim s, LaneInfo laneInfo)
		{
			bool flag = false;
			bool flag2 = false;
			if (s.IsHuman)
			{
				flag = Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[0], s, checkForSims: true, Route.RouteOption.None) || Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[1], s, checkForSims: true, Route.RouteOption.None);
				flag2 = false;
			}
			else
			{
				Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[0], s, checkForSims: true, Route.RouteOption.None, s.SimDescription.AgeGenderSpecies, isExitSlot: false, out var blockedStatus);
				if (blockedStatus <= BlockedStatus.BlockedBySim)
				{
					BlockedStatus blockedStatus2 = BlockedStatus.Unobstructed;
					if (Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[1], s, checkForSims: true, Route.RouteOption.None, s.SimDescription.AgeGenderSpecies, isExitSlot: true, out blockedStatus2))
					{
						blockedStatus = (BlockedStatus)Math.Max((int)blockedStatus, (int)blockedStatus2);
					}
				}
				flag = blockedStatus == BlockedStatus.BlockedBySim;
				flag2 = blockedStatus > BlockedStatus.BlockedBySim;
			}
			if (flag)
			{
				List<Sim> list = new List<Sim>(Queries.GetObjects<Sim>(Owner.GetPositionOfSlot(laneInfo.mLaneSlots[0]), 0.5f));
				list.AddRange(Queries.GetObjects<Sim>(Owner.GetPositionOfSlot(laneInfo.mLaneSlots[1]), 0.5f));
				int num = 0;
				while (num < list.Count)
				{
					if (list[num] == null || list[num].IsRouting)
					{
						list.RemoveAt(num);
					}
					else
					{
						num++;
					}
				}
				RoutingComponent.PushSimsStatic(s, list, SimRoutingComponent.PushSimsAwayDistanceMin, SimRoutingComponent.PushSimsAwayDistanceMax, allowPushOutOfConversation: true, waitForPushes: true);
			}
			else if (flag2)
			{
				return false;
			}
			return true;
		}
	}

	private sealed class OpenAndClose : ImmediateInteraction<IActor, NonAnimatedDoor>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, NonAnimatedDoor, OpenAndClose>
		{
			protected override string GetInteractionName(IActor a, NonAnimatedDoor target, InteractionObjectPair interaction)
			{
				if (target.IsOpen)
				{
					return Localization.LocalizeString("Gameplay/Abstracts/Doors:Close");
				}
				return Localization.LocalizeString("Gameplay/Abstracts/Doors:Open");
			}

			protected override bool Test(IActor a, NonAnimatedDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.IsOpen && !target.CanClose)
				{
					return false;
				}
				if (!target.IsOpen && !target.CanOpen)
				{
					return false;
				}
				if (target.IsMoving)
				{
					return false;
				}
				if (target.InUse)
				{
					greyedOutTooltipCallback = target.InUseGreyedOutTooltip;
					return false;
				}
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (Target.IsOpen)
			{
				Target.Close();
			}
			else
			{
				Target.Open();
			}
			return true;
		}
	}

	private sealed class ToggleAutoShut : ImmediateInteraction<IActor, NonAnimatedDoor>
	{
		[DoesntRequireTuning]
		private class DebugDefinition : ActorlessInteractionDefinition<IActor, NonAnimatedDoor, ToggleAutoShut>
		{
			protected override string GetInteractionName(IActor a, NonAnimatedDoor target, InteractionObjectPair interaction)
			{
				if (target.IsAutoshut)
				{
					return Door.LocalizeString("AutoshutOff");
				}
				return Door.LocalizeString("AutoshutOn");
			}

			protected override bool Test(IActor a, NonAnimatedDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		[DoesntRequireTuning]
		private class Definition : ImmediateInteractionDefinition<IActor, NonAnimatedDoor, ToggleAutoShut>
		{
			protected override string GetInteractionName(IActor a, NonAnimatedDoor target, InteractionObjectPair interaction)
			{
				if (target.IsAutoshut)
				{
					return Door.LocalizeString("AutoshutOff");
				}
				return Door.LocalizeString("AutoshutOn");
			}

			protected override bool Test(IActor a, NonAnimatedDoor target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.LotCurrent != a.LotHome)
				{
					return false;
				}
				return target.CanAutoshut;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		public static readonly InteractionDefinition DebugSingleton = new DebugDefinition();

		protected override bool Run()
		{
			Target.IsAutoshut = !Target.IsAutoshut;
			return true;
		}
	}

	private const uint kNonAnimatedDoorIsAutoShut = 3602696444u;

	private static readonly Slot kSlotOnFront = Slots.Hash("RoutingSlot_Door0_Front");

	private static readonly Slot kSlotOnRear = Slots.Hash("RoutingSlot_Door0_Rear");

	private static InteractionDefinition[] sInteractionDefinitions = new InteractionDefinition[2]
	{
		OpenAndClose.Singleton,
		ToggleAutoShut.Singleton
	};

	private bool mIsAutoshut;

	private OneShotFunction mTryToCloseOneShot;

	protected Sim mSimCausingAutoshut;

	private bool mIsOpen;

	private bool mIsMoving;

	public bool IsAutoshut
	{
		get
		{
			return mIsAutoshut;
		}
		set
		{
			mIsAutoshut = value;
		}
	}

	protected virtual bool CanAutoshut => false;

	protected override bool CanBeLocked => !mIsOpen;

	protected override bool CanGoThrough => mIsOpen;

	protected abstract bool CanClose { get; }

	protected abstract bool CanOpen { get; }

	public bool IsOpen => mIsOpen;

	public bool IsMoving => mIsMoving;

	public abstract string StateMachineName { get; }

	public abstract string StateMachineActorName { get; }

	public abstract string OpenGeoState { get; }

	public abstract string ClosedGeoState { get; }

	public abstract float PortalCost { get; }

	public new NonAnimatedDoorPortalComponent PortalComponent => base.PortalComponent as NonAnimatedDoorPortalComponent;

	public virtual GreyedOutTooltipCallback InUseGreyedOutTooltip => null;

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(ToggleAutoShut.DebugSingleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		debugInteractions.Add(ToggleAutoShut.DebugSingleton);
		base.AddDebugInteractions(debugInteractions);
	}

	public override void OnCreation()
	{
		OnClose();
	}

	public override void OnLoad()
	{
		if (PortalComponent != null)
		{
			PortalComponent.RemovePortals();
			if (mIsOpen)
			{
				PortalComponent.AddPortals();
			}
		}
		base.OnLoad();
	}

	public override void OnStartup()
	{
		base.OnStartup();
		AddComponent<NonAnimatedDoorPortalComponent>(new object[0]);
		if (mIsOpen)
		{
			OnOpen();
		}
		else
		{
			OnClose();
		}
	}

	public override void LoadWorldBuilderData()
	{
		base.LoadWorldBuilderData();
		WorldBuilderData.Get("SecretDoor", ObjectId, "mIsAutoshut", ref mIsAutoshut);
	}

	public override void SaveWorldBuilderData()
	{
		base.SaveWorldBuilderData();
		WorldBuilderData.Set("SecretDoor", ObjectId, "mIsAutoshut", mIsAutoshut, defaultValue: false);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		reader.ReadBool(3602696444u, out mIsAutoshut, defaultValue: false);
		OnClose();
		return result;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		writer.WriteBool(3602696444u, mIsAutoshut);
		return result;
	}

	public override void Dispose()
	{
		if (mTryToCloseOneShot != null)
		{
			mTryToCloseOneShot.Destroy();
			mTryToCloseOneShot = null;
		}
		mSimCausingAutoshut = null;
		base.Dispose();
	}

	public override PortalRestriction IsAllowedThrough(int srcRoomId, int destRoomId, Sim actor)
	{
		if (!mIsOpen)
		{
			return PortalRestriction.DoorRestriction;
		}
		return PortalRestriction.None;
	}

	public override List<Slot> GetRoutingSlotsOnSide(tSide side)
	{
		List<Slot> list = new List<Slot>();
		uint numLanes = PortalComponent.GetNumLanes();
		for (uint num = 0u; num < numLanes; num++)
		{
			if (side == tSide.Front)
			{
				list.Add(Slots.Hash("RoutingSlot_Door" + num + "_Front"));
			}
			else
			{
				list.Add(Slots.Hash("RoutingSlot_Door" + num + "_Rear"));
			}
		}
		return list;
	}

	public override bool GetSideOfDoorInRoom(int roomId, out tSide side)
	{
		side = tSide.Front;
		if (PortalComponent.GetNumLanes() == 0)
		{
			return false;
		}
		LotLocation location = default;
		World.GetLotLocation(GetSlotPosition(kSlotOnFront), ref location);
		if (location.mRoom == roomId)
		{
			side = tSide.Front;
			return true;
		}
		World.GetLotLocation(GetSlotPosition(kSlotOnRear), ref location);
		if (location.mRoom == roomId)
		{
			side = tSide.Back;
			return true;
		}
		return false;
	}

	public override List<InteractionObjectPair> GetAllInteractionsForActor(IActor s)
	{
		return BuildInteractions(s, base.GetAllInteractionsForActor(s), sInteractionDefinitions);
	}

	public override bool HasAnyInteraction(IActor actor, ref InteractionInstanceParameters parameters)
	{
		if (TestInteractions(actor, ref parameters, sInteractionDefinitions))
		{
			return true;
		}
		return base.HasAnyInteraction(actor, ref parameters);
	}

	public override Vector3[] GetPortalOpenings()
	{
		uint numLanes = PortalComponent.GetNumLanes();
		Vector3[] array = new Vector3[2 * numLanes];
		for (uint num = 0u; num < numLanes; num++)
		{
			ref Vector3 reference = ref array[2 * num];
			reference = GetSlotPosition(Slots.Hash("RoutingSlot_Door" + num + "_Front"));
			ref Vector3 reference2 = ref array[2 * num + 1];
			reference2 = GetSlotPosition(Slots.Hash("RoutingSlot_Door" + num + "_Rear"));
		}
		return array;
	}

	private void AnimateDoor(bool open)
	{
		while (mIsMoving)
		{
			Simulator.Sleep(10u);
		}
		mIsMoving = true;
		OnStartMoving();
		try
		{
			StateMachineClient stateMachineClient = StateMachineClient.Acquire(this, StateMachineName);
			AddEventHandlers(open, stateMachineClient);
			stateMachineClient.SetActor(StateMachineActorName, this);
			stateMachineClient.EnterState(StateMachineActorName, (!open) ? "Open" : "Closed");
			stateMachineClient.RequestState(yield: true, StateMachineActorName, open ? "Open" : "Closed");
			stateMachineClient.Dispose();
		}
		catch (ResetException)
		{
			throw;
		}
		catch
		{
			if (open)
			{
				OnOpen(null, null);
			}
			else
			{
				OnClose(null, null);
			}
		}
		finally
		{
			mIsMoving = false;
		}
	}

	protected virtual void AddEventHandlers(bool isOpening, StateMachineClient smc)
	{
		if (isOpening)
		{
			smc.AddOneShotScriptEventHandler(100u, OnOpen);
			return;
		}
		smc.AddOneShotScriptEventHandler(100u, OnClose);
		smc.AddOneShotScriptEventHandler(226u, OnDoneMoving);
	}

	protected virtual bool ShouldOpen()
	{
		return true;
	}

	protected virtual bool ShouldClose()
	{
		return true;
	}

	public void Close()
	{
		if (mIsOpen && ShouldClose())
		{
			AnimateDoor(open: false);
		}
	}

	public void CloseWhenAble()
	{
		CloseWhenAble(null);
	}

	public void CloseWhenAble(Sim simCausingAutoshut)
	{
		if (mTryToCloseOneShot == null)
		{
			mSimCausingAutoshut = simCausingAutoshut;
			mTryToCloseOneShot = new OneShotFunction(TryToClose);
			Simulator.AddObject(mTryToCloseOneShot);
		}
	}

	protected void TryToClose()
	{
		int num = 0;
		while (num < 3)
		{
			if (!InUse)
			{
				Close();
				if (!IsOpen)
				{
					break;
				}
				num++;
			}
			Simulator.Sleep(10u);
		}
		mTryToCloseOneShot = null;
		mSimCausingAutoshut = null;
	}

	public bool Open()
	{
		if (!mIsOpen && ShouldOpen())
		{
			AnimateDoor(open: true);
			return true;
		}
		return false;
	}

	protected virtual void OnClose()
	{
		SetGeometryState(ClosedGeoState);
	}

	private void OnClose(StateMachineClient sender, IEvent evt)
	{
		mIsOpen = false;
		PortalComponent.RemovePortals();
		OnPortalRestrictionChanged();
		OnClose();
	}

	protected virtual void OnOpen()
	{
		SetGeometryState(OpenGeoState);
		if (LotCurrent.TombRoomManager != null)
		{
			LotCurrent.TombRoomManager.NotifyDoorChanged(this);
		}
	}

	private void OnOpen(StateMachineClient sender, IEvent evt)
	{
		mIsOpen = true;
		PortalComponent.AddPortals();
		OnPortalRestrictionChanged();
		OnOpen();
	}

	protected virtual void OnStartMoving()
	{
	}

	private void OnDoneMoving(StateMachineClient sender, IEvent evt)
	{
		OnDoneMoving();
	}

	protected virtual void OnDoneMoving()
	{
	}

	public void SetOpen()
	{
		OnOpen(null, null);
	}

	public void SetClose()
	{
		OnClose(null, null);
	}
}
