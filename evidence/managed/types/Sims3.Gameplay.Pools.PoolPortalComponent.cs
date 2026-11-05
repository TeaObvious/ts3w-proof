// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Pools.PoolPortalComponent.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Interfaces;
using Sims3.Gameplay.ObjectComponents;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

namespace Sims3.Gameplay.Pools;

public class PoolPortalComponent : PortalComponent
{
	public enum RoutingSlotGroup
	{
		Inside,
		Outside
	}

	private const string kOutsideRoutingSlotPrefix = "RoutingSlot_Pool_Outside";

	private const string kInsideRoutingSlotPrefix = "RoutingSlot_Pool_Inside";

	private const uint kNumPreHashedSlots = 32u;

	public PoolPortalObject OwnerPoolPortalObject;

	private static Slot[] sPreHashedSlotsInside;

	private static Slot[] sPreHashedSlotsOutside;

	private static float kPoolWallOutsideOffset;

	private static float kPoolWallInsideOffset;

	protected override bool AddToUseListDuringTraversal => true;

	protected override bool RemoveFromUseListAfterTraversal => !(Owner is Pool);

	public override bool CanUseUmbrella => false;

	public PoolPortalComponent()
	{
	}

	static PoolPortalComponent()
	{
		kPoolWallOutsideOffset = 0.2f;
		kPoolWallInsideOffset = 0.45f;
		if (sPreHashedSlotsInside == null)
		{
			sPreHashedSlotsInside = new Slot[32];
			sPreHashedSlotsOutside = new Slot[32];
			for (uint num = 0u; num < 32; num++)
			{
				sPreHashedSlotsInside[num] = Slots.Hash("RoutingSlot_Pool_Inside" + num);
				sPreHashedSlotsOutside[num] = Slots.Hash("RoutingSlot_Pool_Outside" + num);
			}
		}
	}

	public PoolPortalComponent(GameObject o)
		: base(o)
	{
		OwnerPoolPortalObject = o as PoolPortalObject;
	}

	public override void OnStartup()
	{
		if (OwnerPoolPortalObject != null)
		{
			mAddPortalsCallback = OwnerPoolPortalObject.AddPortalsCallback;
		}
		base.OnStartup();
	}

	public bool RouteToSlotGroup(Sim s, RoutingSlotGroup slotGroup)
	{
		Slot[] routingSlotsForGroup = GetRoutingSlotsForGroup(slotGroup);
		if (routingSlotsForGroup.Length > 0)
		{
			Route route = ComponentCreateRoute(s);
			route.SetPreferredPortal(Owner.ObjectId);
			route.PlanToSlot(Owner, routingSlotsForGroup, null, bOffsetForPortalsByAGS: true);
			return s.DoRoute(route);
		}
		return false;
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
			Slots.Hash("RoutingSlot_Pool_Outside" + laneIndex),
			Slots.Hash("RoutingSlot_Pool_Inside" + laneIndex)
		};
	}

	public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
	{
		RoutingSlotGroup slotGroup = ((!(s.Posture is SwimmingInPool)) ? RoutingSlotGroup.Outside : RoutingSlotGroup.Inside);
		return new List<Slot>(GetRoutingSlotsForGroup(slotGroup));
	}

	public Slot[] GetRoutingSlotsForGroup(RoutingSlotGroup slotGroup)
	{
		string text;
		Slot[] array;
		if (slotGroup == RoutingSlotGroup.Inside)
		{
			text = "RoutingSlot_Pool_Inside";
			array = sPreHashedSlotsInside;
		}
		else
		{
			text = "RoutingSlot_Pool_Outside";
			array = sPreHashedSlotsOutside;
		}
		uint numLanes = GetNumLanes();
		Slot[] array2 = new Slot[numLanes];
		ObjectGuid objectId = Owner.ObjectId;
		for (uint num = 0u; num < numLanes; num++)
		{
			Slot slot = ((num < 32) ? array[num] : Slots.Hash(text + num));
			if (Slots.IsSlotEnabled(objectId, (uint)slot))
			{
				array2[num] = slot;
			}
			else
			{
				array2[num] = Slot.None;
			}
		}
		return array2;
	}

	public Slot GetValidSlotFromGroup(RoutingSlotGroup group)
	{
		string text;
		Slot[] array;
		if (group == RoutingSlotGroup.Inside)
		{
			text = "RoutingSlot_Pool_Inside";
			array = sPreHashedSlotsInside;
		}
		else
		{
			text = "RoutingSlot_Pool_Outside";
			array = sPreHashedSlotsOutside;
		}
		uint numLanes = GetNumLanes();
		ObjectGuid objectId = Owner.ObjectId;
		for (uint num = 0u; num < numLanes; num++)
		{
			Slot slot = ((num < 32) ? array[num] : Slots.Hash(text + num));
			if (Slots.IsSlotEnabled(objectId, (uint)slot))
			{
				return slot;
			}
		}
		return Slot.None;
	}

	public RoutingSlotGroup GetRoutingSlotGroupForSlot(Slot slot)
	{
		Slot[] routingSlotsForGroup = GetRoutingSlotsForGroup(RoutingSlotGroup.Outside);
		Slot[] array = routingSlotsForGroup;
		foreach (Slot slot2 in array)
		{
			if (slot == slot2)
			{
				return RoutingSlotGroup.Outside;
			}
		}
		return RoutingSlotGroup.Inside;
	}

	private BlockedStatus SpecialSlotClearTest(Slot slot, Sim sim)
	{
		RoutingSlotGroup routingSlotGroupForSlot = GetRoutingSlotGroupForSlot(slot);
		Matrix44 matrixOfSlot = Owner.GetMatrixOfSlot(slot);
		Vector3 v = matrixOfSlot.pos.V3;
		Vector3 endPoint = ((routingSlotGroupForSlot != RoutingSlotGroup.Outside) ? (v + matrixOfSlot.at.V3 * kPoolWallInsideOffset) : (v + matrixOfSlot.at.V3 * kPoolWallOutsideOffset));
		ObjectGuid secondObjectIdToIgnore = ObjectGuid.InvalidObjectGuid;
		CASAgeGenderFlags agsFlags = CASAgeGenderFlags.None;
		if (sim != null)
		{
			secondObjectIdToIgnore = sim.ObjectId;
			agsFlags = sim.SimDescription.AgeGenderSpecies;
		}
		return Route.RoutingBlockerCheck2d(v, endPoint, Route.RouteOption.BlockedByPeople, Owner.ObjectId, secondObjectIdToIgnore, agsFlags);
	}

	public override bool OnPortalStart(Sim s)
	{
		if (s.SimDescription.ToddlerOrBelow)
		{
			s.PlayRouteFailure(Owner.GetThoughtBalloonThumbnailKey());
			return false;
		}
		if (s.CarryingChildPosture != null)
		{
			s.PlayRouteFailure(s.CarryingChildPosture.Container.GetThoughtBalloonThumbnailKey());
			return false;
		}
		GameObject gameObject = ((s.GetObjectInLeftHand() != null) ? s.GetObjectInLeftHand() : s.GetObjectInRightHand());
		if (gameObject != null)
		{
			s.PlayRouteFailure(gameObject.GetThoughtBalloonThumbnailKey());
			return false;
		}
		if (OwnerPoolPortalObject is IBuildableFountain)
		{
			s.PlayRouteFailure();
			return false;
		}
		if (GetLaneInfo(s, out var lane))
		{
			Vector3 vector = OwnerPoolPortalObject.GetPositionOfSlot(lane.mLaneSlots[1]) - OwnerPoolPortalObject.GetPositionOfSlot(lane.mLaneSlots[0]);
			if (vector.IsSimilarTo(Vector3.Zero))
			{
				s.PlayRouteFailure();
				return false;
			}
			uint footprintNameHash = (uint)lane.mLaneSlots[0];
			try
			{
				if (vector.y < 0f)
				{
					OwnerPoolPortalObject.EnableFootprint(footprintNameHash);
					if (OwnerPoolPortalObject.GetIn(s, lane.mLaneSlots[0], lane.mLaneSlots[1]))
					{
						if (s.IsHuman && (!OccultImaginaryFriend.TryGetOccultFromSim(s, out var occult) || occult.IsReal) && s.BuffManager.HasAnyElement(BuffNames.Exhausted, BuffNames.Fatigued))
						{
							s.BuffManager.AddElement(BuffNames.Drowning, Origin.FromSwimming);
						}
						return true;
					}
					return false;
				}
				footprintNameHash = (uint)lane.mLaneSlots[1];
				OwnerPoolPortalObject.EnableFootprint(footprintNameHash);
				s.BuffManager.RemoveElement(BuffNames.Drowning);
				if (OwnerPoolPortalObject.GetOut(s, lane.mLaneSlots[0], lane.mLaneSlots[1]))
				{
					s.LoopIdle();
					if (s.HasTrait(TraitNames.Hydrophobic))
					{
						s.PlayReaction(ReactionTypes.WhyMe, ReactionSpeed.ImmediateWithoutOverlay);
					}
					return true;
				}
				return false;
			}
			finally
			{
				OwnerPoolPortalObject.DisableFootprint(footprintNameHash);
			}
		}
		return true;
	}

	public override Route ComponentCreateRoute(Sim s)
	{
		Route route = s.CreateRoute();
		route.SetOption(Route.RouteOption.UserOverrideSlotObstruction, value: true);
		route.SetOption(Route.RouteOption.DoLineOfSightCheckUserOverride, value: false);
		route.SetOption(Route.RouteOption.DoObjectPlacementCheckUserOverride, value: false);
		return route;
	}

	public string DebugGetNameOfSlot(Slot s)
	{
		uint numLanes = GetNumLanes();
		for (uint num = 0u; num < numLanes; num++)
		{
			if (s == Slots.Hash("RoutingSlot_Pool_Outside" + num))
			{
				return "RoutingSlot_Pool_Outside" + num;
			}
			if (s == Slots.Hash("RoutingSlot_Pool_Inside" + num))
			{
				return "RoutingSlot_Pool_Inside" + num;
			}
		}
		return "<Unknown>";
	}

	public override bool IsLaneUnobstructed(Slot[] laneSlots, Sim s, bool checkForSims, Route.RouteOption routeOptions)
	{
		if (!base.IsLaneUnobstructed(laneSlots, s, checkForSims, routeOptions))
		{
			return false;
		}
		BlockedStatus blockedStatus = SpecialSlotClearTest(laneSlots[0], s);
		BlockedStatus blockedStatus2 = SpecialSlotClearTest(laneSlots[1], s);
		if (blockedStatus == BlockedStatus.BlockedByObject || blockedStatus2 == BlockedStatus.BlockedByObject)
		{
			return false;
		}
		return true;
	}

	protected override bool DoAdditionalLaneChecks(bool bPreferedLane, Sim s, LaneInfo laneInfo)
	{
		BlockedStatus blockedStatus = SpecialSlotClearTest(laneInfo.mLaneSlots[0], s);
		BlockedStatus blockedStatus2 = SpecialSlotClearTest(laneInfo.mLaneSlots[1], s);
		if (blockedStatus == BlockedStatus.BlockedByObject || blockedStatus2 == BlockedStatus.BlockedByObject)
		{
			return false;
		}
		Lot lotCurrent = Owner.LotCurrent;
		if (lotCurrent.CommercialLotSubType == CommercialLotSubType.kEP10_Resort && s.IsSelectable && !lotCurrent.IsCheckedInResort(s) && !(s.Posture is SwimmingInPool) && s.Household.RealEstateManager != null && s.Household.RealEstateManager.FindVenueProperty(lotCurrent) == null)
		{
			return false;
		}
		if (bPreferedLane && (blockedStatus != BlockedStatus.Unobstructed || blockedStatus2 != BlockedStatus.Unobstructed))
		{
			s.PushSims(Owner.GetPositionOfSlot(laneInfo.mLaneSlots[0]), 1f, waitForPushes: true);
			s.PushSims(Owner.GetPositionOfSlot(laneInfo.mLaneSlots[1]), 1f, waitForPushes: true);
			return true;
		}
		return true;
	}
}
