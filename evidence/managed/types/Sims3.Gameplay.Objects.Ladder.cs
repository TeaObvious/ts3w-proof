// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Objects.Ladder.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.Gameplay.Routing;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;

namespace Sims3.Gameplay.Objects;

public class Ladder : GameObject, IPortalConnectionObject, IHasPortalComponent, INotHauntable, IGameObject, IScriptObject, IScriptLogic, IHasScriptProxy, IObjectUI, IExportableContent, IBuildBuyListener
{
	public class LadderPortalComponent : PortalComponent
	{
		protected override PortalAddInitTime ShouldAddPortalAtInit => PortalAddInitTime.OnStartup;

		protected override bool AddToUseListDuringTraversal => false;

		protected override bool RemoveFromUseListAfterTraversal => false;

		public override bool CanUseUmbrella => false;

		public LadderPortalComponent()
		{
		}

		public LadderPortalComponent(GameObject o)
			: base(o)
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
			return (uint)kLanes.Length;
		}

		public override Slot[] GetSlotsForLaneIndex(uint laneIndex)
		{
			return kLanes[laneIndex];
		}

		public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
		{
			List<Slot> list = new List<Slot>();
			if (!(Owner is Ladder ladder))
			{
				return list;
			}
			bool flag = false;
			bool flag2 = ladder.IsPositionAtBottom(preferredPos);
			if (flag2 && s.RoutingComponent.GetCurrentRouteAction() is PortalAction portalAction && portalAction.PortalObject == Owner)
			{
				Route routeToBeFollowed = portalAction.RouteToBeFollowed;
				uint currentSegment = routeToBeFollowed.GetCurrentSegment();
				uint num = currentSegment + 1;
				if (num < routeToBeFollowed.GetNumPaths())
				{
					Vector3 outPosition = Vector3.Invalid;
					routeToBeFollowed.GetPathEndPoint(num, ref outPosition);
					Vector3 positionOfSlot = Owner.GetPositionOfSlot(Slot.RoutingSlot_1);
					Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(Slot.RoutingSlot_2);
					float num2 = (positionOfSlot - outPosition).LengthSqr();
					float num3 = (positionOfSlot2 - outPosition).LengthSqr();
					flag = num2 < num3;
				}
			}
			int num4 = (flag2 ? 1 : 0);
			if (flag)
			{
				list.Add(kLaneLeft[num4]);
				list.Add(kLaneRight[num4]);
			}
			else
			{
				list.Add(kLaneRight[num4]);
				list.Add(kLaneLeft[num4]);
			}
			preferredLaneSelected = false;
			return list;
		}

		public override bool IsLaneUnobstructed(Slot[] laneSlots, Sim sim, bool checkForSims, Route.RouteOption routeOptions)
		{
			if (!Owner.IsRoutingSlotObstructed(sim, laneSlots[0], sim, checkForSims: false, routeOptions))
			{
				return !Owner.IsRoutingSlotObstructed(sim, laneSlots[1], sim, checkForSims: false, routeOptions);
			}
			return false;
		}

		public override void OnStartup()
		{
			mAddPortalsCallback = AddPortals;
			base.OnStartup();
		}

		public void AddPortals()
		{
			if (!Sims3.SimIFace.Objects.IsValid(Owner.ObjectId))
			{
				return;
			}
			ObjectGuid objectId = Owner.ObjectId;
			Slot[][] kLanes = Ladder.kLanes;
			foreach (Slot[] array in kLanes)
			{
				if (IsLaneUnobstructed(array, null, checkForSims: false, Route.RouteOption.None))
				{
					Vector3 positionOfSlot = Owner.GetPositionOfSlot(array[0]);
					Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(array[1]);
					Route.AddPortal(objectId, positionOfSlot, positionOfSlot2, kPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, CASAGSAvailabilityFlags.HumanAgeMask | CASAGSAvailabilityFlags.GenderMask | CASAGSAvailabilityFlags.HandednessMask);
					Route.AddPortal(objectId, positionOfSlot2, positionOfSlot, kPortalCost, PortalType.PortalTypeAnimateThrough, RoutePortalFlags.OneWayPortal, CASAGSAvailabilityFlags.HumanAgeMask | CASAGSAvailabilityFlags.GenderMask | CASAGSAvailabilityFlags.HandednessMask);
				}
			}
		}

		public override bool OnPortalStart(Sim s)
		{
			if (!GetLaneInfo(s, out var lane))
			{
				return false;
			}
			if (!(Owner is Ladder ladder))
			{
				return false;
			}
			InteractionInstance runningInteraction = s.InteractionQueue.RunningInteraction;
			InteractionDefinition interactionDefinition = (ladder.IsPositionAtBottom(s.Position) ? PortalClimb.ClimbUpSingleton : PortalClimb.ClimbDownSingleton);
			PortalClimb portalClimb = interactionDefinition.CreateInstance(ladder, s, runningInteraction.GetPriority(), runningInteraction.Autonomous, runningInteraction.CancellableByPlayer) as PortalClimb;
			portalClimb.LaneIndex = lane.mLaneIndex;
			portalClimb.IsPortalAction = true;
			return portalClimb.RunInteraction();
		}
	}

	private class PortalClimb : Interaction<Sim, Ladder>
	{
		private sealed class Definition : InteractionDefinition<Sim, Ladder, PortalClimb>
		{
			public bool StartingFromBottom;

			private Definition()
			{
			}

			public Definition(bool startingFromBottom)
			{
				StartingFromBottom = startingFromBottom;
			}

			protected override bool Test(Sim a, Ladder target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (target.IsPositionAtBottom(a.Position) != StartingFromBottom)
				{
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, Ladder target, InteractionObjectPair iop)
			{
				if (StartingFromBottom)
				{
					return LocalizeString("ClimbUp");
				}
				return LocalizeString("ClimbDown");
			}
		}

		public uint LaneIndex;

		public bool IsPortalAction;

		private bool mStartingFromBottom;

		public static readonly InteractionDefinition ClimbUpSingleton = new Definition(startingFromBottom: true);

		public static readonly InteractionDefinition ClimbDownSingleton = new Definition(startingFromBottom: false);

		public override void Init(ref InteractionInstanceParameters parameters)
		{
			base.Init(ref parameters);
			Definition definition = parameters.InteractionDefinition as Definition;
			mStartingFromBottom = definition.StartingFromBottom;
		}

		protected override bool Run()
		{
			if (!Target.Line.WaitForTurn(this, SimQueue.WaitBehavior.CutAheadOfLowerPrioritySims, ExitReason.Default, kMaxWaitTime))
			{
				return false;
			}
			if (!IsPortalAction)
			{
				Vector3 positionOfSlot = Target.GetPositionOfSlot(Slot.RoutingSlot_1);
				Vector3 positionOfSlot2 = Target.GetPositionOfSlot(Slot.RoutingSlot_2);
				float num = (positionOfSlot - Actor.Position).LengthSqr();
				float num2 = (positionOfSlot2 - Actor.Position).LengthSqr();
				if (num2 < num)
				{
					if (Target.IsSlotValid(Actor, Slot.RoutingSlot_2))
					{
						LaneIndex = 1u;
					}
					else
					{
						if (!Target.IsSlotValid(Actor, Slot.RoutingSlot_1))
						{
							Actor.PlayRouteFailure();
							return false;
						}
						LaneIndex = 0u;
					}
				}
				else if (Target.IsSlotValid(Actor, Slot.RoutingSlot_1))
				{
					LaneIndex = 0u;
				}
				else
				{
					if (!Target.IsSlotValid(Actor, Slot.RoutingSlot_2))
					{
						Actor.PlayRouteFailure();
						return false;
					}
					LaneIndex = 1u;
				}
				Slot slotName = (mStartingFromBottom ? kLanes[LaneIndex][1] : kLanes[LaneIndex][0]);
				if (!Actor.RouteToSlot(Target, slotName))
				{
					return false;
				}
			}
			StandardEntry();
			bool paramValue = LaneIndex == 1;
			string entryState = (mStartingFromBottom ? "EnterBottom" : "EnterTop");
			if (mStartingFromBottom)
			{
				Vector3 positionOfSlot3 = Target.GetPositionOfSlot(Slot.RoutingSlot_3);
				Vector3 forwardOfSlot = Target.GetForwardOfSlot(Slot.RoutingSlot_3);
				Actor.SetPosition(positionOfSlot3);
				Actor.SetForward(forwardOfSlot);
			}
			EnterStateMachine("ladder", entryState, "x", "ladder");
			SetParameter("EnterOrExitRight", paramValue);
			if (!mStartingFromBottom)
			{
				AddSynchronousOneShotScriptEventHandler(101u, OnAnimateClimbDown);
			}
			AnimateSim("Exit");
			StandardExit();
			if (mStartingFromBottom)
			{
				Actor.StartDefaultPose();
				PositionSim();
			}
			return true;
		}

		private void OnAnimateClimbDown(StateMachineClient sender, IEvent evt)
		{
			PositionSim();
		}

		private void PositionSim()
		{
			Slot[] array = kLanes[LaneIndex];
			Slot slotName = (mStartingFromBottom ? array[0] : array[1]);
			Vector3 positionOfSlot = Target.GetPositionOfSlot(slotName);
			Vector3 forwardOfSlot = Target.GetForwardOfSlot(slotName);
			if (mStartingFromBottom)
			{
				forwardOfSlot *= -1f;
			}
			Actor.SetPosition(positionOfSlot);
			Actor.SetForward(forwardOfSlot);
		}
	}

	private const Slot kGenericTopSlot = Slot.RoutingSlot_0;

	private const Slot kRoutingSlotTopLeft = Slot.RoutingSlot_1;

	private const Slot kRoutingSlotTopRight = Slot.RoutingSlot_2;

	private const Slot kGenericBottomSlot = Slot.RoutingSlot_3;

	private const Slot kRoutingSlotBottomLeft = Slot.RoutingSlot_4;

	private const Slot kRoutingSlotBottomRight = Slot.RoutingSlot_5;

	private const int kIndexTop = 0;

	private const int kIndexBottom = 1;

	private const int kIndexLeft = 0;

	private const int kIndexRight = 1;

	private static readonly string sLocalizationKey = "Sims3/Gameplay/Objects/Ladder:";

	private static readonly Slot[] kLaneLeft = new Slot[2]
	{
		Slot.RoutingSlot_1,
		Slot.RoutingSlot_4
	};

	private static readonly Slot[] kLaneRight = new Slot[2]
	{
		Slot.RoutingSlot_2,
		Slot.RoutingSlot_5
	};

	private static readonly Slot[][] kLanes = new Slot[2][] { kLaneLeft, kLaneRight };

	public SimQueue Line = new SimQueue(SimQueue.WaitLocation.StayAtCurrentLocation, kMaxNumSimsInLine);

	[TunableComment("Float. Cost of using portal.")]
	[Tunable]
	private static float kPortalCost = 1f;

	[Tunable]
	[TunableComment("Int. How many Sims can wait to use ladder.")]
	private static int kMaxNumSimsInLine = 3;

	[TunableComment("Float. Max Sims minutes a Sim will wait in line to use ladder.")]
	[Tunable]
	private static float kMaxWaitTime = 30f;

	[TunableComment("Traits that avoid using ladders.")]
	[Tunable]
	private static TraitNames[] kTraitsThatAvoidLadders = new TraitNames[2]
	{
		TraitNames.CouchPotato,
		TraitNames.Coward
	};

	public override SimQueue SimLine => Line;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString(sLocalizationKey + name, parameters);
	}

	public override void OnStartup()
	{
		AddComponent<LadderPortalComponent>(new object[0]);
		AddInteraction(PortalClimb.ClimbUpSingleton);
		AddInteraction(PortalClimb.ClimbDownSingleton);
	}

	public override bool HandToolAllowPlacement(ref string errorStr)
	{
		if (!IsRoutingSlotObstructed(null, Slot.RoutingSlot_1) || !IsRoutingSlotObstructed(null, Slot.RoutingSlot_2))
		{
			return true;
		}
		errorStr = Localization.LocalizeString("Ui/Feedback/BuildBuy/Errors:LadderPlacement");
		return false;
	}

	public PortalRestriction IsAllowedThrough(int srcRoomId, int destRoomId, Sim actor)
	{
		return PortalRestriction.None;
	}

	public int GetAdjoiningRoom(int roomId)
	{
		int[] roomConnections = GetRoomConnections();
		if (roomId != roomConnections[0])
		{
			return roomConnections[0];
		}
		return roomConnections[1];
	}

	public int[] GetRoomConnections()
	{
		return new int[2]
		{
			World.GetRoomId(GetPositionOfSlot(Slot.RoutingSlot_0)),
			World.GetRoomId(GetPositionOfSlot(Slot.RoutingSlot_3))
		};
	}

	public Vector3[] GetPortalOpenings()
	{
		return new Vector3[3]
		{
			GetPositionOfSlot(Slot.RoutingSlot_1),
			GetPositionOfSlot(Slot.RoutingSlot_2),
			GetPositionOfSlot(Slot.RoutingSlot_3)
		};
	}

	public void OnEnterBuildBuyMode()
	{
	}

	public void OnExitBuildBuyMode()
	{
		Route.RemovePortals(ObjectId);
		(PortalComponent as LadderPortalComponent).AddPortals();
	}

	public override bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
	{
		bool result = base.ImportContent(resKeyTable, objIdTable, reader);
		(PortalComponent as LadderPortalComponent).AddPortals();
		return result;
	}

	private bool IsPositionAtBottom(Vector3 pos)
	{
		Vector3 positionOfSlot = GetPositionOfSlot(Slot.RoutingSlot_0);
		Vector3 positionOfSlot2 = GetPositionOfSlot(Slot.RoutingSlot_3);
		float num = (pos - positionOfSlot).LengthSqr();
		float num2 = (pos - positionOfSlot2).LengthSqr();
		return num2 < num;
	}

	public bool IsSlotValid(Sim sim, Slot slot)
	{
		LotLocation location = LotLocation.Invalid;
		World.GetLotLocationAtFloor(GetPositionOfSlot(slot), ref location);
		if (!World.HasSolidFloor(LotCurrent.LotId, location))
		{
			return false;
		}
		if (IsRoutingSlotObstructed(sim, slot))
		{
			return false;
		}
		return true;
	}

	public bool DiscourageSimFromUsing(Sim sim)
	{
		if (sim.SimDescription.Elder)
		{
			return true;
		}
		if (sim.TraitManager.HasAnyElement(kTraitsThatAvoidLadders))
		{
			return true;
		}
		return false;
	}
}
