// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Core.Stairs.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Objects;
using Sims3.Gameplay.Routing;
using Sims3.Gameplay.Utilities;
using Sims3.Gameplay.WorldBuilderUtil;
using Sims3.SimIFace;
using Sims3.SimIFace.BuildBuy;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;
using Sims3.SimIFace.RouteDestinations;
using Sims3.UI;

namespace Sims3.Gameplay.Core;

public class Stairs : GameObject, IStairs, IHasPortalComponent, INotHauntable, IPortalConnectionObject, ISecretObject, IHasWorldBuilderData, IHasCustomCauseEffectBehavior, ICanHasTombObjectComponent, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IDoNotGetFogged
{
	public static class RoutingSlots
	{
		public static Slot Stairs_Bottom0 = (Slot)3338373960u;

		public static Slot Stairs_Top0 = (Slot)2009700790u;
	}

	[Version(2)]
	public class StairsPortalComponent : PortalComponent
	{
		[Persistable]
		protected class ActiveUserEntry
		{
			public ObjectGuid mTask = ObjectGuid.InvalidObjectGuid;

			public bool mbResult = true;

			public bool mbSleeping;
		}

		protected Dictionary<ObjectGuid, ActiveUserEntry> mSleepingTasks = new Dictionary<ObjectGuid, ActiveUserEntry>();

		private Stairs StairsOwner => Owner as Stairs;

		protected override bool AddToUseListDuringTraversal => true;

		protected override bool RemoveFromUseListAfterTraversal => true;

		public override bool CanUseUmbrella => true;

		public StairsPortalComponent()
		{
		}

		public StairsPortalComponent(GameObject o)
			: base(o)
		{
		}

		public override PortalObjectType GetPortalObjectType()
		{
			return PortalObjectType.AnimateThroughPortalObject;
		}

		public override uint GetNumLanes()
		{
			return (uint)(Owner.GetRoutingSlots().Length / 2);
		}

		public override Slot[] GetSlotsForLaneIndex(uint laneIndex)
		{
			return new Slot[2]
			{
				Slots.Hash("RoutingSlot_Stairs_Bottom" + laneIndex),
				Slots.Hash("RoutingSlot_Stairs_Top" + laneIndex)
			};
		}

		public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
		{
			Vector3 positionOfSlot = Owner.GetPositionOfSlot(RoutingSlots.Stairs_Bottom0, s.SimDescription.AgeGenderSpecies, isExitSlot: false);
			Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(RoutingSlots.Stairs_Top0, s.SimDescription.AgeGenderSpecies, isExitSlot: false);
			float num = (preferredPos - positionOfSlot).LengthSqr();
			float num2 = (preferredPos - positionOfSlot2).LengthSqr();
			string text = ((!(num <= num2)) ? "_Top" : "_Bottom");
			uint numLanes = GetNumLanes();
			List<Slot> list = new List<Slot>((int)numLanes);
			for (uint num3 = 0u; num3 < numLanes; num3++)
			{
				list.Add(Slots.Hash("RoutingSlot_Stairs" + text + num3));
			}
			return list;
		}

		public override bool IsLaneUnobstructed(Slot[] laneSlots, Sim sim, bool checkForSims, Route.RouteOption routeOptions)
		{
			routeOptions |= Route.RouteOption.PlatformsNotBlocking;
			if (!Owner.IsRoutingSlotObstructed(sim, laneSlots[0], sim, checkForSims: false, routeOptions, sim.SimDescription.AgeGenderSpecies, isExitSlot: false))
			{
				return !Owner.IsRoutingSlotObstructed(sim, laneSlots[1], sim, checkForSims: false, routeOptions, sim.SimDescription.AgeGenderSpecies, isExitSlot: true);
			}
			return false;
		}

		public override void OnStartup()
		{
			mAddPortalsCallback = AddStairsPortals;
			base.OnStartup();
		}

		public override void OnLoad()
		{
			Simulator.AddObject(new OneShotFunctionTask(WakeAll));
		}

		private void WakeAll()
		{
			foreach (ActiveUserEntry value in mSleepingTasks.Values)
			{
				value.mbSleeping = false;
				Simulator.Wake(value.mTask, assertIfNotSleeping: false);
			}
		}

		public void AddStairsPortals()
		{
			if (!StairsOwner.IsHidden)
			{
				Route.AddStairPortals(Owner.ObjectId);
			}
		}

		public void RemovePortals()
		{
			Route.RemovePortals(Owner.ObjectId);
		}

		public void HandleStairsCompleted(ObjectGuid follower, bool bSuccess)
		{
			if (mSleepingTasks.TryGetValue(follower, out var value))
			{
				value.mbResult = bSuccess;
				value.mbSleeping = false;
				Simulator.Wake(value.mTask, assertIfNotSleeping: false);
			}
		}

		public override bool OnPortalStart(Sim s)
		{
			if (StairsOwner.IsHidden)
			{
				FreeRoutingLane(s);
				return false;
			}
			if (s.SimDescription.Age == CASAgeGenderFlags.Toddler || s.IsPuppy || s.IsKitten)
			{
				FreeRoutingLane(s);
				return false;
			}
			if (GetLaneInfo(s, out var lane))
			{
				Vector3 positionOfSlot = Owner.GetPositionOfSlot(lane.mLaneSlots[0], s.SimDescription.AgeGenderSpecies, isExitSlot: false);
				Quaternion orientBegin = new Quaternion(0f, 0f, 0f, 1f);
				Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(lane.mLaneSlots[1], s.SimDescription.AgeGenderSpecies, isExitSlot: true);
				Quaternion orientEnd = new Quaternion(0f, 0f, 0f, 1f);
				SimScriptAdaptor.CheckForClothingChangesBeforeRouting(s, positionOfSlot2);
				bool flag = false;
				if (s.IsActiveSim)
				{
					Camera.SetOnStairs(onStairs: true);
					flag = true;
				}
				float num = SimClock.ElapsedTime(TimeUnit.Minutes);
				string styleName = "WalkStairs";
				if (s.Posture is Hoverboard.RidingHoverboardPosture)
				{
					styleName = "HoverboardStairs";
				}
				else if (s.TraitManager.HasElement(TraitNames.HoverBot))
				{
					styleName = "WalkStairsHover";
				}
				PortalDirection portalDirection = PortalDirection.Back;
				if (positionOfSlot.y <= positionOfSlot2.y)
				{
					portalDirection = PortalDirection.Up;
				}
				if (portalDirection == PortalDirection.Back && s.SimDescription.Species == CASAgeGenderFlags.Dog)
				{
					Vector3 vector = positionOfSlot2 - positionOfSlot;
					vector.y = 0f;
					vector.Normalize();
					LotLocation location = LotLocation.Invalid;
					LotLocation location2 = LotLocation.Invalid;
					ulong lotLocation = World.GetLotLocation(positionOfSlot2, ref location);
					World.GetLotLocation(positionOfSlot2 + vector, ref location2);
					if (World.WallExistsBetween(lotLocation, location, location2))
					{
						Route currentRoute = s.RoutingComponent.GetCurrentRoute();
						if (currentRoute != null && currentRoute.GetNumPaths() > 1)
						{
							Vector3 outDirection = default;
							currentRoute.GetPathStartDirection(1u, ref outDirection);
							Vector3 vector2 = default;
							vector2.Set(0f - vector.z, 0f, vector.x);
							portalDirection = (((double)(outDirection * vector2) >= 0.0) ? PortalDirection.DownExitRight : PortalDirection.DownExitLeft);
						}
					}
				}
				switch (Route.StartStairTraversal(animSpec: new RouteAnimationSpec(styleName, (uint)s.SimDescription.Age, (uint)s.SimDescription.Gender, (uint)s.SimDescription.Species), portalSpec: new PortalRoutingSpec(Owner.ObjectId, lane.mLaneIndex, (uint)lane.mLaneSlots[0], (uint)lane.mLaneSlots[1], positionOfSlot, orientBegin, positionOfSlot2, orientEnd, (uint)portalDirection), simObjID: s.ObjectId.Value))
				{
				case StairTraversalResult.kStairTraversalResult_Success:
				{
					Animation.DisableLargeAnimalEvalNode(s.ObjectId);
					ObjectGuid currentTask = Simulator.CurrentTask;
					ActiveUserEntry activeUserEntry = new ActiveUserEntry();
					activeUserEntry.mTask = currentTask;
					activeUserEntry.mbResult = true;
					mSleepingTasks[s.ObjectId] = activeUserEntry;
					activeUserEntry.mbSleeping = true;
					try
					{
						while (activeUserEntry.mbSleeping)
						{
							Simulator.Sleep(10u);
							List<Sim> list = new List<Sim>(Queries.GetObjects<Sim>(positionOfSlot2, 0.6f));
							if (list.Count <= 0)
							{
								continue;
							}
							int num2 = 0;
							while (num2 < list.Count)
							{
								Sim sim = list[num2];
								if (sim == s || RoutingComponent.GetPushRelevantInteractionForSim(sim) != null)
								{
									list.RemoveAt(num2);
								}
								else
								{
									num2++;
								}
							}
							s.RoutingComponent.PushSims(list, bWait: false);
						}
					}
					finally
					{
						mSleepingTasks.Remove(s.ObjectId);
						Animation.EnableLargeAnimalEvalNode(s.ObjectId);
					}
					if (flag)
					{
						Camera.SetOnStairs(onStairs: false);
					}
					return activeUserEntry.mbResult;
				}
				case StairTraversalResult.kStairTraversalResult_Skip:
					if (flag)
					{
						Camera.SetOnStairs(onStairs: false);
					}
					return true;
				default:
					if (flag)
					{
						Camera.SetOnStairs(onStairs: false);
					}
					return false;
				}
			}
			return true;
		}

		protected override bool OnPortalStop(Sim s)
		{
			if (s.CurrentInteraction is ClimbStairs && s.IsActiveSim && !Camera.sCameraFollow.IsSimBeingFollowed(s))
			{
				Camera.FocusOnSelectedSim();
			}
			s.SimRoutingComponent.LastStairsUsedGuid = Owner.ObjectId;
			return true;
		}
	}

	public class StairsRouteThroughComponent : StaticObjectComponent
	{
		public override Type BaseType => typeof(StairsRouteThroughComponent);

		private StairsRouteThroughComponent()
		{
		}
	}

	public sealed class ClimbStairs : Interaction<Sim, Stairs>
	{
		private sealed class Definition : InteractionDefinition<Sim, Stairs, ClimbStairs>
		{
			protected override string GetInteractionName(Sim actor, Stairs target, InteractionObjectPair iop)
			{
				return LocalizeString("Use");
			}

			protected override bool Test(Sim actor, Stairs target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		private ThumbnailKey mThumbnailKey = ThumbnailKey.kInvalidThumbnailKey;

		public override void Init(ref InteractionInstanceParameters parameters)
		{
			World.StairsGetProductInformation(parameters.Hit.mPoint, out var stairProductKey, out var _);
			BuildBuyProduct product = UserToolUtils.GetProduct(UserToolUtils.BuildBuyProductType.ModularStairs, stairProductKey);
			mThumbnailKey = new ThumbnailKey(product.ProductResourceKey, ThumbnailSize.Large);
			base.Init(ref parameters);
		}

		public override ThumbnailKey GetIconKey()
		{
			return mThumbnailKey;
		}

		protected override bool Run()
		{
			if (!BuffFear.CanSimDoFearGatingAction(Actor, kFearBuffThresholdClimbStairs))
			{
				Actor.ShowTNSIfSelectable(Localization.LocalizeString(Actor.IsFemale, "Gameplay/Objects/Stairs:FearRefuseTNS", Actor), StyledNotification.NotificationStyle.kGameMessageNegative, ObjectGuid.InvalidObjectGuid, Actor.ObjectId);
				Actor.PlaySoloAnimation("a_fearModdlet_refuse_x", yield: true);
				return false;
			}
			return RouteUpOrDownStairs(Target, Actor);
		}
	}

	private sealed class HideUnhide : ImmediateInteraction<IActor, Stairs>
	{
		[DoesntRequireTuning]
		private sealed class Definition : ActorlessInteractionDefinition<IActor, Stairs, HideUnhide>
		{
			protected override string GetInteractionName(IActor a, Stairs target, InteractionObjectPair interaction)
			{
				if (target.IsHidden)
				{
					return LocalizeString("Unhide");
				}
				return LocalizeString("Hide");
			}

			protected override bool Test(IActor a, Stairs target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.InUse)
				{
					greyedOutTooltipCallback = InUseGreyedOutTooltip;
					return false;
				}
				return true;
			}

			private static string InUseGreyedOutTooltip()
			{
				return LocalizeString("InUseTooltip");
			}
		}

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Target.SetHiddenState(!Target.IsHidden);
			return true;
		}
	}

	private const string kStingUncoveredStairs = "sting_mystery";

	private const string kLocalizationKey = "Gameplay/Objects/Stairs";

	private const uint kStairsHidden = 3987050944u;

	public const string kSystemName = "Stairs";

	private bool mIsHidden;

	[TunableComment("Range: Negative integer. If a Sim has a fear buff with a greater strength than this value, they will not climb stairs.")]
	[Tunable]
	private static int kFearBuffThresholdClimbStairs = -45;

	public bool IsHidden => mIsHidden;

	public bool IsDiscovered => !IsHidden;

	public StairsPortalComponent StairsPortal => PortalComponent as StairsPortalComponent;

	public Slot TopSlot => RoutingSlots.Stairs_Top0;

	public Vector3 CauseEffectTargetPosition
	{
		get
		{
			if (PlumbBob.SelectedActor != null)
			{
				Vector3 positionOfSlot = GetPositionOfSlot(RoutingSlots.Stairs_Top0);
				Vector3 positionOfSlot2 = GetPositionOfSlot(RoutingSlots.Stairs_Bottom0);
				if (PlumbBob.SelectedActor.Position.y >= ((positionOfSlot + positionOfSlot2) * 0.5f).y)
				{
					return positionOfSlot;
				}
				return positionOfSlot2;
			}
			return Position;
		}
	}

	public static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/Objects/Stairs:" + name, parameters);
	}

	protected override void AddBuildBuyInteractions(List<InteractionDefinition> buildBuyInteractions)
	{
		buildBuyInteractions.Add(HideUnhide.Singleton);
		base.AddBuildBuyInteractions(buildBuyInteractions);
	}

	protected override void AddDebugInteractions(List<InteractionDefinition> debugInteractions)
	{
		debugInteractions.Add(HideUnhide.Singleton);
		base.AddDebugInteractions(debugInteractions);
	}

	public override void OnStartup()
	{
		AddComponent<StairsPortalComponent>(new object[0]);
		SetHiddenFlags(HiddenFlags.Model);
		SetHiddenState();
	}

	public override void OnLoad()
	{
		PortalComponent portalComponent = PortalComponent;
		if (portalComponent != null)
		{
			portalComponent.FreeAllRoutingLanes();
			if (mIsHidden)
			{
				StairsPortal.RemovePortals();
			}
		}
	}

	public void OnAddTombObjectComponent(ITombObjectComponent tombObjectComponent)
	{
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Hide, OnHide);
		tombObjectComponent.RegisterBehavior(ActivatedBehavior.Unhide, OnUnhide);
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		reader.ReadBool(3987050944u, out mIsHidden, defaultValue: false);
		SetHiddenState();
		return result;
	}

	public override bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
	{
		bool result = base.ExportContent(resKeyTable, objIdTable, writer);
		writer.WriteBool(3987050944u, mIsHidden);
		return result;
	}

	public virtual void LoadWorldBuilderData()
	{
		WorldBuilderData.Get("Stairs", ObjectId, "mIsHidden", ref mIsHidden);
		SetHiddenState();
	}

	public void SaveWorldBuilderData()
	{
		WorldBuilderData.Set("Stairs", ObjectId, "mIsHidden", mIsHidden, defaultValue: false);
	}

	public override List<InteractionObjectPair> GetAllInteractionsForActor(IActor s)
	{
		return BuildInteractions(s, base.GetAllInteractionsForActor(s), ClimbStairs.Singleton);
	}

	public override bool HasAnyInteraction(IActor actor, ref InteractionInstanceParameters parameters)
	{
		if (TestInteractions(actor, ref parameters, ClimbStairs.Singleton))
		{
			return true;
		}
		return base.HasAnyInteraction(actor, ref parameters);
	}

	private static bool HasFreeLanes(IStairs stairs, Sim actor)
	{
		PortalComponent portalComponent = stairs.PortalComponent;
		if (portalComponent != null)
		{
			uint numLanes = portalComponent.GetNumLanes();
			for (uint num = 0u; num < numLanes; num++)
			{
				if (portalComponent.IsLaneUnobstructed(portalComponent.GetSlotsForLaneIndex(num), actor, checkForSims: false, Route.RouteOption.None))
				{
					return true;
				}
			}
		}
		return false;
	}

	public Slot[] GetSlotsForSide(bool isBottomSide)
	{
		string text = ((!isBottomSide) ? "_Top" : "_Bottom");
		uint numLanes = StairsPortal.GetNumLanes();
		Slot[] array = new Slot[numLanes];
		for (uint num = 0u; num < numLanes; num++)
		{
			array[num] = Slots.Hash("RoutingSlot_Stairs" + text + num);
		}
		return array;
	}

	private static void CreateRouteToSlots(IStairs stairs, Route route, Slot[] slots, CASAgeGenderFlags ageGenderSpecies)
	{
		route.SetPreferredPortal(stairs.ObjectId);
		foreach (Slot slotName in slots)
		{
			Vector3 slotPosition = stairs.GetSlotPosition(slotName, (uint)ageGenderSpecies, isExitSlot: true);
			PointDestination pointDestination = new PointDestination();
			pointDestination.mPoint = slotPosition + stairs.GetForwardOfSlot(slotName) * -0.2f;
			route.AddDestination(pointDestination);
			pointDestination = new PointDestination();
			pointDestination.mPoint = slotPosition;
			route.AddDestination(pointDestination);
		}
		if (!route.Plan().Succeeded())
		{
			foreach (Slot slotName2 in slots)
			{
				route.SetOption(Route.RouteOption.DoLineOfSightCheckUserOverride, value: true);
				RadialRangeDestination radialRangeDestination = new RadialRangeDestination();
				radialRangeDestination.mCenterPoint = stairs.GetSlotPosition(slotName2, (uint)ageGenderSpecies, isExitSlot: true);
				radialRangeDestination.mConeVector = -stairs.GetForwardOfSlot(slotName2);
				radialRangeDestination.mfConeAngle = (float)Math.PI;
				radialRangeDestination.mfMaxRadius = 1f;
				radialRangeDestination.mfMinRadius = 0f;
				radialRangeDestination.mfPreferredSpacing = 0.15f;
				route.AddDestination(radialRangeDestination);
			}
			route.Plan();
		}
	}

	public static bool RouteUpOrDownStairs(IStairs stairs, Sim actor)
	{
		return RouteUpOrDownStairs(stairs, actor, shouldRetry: true);
	}

	private static bool RouteUpOrDownStairs(IStairs stairs, Sim actor, bool shouldRetry)
	{
		CASAgeGenderFlags ageGenderSpecies = actor.SimDescription.AgeGenderSpecies;
		Route route = actor.CreateRoute();
		CreateRouteToSlots(stairs, route, stairs.GetSlotsForSide(isBottom: true), ageGenderSpecies);
		Route route2 = actor.CreateRoute();
		CreateRouteToSlots(stairs, route2, stairs.GetSlotsForSide(isBottom: false), ageGenderSpecies);
		Route route3 = route2;
		if (MathUtils.IsSimilar(actor.Position.y, stairs.GetSlotPosition(stairs.TopSlot).y))
		{
			route3 = route;
		}
		if (route.GetDistanceRemaining() > route2.GetDistanceRemaining())
		{
			route3 = route;
		}
		if (!route3.PlanResult.Succeeded())
		{
			actor.PlayRouteFailure();
			return false;
		}
		if (!shouldRetry && route3.GetDistanceRemaining() >= 2f)
		{
			actor.PlayRouteFailure();
			return false;
		}
		if (actor.DoRoute(route3))
		{
			if (actor.SimRoutingComponent.LastStairsUsedGuid != stairs.ObjectId)
			{
				if (shouldRetry && HasFreeLanes(stairs, actor))
				{
					return RouteUpOrDownStairs(stairs, actor, shouldRetry: false);
				}
				actor.PlayRouteFailure(stairs);
				return false;
			}
			return true;
		}
		return false;
	}

	private bool OnHide(Sim sim)
	{
		if (!mIsHidden)
		{
			SetHiddenState(hide: true);
			Audio.StartObjectSound(ObjectId, "sting_mystery", loop: false);
			return true;
		}
		return false;
	}

	private bool OnUnhide(Sim sim)
	{
		if (mIsHidden)
		{
			SetHiddenState(hide: false);
			Audio.StartObjectSound(ObjectId, "sting_mystery", loop: false);
			return true;
		}
		return false;
	}

	private void PlayRevealVisualEffect()
	{
		int num = GetRoutingSlots().Length / 2;
		for (int i = 0; i < num; i++)
		{
			VisualEffect visualEffect = VisualEffect.Create("ep1StairsReveal");
			Vector3 positionOfSlot = GetPositionOfSlot(Slots.Hash("RoutingSlot_Stairs_Bottom" + i));
			Vector3 positionOfSlot2 = GetPositionOfSlot(Slots.Hash("RoutingSlot_Stairs_Top" + i));
			Vector3 pos = (positionOfSlot + positionOfSlot2) * 0.5f;
			pos.y = positionOfSlot2.y;
			Vector3 fwd = (positionOfSlot2 - positionOfSlot).Normalize();
			visualEffect.SetPosAndOrient(pos, fwd, Vector3.UnitY);
			visualEffect.SubmitOneShotEffect(VisualEffect.TransitionType.SoftTransition);
		}
	}

	private bool PushSimsFromStairCover()
	{
		World.StairsGetFloorCoverExtents(ObjectId, out var min, out var max);
		foreach (LotLocation allLotLocation in Lot.GetAllLotLocations(min, max))
		{
			PuddleManager.RemovePuddle(LotCurrent.LotId, allLotLocation);
			World.SetBurnt(LotCurrent.LotId, allLotLocation, burnt: false);
		}
		bool flag = PushSimsFromExtents(min, max);
		min.y = (max.y = Position.y);
		flag &= PushSimsFromExtents(min, max);
		uint[] footprintNameHashes = GetFootprintNameHashes();
		foreach (uint footprintNameHash in footprintNameHashes)
		{
			EnableFootprint(footprintNameHash);
		}
		return flag;
	}

	private bool PushSimsFromExtents(Vector3 min, Vector3 max)
	{
		return RoutingComponent.PushSimsOutOfRectStatic(null, new List<Sim>(), ref min, ref max, allowPushOutOfConversation: true, new InteractionPriority(InteractionPriorityLevel.High));
	}

	private void SetHiddenState()
	{
		SetHiddenState(mIsHidden);
	}

	public void SetHiddenState(bool hide)
	{
		if (mIsHidden && !hide)
		{
			PushSimsFromStairCover();
			PlayRevealVisualEffect();
		}
		mIsHidden = hide;
		if (mIsHidden)
		{
			uint[] footprintNameHashes = GetFootprintNameHashes();
			foreach (uint footprintNameHash in footprintNameHashes)
			{
				DisableFootprint(footprintNameHash);
			}
			StairsPortal.RemovePortals();
		}
		else
		{
			StairsPortal.AddStairsPortals();
		}
		World.ChangeStairState(LotCurrent.LotId, ObjectId, mIsHidden);
		TombRoomManager.UpdateTombMusic();
	}

	public int GetAdjoiningRoom(int roomId)
	{
		int roomIdOfSlot = GetRoomIdOfSlot(RoutingSlots.Stairs_Bottom0);
		if (roomId == roomIdOfSlot)
		{
			return GetRoomIdOfSlot(RoutingSlots.Stairs_Top0);
		}
		return roomIdOfSlot;
	}

	public int[] GetRoomConnections()
	{
		return new int[2]
		{
			GetRoomIdOfSlot(RoutingSlots.Stairs_Bottom0),
			GetRoomIdOfSlot(RoutingSlots.Stairs_Top0)
		};
	}

	public Vector3[] GetPortalOpenings()
	{
		return new Vector3[2]
		{
			GetSlotPosition(RoutingSlots.Stairs_Bottom0),
			GetSlotPosition(RoutingSlots.Stairs_Top0)
		};
	}

	public PortalRestriction IsAllowedThrough(int srcRoomId, int destRoomId, Sim actor)
	{
		if (actor != null && (actor.IsPuppy || actor.IsKitten || actor.IsHorse || actor.IsWildAnimal))
		{
			return PortalRestriction.DoorRestriction;
		}
		if (mIsHidden)
		{
			return PortalRestriction.DoorRestriction;
		}
		return PortalRestriction.None;
	}

	private static void OnStairsCompleted(ulong stairs, ulong follower, bool bSuccess)
	{
		new ObjectGuid(follower).ObjectFromId<Sim>()?.StartDefaultPose();
		Stairs stairs2 = new ObjectGuid(stairs).ObjectFromId<Stairs>();
		if (stairs2 != null && stairs2.PortalComponent is StairsPortalComponent stairsPortalComponent)
		{
			stairsPortalComponent.HandleStairsCompleted(new ObjectGuid(follower), bSuccess);
		}
	}
}
