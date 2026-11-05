// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Abstracts.StaircaseSpiral.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Collections.Generic;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Routing;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Abstracts;

public abstract class StaircaseSpiral : GameObject, IStairs, IHasPortalComponent, INotHauntable, IPortalConnectionObject, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IBuildBuyListener
{
	public class StaircaseSpiralPortalComponent : PortalComponent
	{
		private bool mHasRunInteraction;

		protected override PortalAddInitTime ShouldAddPortalAtInit => PortalAddInitTime.OnStartup;

		protected new StaircaseSpiral Owner => base.Owner as StaircaseSpiral;

		protected override bool AddToUseListDuringTraversal => true;

		protected override bool RemoveFromUseListAfterTraversal
		{
			get
			{
				bool result = !mHasRunInteraction;
				mHasRunInteraction = false;
				return result;
			}
		}

		public override bool CanUseUmbrella => false;

		public bool HasRunInteraction
		{
			set
			{
				mHasRunInteraction = value;
			}
		}

		public StaircaseSpiralPortalComponent()
		{
		}

		public StaircaseSpiralPortalComponent(GameObject owner)
			: base(owner)
		{
		}

		public override PortalObjectType GetPortalObjectType()
		{
			return PortalObjectType.AnimateThroughPortalObject;
		}

		protected override LaneInfoFlags GetLaneFlagsForLaneIndex(uint laneIndex)
		{
			return LaneInfoFlags.PlanToSlotNotPosition;
		}

		public override uint GetNumLanes()
		{
			return 1u;
		}

		public override Slot[] GetSlotsForLaneIndex(uint laneIndex)
		{
			return new Slot[2]
			{
				Slot.RoutingSlot_0,
				Slot.RoutingSlot_1
			};
		}

		public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
		{
			Vector3 positionOfSlot = Owner.GetPositionOfSlot(Slot.RoutingSlot_0);
			Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(Slot.RoutingSlot_1);
			List<Slot> list = new List<Slot>();
			if ((preferredPos - positionOfSlot).LengthSqr() < (preferredPos - positionOfSlot2).LengthSqr())
			{
				list.Add(Slot.RoutingSlot_0);
			}
			else
			{
				list.Add(Slot.RoutingSlot_1);
			}
			preferredLaneSelected = false;
			return list;
		}

		public override void OnLaneLocked(Sim s, LaneInfo laneInfo)
		{
			if (s.RoutingComponent.GetCurrentRouteAction() is PortalAction portalAction)
			{
				Slot slotName = ((laneInfo.mLaneSlots[1] == Slot.RoutingSlot_0) ? Slot.RoutingSlot_2 : Slot.RoutingSlot_3);
				portalAction.RouteToBeFollowed.SetPathEndOrientation(0u, Slots.GetMatrixOfSlot(Owner.ObjectId, slotName));
			}
			base.OnLaneLocked(s, laneInfo);
		}

		protected override bool DoAdditionalLaneChecks(bool bPreferedLane, Sim s, LaneInfo laneInfo)
		{
			if (Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[0], s, checkForSims: true, Route.RouteOption.None, s.SimDescription.AgeGenderSpecies, isExitSlot: false) || Owner.IsRoutingSlotObstructed(s, laneInfo.mLaneSlots[1], s, checkForSims: true, Route.RouteOption.None, s.SimDescription.AgeGenderSpecies, isExitSlot: true))
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
				RoutingComponent.PushSimsStatic(s, list, SimRoutingComponent.PushSimsAwayDistanceMin, SimRoutingComponent.PushSimsAwayDistanceMax, allowPushOutOfConversation: true, waitForPushes: false);
			}
			return true;
		}

		public override bool OnPortalStart(Sim actor)
		{
			if (actor.SimDescription.Age == CASAgeGenderFlags.Toddler)
			{
				FreeRoutingLane(actor);
				return false;
			}
			if (GetLaneInfo(actor, out var lane))
			{
				Slot slot = lane.mLaneSlots[0];
				Slot endSlot = lane.mLaneSlots[1];
				actor.SetForward(Slots.GetForwardOfSlot(Owner.ObjectId, slot));
				InteractionInstance interactionInstance = Owner.CreateUseInteraction(actor, slot, endSlot);
				return interactionInstance.RunInteraction();
			}
			return false;
		}

		protected override bool OnPortalStop(Sim s)
		{
			if (s.CurrentInteraction is Use && s.IsActiveSim && !Camera.sCameraFollow.IsSimBeingFollowed(s))
			{
				Camera.FocusOnSelectedSim();
			}
			return base.OnPortalStop(s);
		}

		public override void OnStartup()
		{
			mAddPortalsCallback = Owner.AddPortals;
			base.OnStartup();
		}
	}

	private enum BigDogBottomExitSlotType
	{
		Unspecified,
		None,
		Forwards,
		Side
	}

	private sealed class Use : Interaction<Sim, StaircaseSpiral>
	{
		private sealed class Definition : InteractionDefinition<Sim, StaircaseSpiral, Use>
		{
			protected override string GetInteractionName(Sim actor, StaircaseSpiral target, InteractionObjectPair iop)
			{
				return Stairs.LocalizeString("Use");
			}

			protected override bool Test(Sim a, StaircaseSpiral target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (a.SimDescription.ToddlerOrBelow)
				{
					return false;
				}
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			return Stairs.RouteUpOrDownStairs(Target, Actor);
		}
	}

	private sealed class UseInternal : Interaction<Sim, StaircaseSpiral>
	{
		[DoesntRequireTuning]
		private sealed class Definition : InteractionDefinition<Sim, StaircaseSpiral, UseInternal>
		{
			protected override string GetInteractionName(Sim actor, StaircaseSpiral target, InteractionObjectPair iop)
			{
				return string.Empty;
			}

			protected override bool Test(Sim a, StaircaseSpiral target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private bool mIsClimb;

		private bool mIsTransitioning;

		private StaircaseSpiral mCurrentTarget;

		public bool IsClimb
		{
			set
			{
				mIsClimb = value;
			}
		}

		protected override bool Run()
		{
			if (!Target.SimLine.WaitForTurn(this, SimQueue.WaitBehavior.CutAheadOfLowerPrioritySims, ExitReason.Default, kTimeToWaitInLine))
			{
				return false;
			}
			StandardEntry(addToUseList: false);
			BeginCommodityUpdates();
			mCurrentTarget = Target;
			EnterStateMachine("SpiralStaircase", "Enter", "x");
			mCurrentStateMachine.SetParameter("x:IsHoverbot", Actor.HasTrait(TraitNames.HoverBot));
			AddPersistentSynchronousScriptEventHandler(103u, OnAnimationEvent);
			AnimateSim(mIsClimb ? "Climb" : "Descend");
			((StaircaseSpiralPortalComponent)mCurrentTarget.PortalComponent).HasRunInteraction = true;
			while (true)
			{
				GetNextTarget();
				if (!mIsTransitioning)
				{
					break;
				}
				AddSynchronousOneShotScriptEventHandler(101u, OnAnimationEvent);
				AnimateSim(mIsClimb ? "Keep Climbing" : "Keep Descending");
				AddSynchronousOneShotScriptEventHandler(102u, OnAnimationEvent);
				AnimateSim(mIsClimb ? "Climb" : "Descend");
			}
			if (!mIsClimb && mCurrentTarget.mBigDogBottomExit == BigDogBottomExitSlotType.Side && Actor.IsFullSizeDog)
			{
				AddSynchronousOneShotScriptEventHandler(107u, OnAnimationEvent);
				AnimateSim("ExitBottomSide");
			}
			else
			{
				AnimateSim("Exit");
			}
			SetPosition(mCurrentTarget);
			mCurrentTarget.RemoveFromUseList(Actor);
			Actor.SimRoutingComponent.LastStairsUsedGuid = mCurrentTarget.ObjectId;
			EndCommodityUpdates(succeeded: true);
			StandardExit(removeFromUseList: false);
			Actor.RemoveExitReason(ExitReason.Finished);
			return true;
		}

		private void GetNextTarget()
		{
			mIsTransitioning = false;
			Route currentRoute = Actor.SimRoutingComponent.GetCurrentRoute();
			uint currentSegment = currentRoute.GetCurrentSegment();
			for (uint num = currentSegment; num < currentRoute.GetNumSegments(); num++)
			{
				PathData pathData = currentRoute.GetPathData(num + 1);
				if (pathData.PathType != PathType.PortalPath)
				{
					break;
				}
				StaircaseSpiral staircaseSpiral = pathData.ObjectId.ObjectFromId<StaircaseSpiral>();
				if (staircaseSpiral == null || staircaseSpiral.InUse)
				{
					break;
				}
				Slot slotName = Slot.RoutingSlot_4;
				Slot slotName2 = Slot.RoutingSlot_1;
				if (mIsClimb)
				{
					slotName = Slot.RoutingSlot_5;
					slotName2 = Slot.RoutingSlot_0;
				}
				Vector3 positionOfSlot = staircaseSpiral.GetPositionOfSlot(slotName2);
				Vector3 positionOfSlot2 = mCurrentTarget.GetPositionOfSlot(slotName);
				if (positionOfSlot != positionOfSlot2)
				{
					break;
				}
				mIsTransitioning = true;
				currentRoute.PopPath();
				mCurrentTarget.RemoveFromUseList(Actor);
				mCurrentTarget = staircaseSpiral;
				mCurrentTarget.AddToUseList(Actor);
			}
		}

		private void SetPosition(StaircaseSpiral stairs)
		{
			Actor.StartDefaultPose();
			if (mIsClimb)
			{
				stairs.SetActorPositionToExits(Actor, Slot.RoutingSlot_3, isExitingBottom: false);
			}
			else
			{
				stairs.SetActorPositionToExits(Actor, Slot.RoutingSlot_2, isExitingBottom: true);
			}
		}

		private void SetTransitionPosition(StaircaseSpiral stairs)
		{
			if (mIsClimb)
			{
				if (GameUtils.IsInstalled(ProductVersion.EP5) && Actor.IsPet)
				{
					Actor.SetPosition(stairs, Slot.RoutingSlot_0);
					Actor.SetForward(stairs.GetForwardOfSlot(Slot.RoutingSlot_0));
				}
				else
				{
					Actor.SetPosition(stairs, Slot.RoutingSlot_4);
					Actor.SetForward(-stairs.GetForwardOfSlot(Slot.RoutingSlot_4));
				}
			}
			else if (GameUtils.IsInstalled(ProductVersion.EP5) && Actor.IsPet)
			{
				Actor.SetPosition(stairs, Slot.RoutingSlot_1);
				Actor.SetForward(stairs.GetForwardOfSlot(Slot.RoutingSlot_1));
			}
			else
			{
				Actor.SetPosition(stairs, Slot.RoutingSlot_5);
				Actor.SetForward(-stairs.GetForwardOfSlot(Slot.RoutingSlot_5));
			}
		}

		private void SetNextPosition(StaircaseSpiral stairs)
		{
			if (mIsClimb)
			{
				stairs.SetActorPositionAndForwardToSlot(Actor, Slot.RoutingSlot_0, isExit: false);
			}
			else
			{
				stairs.SetActorPositionAndForwardToSlot(Actor, Slot.RoutingSlot_1, isExit: false);
			}
		}

		private void OnAnimationEvent(StateMachineClient smc, IEvent evt)
		{
			switch (evt.EventId)
			{
			case 101u:
				SetTransitionPosition(mCurrentTarget);
				break;
			case 102u:
				SetNextPosition(mCurrentTarget);
				break;
			case 103u:
				mCurrentTarget.SetActorPositionAndForwardToSlot(Actor, Slot.RoutingSlot_2, isExit: true);
				break;
			case 107u:
				mCurrentTarget.SetFullSizeDogPositionAndForwardToExitLeft(Actor);
				break;
			case 104u:
			case 105u:
			case 106u:
				break;
			}
		}
	}

	protected const Slot kEnterBottom = Slot.RoutingSlot_0;

	protected const Slot kEnterTop = Slot.RoutingSlot_1;

	protected const Slot kExitBottom = Slot.RoutingSlot_2;

	protected const Slot kExitTop = Slot.RoutingSlot_3;

	protected const Slot kTransitionBottom = Slot.RoutingSlot_4;

	protected const Slot kTransitionTop = Slot.RoutingSlot_5;

	[Tunable]
	[TunableComment("kMaximumNumberOfSimsInLine: Maximum number of sims that should wait around before using this object.")]
	private static int kMaximumNumberOfSimsInLine = 3;

	[TunableComment("kTimeToWaitInLine: Amount of Sim minutes a Sim will wait in line before timing out and exiting.")]
	[Tunable]
	protected static float kTimeToWaitInLine = 15f;

	private SimQueue mQueue = new SimQueue(SimQueue.WaitLocation.StayAtCurrentLocation, kMaximumNumberOfSimsInLine);

	private readonly float kPetOffsetTopExit = 0.184f;

	private readonly float kPetOffsetBottomExit = 0.379f;

	private readonly float kPetOffsetBottomSideExit = 0.35f;

	private BigDogBottomExitSlotType mBigDogBottomExit = BigDogBottomExitSlotType.Forwards;

	private bool mbHasPortalVariations;

	public Slot TopSlot => Slot.RoutingSlot_1;

	public override SimQueue SimLine => mQueue;

	public override void OnStartup()
	{
		AddComponent<StaircaseSpiralPortalComponent>(new object[0]);
		AddInteraction(Use.Singleton);
	}

	public override void OnLoad()
	{
		ValidatePortals(bOnExitBuildBuy: false);
		base.OnLoad();
	}

	protected override void DoReset(ResetInformation resetInformation)
	{
		ValidatePortals(bOnExitBuildBuy: false);
		base.DoReset(resetInformation);
	}

	public void OnEnterBuildBuyMode()
	{
	}

	public void OnExitBuildBuyMode()
	{
		if (GameUtils.IsInstalled(ProductVersion.EP5))
		{
			ValidatePortals(bOnExitBuildBuy: true);
		}
	}

	protected virtual InteractionInstance CreateUseInteraction(Sim actor, Slot startSlot, Slot endSlot)
	{
		InteractionInstance runningInteraction = actor.InteractionQueue.RunningInteraction;
		UseInternal useInternal = UseInternal.Singleton.CreateInstance(this, actor, runningInteraction.GetPriority(), runningInteraction.Autonomous, runningInteraction.CancellableByPlayer) as UseInternal;
		if (startSlot == Slot.RoutingSlot_0)
		{
			useInternal.IsClimb = true;
		}
		else
		{
			useInternal.IsClimb = false;
		}
		return useInternal;
	}

	private void AddPortals()
	{
		AddPortals(BigDogBottomExitSlotType.Unspecified);
	}

	private void SetFullSizeDogPositionAndForwardToExitLeft(Sim dog)
	{
		Vector3 positionOfSlot = GetPositionOfSlot(Slot.RoutingSlot_2);
		Vector3 forwardOfSlot = GetForwardOfSlot(Slot.RoutingSlot_2);
		Vector3 vector = new Vector3(forwardOfSlot.z, forwardOfSlot.y, 0f - forwardOfSlot.x);
		Vector3 vector2 = positionOfSlot + forwardOfSlot * kPetOffsetBottomExit;
		Vector3 position = vector2 + vector * kPetOffsetBottomSideExit;
		dog.SetPosition(position);
		dog.SetForward(vector);
	}

	private void SetActorPositionToExits(Sim actor, Slot slot, bool isExitingBottom)
	{
		if (isExitingBottom && mBigDogBottomExit == BigDogBottomExitSlotType.Side && actor.IsFullSizeDog)
		{
			SetFullSizeDogPositionAndForwardToExitLeft(actor);
		}
		else
		{
			SetActorPositionAndForwardToSlot(actor, slot, isExit: true);
		}
	}

	private void SetActorPositionAndForwardToSlot(Sim actor, Slot slot, bool isExit)
	{
		Vector3 forwardOfSlot = GetForwardOfSlot(slot);
		if (GameUtils.IsInstalled(ProductVersion.EP5) && actor.IsPet)
		{
			CASAgeGenderFlags ageGenderSpecies = actor.SimDescription.AgeGenderSpecies;
			if (isExit && actor.IsFullSizeDog && mBigDogBottomExit == BigDogBottomExitSlotType.Side)
			{
				ageGenderSpecies = CASAgeGenderFlags.LittleDog | CASAgeGenderFlags.Adult | CASAgeGenderFlags.Female;
			}
			Vector3 positionOfSlot = GetPositionOfSlot(slot, ageGenderSpecies, isExit);
			actor.SetPosition(positionOfSlot);
			actor.SetForward(forwardOfSlot);
		}
		else
		{
			actor.SetPosition(this, slot);
			actor.SetForward(forwardOfSlot);
		}
	}

	private void AddPortals(BigDogBottomExitSlotType bigDogBottomExit)
	{
		if (!Sims3.SimIFace.Objects.IsValid(ObjectId))
		{
			return;
		}
		Vector3 positionOfSlot = GetPositionOfSlot(Slot.RoutingSlot_0);
		Vector3 positionOfSlot2 = GetPositionOfSlot(Slot.RoutingSlot_1);
		CASAGSAvailabilityFlags agsFlags = CASAGSAvailabilityFlags.HumanAgeMask | CASAGSAvailabilityFlags.GenderMask | CASAGSAvailabilityFlags.HandednessMask;
		PortalHandle portalHandle = Route.AddPortal(ObjectId, positionOfSlot, positionOfSlot2, 2f, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.None, agsFlags);
		if (portalHandle != null && GameUtils.IsInstalled(ProductVersion.EP5))
		{
			Vector3 forwardOfSlot = GetForwardOfSlot(Slot.RoutingSlot_0);
			Vector3 forwardOfSlot2 = GetForwardOfSlot(Slot.RoutingSlot_1);
			Vector3 vector = positionOfSlot - forwardOfSlot * kPetOffsetBottomExit;
			Vector3 endPos = positionOfSlot2 - forwardOfSlot2 * kPetOffsetTopExit;
			Vector3 vector2 = new Vector3(forwardOfSlot.z, forwardOfSlot.y, 0f - forwardOfSlot.x);
			CASAGSAvailabilityFlags cASAGSAvailabilityFlags = CASAGSAvailabilityFlags.GenderMask | CASAGSAvailabilityFlags.HandednessMask | CASAGSAvailabilityFlags.CatAdult | CASAGSAvailabilityFlags.CatElder | CASAGSAvailabilityFlags.LittleDogAdult | CASAGSAvailabilityFlags.LittleDogElder;
			CASAGSAvailabilityFlags cASAGSAvailabilityFlags2 = CASAGSAvailabilityFlags.GenderMask | CASAGSAvailabilityFlags.HandednessMask | CASAGSAvailabilityFlags.DogAdult | CASAGSAvailabilityFlags.DogElder;
			if (bigDogBottomExit == BigDogBottomExitSlotType.Unspecified)
			{
				mBigDogBottomExit = CalculateOutBigDogBottomExit();
			}
			else
			{
				mBigDogBottomExit = bigDogBottomExit;
			}
			if (mBigDogBottomExit == BigDogBottomExitSlotType.Forwards)
			{
				cASAGSAvailabilityFlags |= cASAGSAvailabilityFlags2;
			}
			else if (mBigDogBottomExit == BigDogBottomExitSlotType.Side)
			{
				Vector3 endPos2 = vector + vector2 * kPetOffsetBottomSideExit;
				Route.AddPortal(ObjectId, positionOfSlot, endPos, 2f, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, cASAGSAvailabilityFlags2);
				Route.AddPortal(ObjectId, positionOfSlot2, endPos2, 2f, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, cASAGSAvailabilityFlags2);
			}
			Route.AddPortalLocationVariation(ObjectId, portalHandle, positionOfSlot, endPos, positionOfSlot2, vector, cASAGSAvailabilityFlags);
			mbHasPortalVariations = true;
		}
		else
		{
			mbHasPortalVariations = false;
		}
	}

	private void RemovePortals()
	{
		Route.RemovePortals(ObjectId);
		mbHasPortalVariations = false;
	}

	private void ValidatePortals(bool bOnExitBuildBuy)
	{
		bool flag = GameUtils.IsInstalled(ProductVersion.EP5);
		if (mbHasPortalVariations != flag)
		{
			RemovePortals();
			AddPortals();
		}
		else if (flag && bOnExitBuildBuy)
		{
			BigDogBottomExitSlotType bigDogBottomExitSlotType = CalculateOutBigDogBottomExit();
			if (bigDogBottomExitSlotType != mBigDogBottomExit)
			{
				RemovePortals();
				AddPortals(bigDogBottomExitSlotType);
			}
		}
	}

	private BigDogBottomExitSlotType CalculateOutBigDogBottomExit()
	{
		if (!InWorld)
		{
			return BigDogBottomExitSlotType.None;
		}
		if (!Sims3.SimIFace.Objects.IsValid(ObjectId))
		{
			return BigDogBottomExitSlotType.None;
		}
		Vector3 vector = Position - 0.5f * ForwardVector + 0.5f * SideVector;
		Vector3 worldPos = vector + 0.75f * SideVector;
		Vector3 worldPos2 = vector - 0.75f * ForwardVector;
		LotLocation location = LotLocation.Invalid;
		LotLocation location2 = LotLocation.Invalid;
		ulong lotLocation = World.GetLotLocation(vector, ref location);
		World.GetLotLocation(worldPos, ref location2);
		if (!World.WallExistsBetween(lotLocation, location, location2))
		{
			return BigDogBottomExitSlotType.Forwards;
		}
		LotLocation location3 = LotLocation.Invalid;
		World.GetLotLocation(worldPos2, ref location3);
		if (!World.WallExistsBetween(lotLocation, location, location3))
		{
			return BigDogBottomExitSlotType.Side;
		}
		return BigDogBottomExitSlotType.None;
	}

	public PortalRestriction IsAllowedThrough(int srcRoomId, int destRoomId, Sim actor)
	{
		if (actor.SimDescription.ToddlerOrBelow || actor.IsHorse || actor.IsWildAnimal)
		{
			return PortalRestriction.DoorRestriction;
		}
		return PortalRestriction.None;
	}

	public int GetAdjoiningRoom(int roomId)
	{
		int roomIdOfSlot = GetRoomIdOfSlot(Slot.RoutingSlot_0);
		if (roomId == roomIdOfSlot)
		{
			return GetRoomIdOfSlot(Slot.RoutingSlot_1);
		}
		return roomIdOfSlot;
	}

	public int[] GetRoomConnections()
	{
		return new int[2]
		{
			GetRoomIdOfSlot(Slot.RoutingSlot_0),
			GetRoomIdOfSlot(Slot.RoutingSlot_1)
		};
	}

	public Vector3[] GetPortalOpenings()
	{
		return new Vector3[2]
		{
			GetSlotPosition(Slot.RoutingSlot_0),
			GetSlotPosition(Slot.RoutingSlot_1)
		};
	}

	public Slot[] GetSlotsForSide(bool isBottom)
	{
		return new Slot[1] { isBottom ? Slot.RoutingSlot_0 : Slot.RoutingSlot_1 };
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		AddPortals();
		return base.ImportContent(resKeyTable, objIdTable, reader);
	}

	public Slot[] GetExitSlots()
	{
		return new Slot[4]
		{
			Slot.RoutingSlot_4,
			Slot.RoutingSlot_5,
			Slot.RoutingSlot_2,
			Slot.RoutingSlot_3
		};
	}
}
