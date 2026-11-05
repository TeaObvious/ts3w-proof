// Original PC 1.67 Sims3GameplaySystems.dll; complete type Sims3.Gameplay.Core.PlatformPortalComponent.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.ObjectComponents;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

namespace Sims3.Gameplay.Core;

public class PlatformPortalComponent : PortalComponent
{
	public enum RoutingSlotGroupSide
	{
		Inside,
		Outside
	}

	public struct RoutingSlotGroup
	{
		public RoutingSlotGroupSide Side;

		public int PlatformRoomId;
	}

	private const string kOutsideRoutingSlotPrefix = "RoutingSlot_Platform_Outside";

	private const string kInsideRoutingSlotPrefix = "RoutingSlot_Platform_Inside";

	private const uint kNumPreHashedSlots = 32u;

	public Platform OwnerPlatformPortalObject;

	private static Slot[] sPreHashedSlotsInside;

	private static Slot[] sPreHashedSlotsOutside;

	private static float kPlatformWallOutsideOffset;

	private static float kPlatformWallInsideOffset;

	protected override bool AddToUseListDuringTraversal => true;

	protected override bool RemoveFromUseListAfterTraversal => true;

	public override bool CanUseUmbrella => true;

	public PlatformPortalComponent()
	{
	}

	static PlatformPortalComponent()
	{
		kPlatformWallOutsideOffset = 0.22f;
		kPlatformWallInsideOffset = 0.18f;
		if (sPreHashedSlotsInside == null)
		{
			sPreHashedSlotsInside = new Slot[32];
			sPreHashedSlotsOutside = new Slot[32];
			for (uint num = 0u; num < 32; num++)
			{
				sPreHashedSlotsInside[num] = Slots.Hash("RoutingSlot_Platform_Inside" + num);
				sPreHashedSlotsOutside[num] = Slots.Hash("RoutingSlot_Platform_Outside" + num);
			}
		}
	}

	public PlatformPortalComponent(GameObject o)
		: base(o)
	{
		OwnerPlatformPortalObject = o as Platform;
	}

	public override void OnStartup()
	{
		if (OwnerPlatformPortalObject != null)
		{
			mAddPortalsCallback = OwnerPlatformPortalObject.AddPlatformPortalsCallback;
		}
		base.OnStartup();
	}

	protected override LaneInfoFlags GetLaneFlagsForLaneIndex(uint laneIndex)
	{
		return LaneInfoFlags.PlanToSlotNotPosition | LaneInfoFlags.NoLanesAvailableFailsRoute | LaneInfoFlags.NoLanesAvailableSkipsAdditionalLaneChecks;
	}

	public bool RouteToSlotGroup(Sim s, RoutingSlotGroup slotGroup)
	{
		Slot[] routingSlotsForGroup = GetRoutingSlotsForGroup(slotGroup);
		if (routingSlotsForGroup.Length > 0)
		{
			Route route = ComponentCreateRoute(s);
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
			Slots.Hash("RoutingSlot_Platform_Outside" + laneIndex),
			Slots.Hash("RoutingSlot_Platform_Inside" + laneIndex)
		};
	}

	public override List<Slot> GetStartSlotsForApproachingSim(Sim s, Vector3 preferredPos, ref bool preferredLaneSelected)
	{
		RoutingSlotGroup slotGroup = default;
		if (World.IsOnPlatform(s.Position))
		{
			slotGroup.Side = RoutingSlotGroupSide.Inside;
		}
		else
		{
			slotGroup.Side = RoutingSlotGroupSide.Outside;
		}
		slotGroup.PlatformRoomId = World.GetRoomId(preferredPos, eRoomDefinition.Platform);
		Slot[] routingSlotsForGroup = GetRoutingSlotsForGroup(slotGroup);
		Slot nearestSlot = Owner.GetNearestSlot(s, isExitSlot: false, preferredPos, routingSlotsForGroup);
		Slot pairedSlot = GetPairedSlot(nearestSlot);
		int roomIdOfSlot = Owner.GetRoomIdOfSlot(pairedSlot, eRoomDefinition.Platform);
		for (int i = 0; i < routingSlotsForGroup.Length; i++)
		{
			if (routingSlotsForGroup[i] != Slot.None && Owner.GetRoomIdOfSlot(GetPairedSlot(routingSlotsForGroup[i]), eRoomDefinition.Platform) != roomIdOfSlot)
			{
				routingSlotsForGroup[i] = Slot.None;
			}
		}
		return new List<Slot>(routingSlotsForGroup);
	}

	public Slot[] GetRoutingSlotsForGroupSide(RoutingSlotGroupSide slotGroupSide)
	{
		Slot[] array = ((slotGroupSide == RoutingSlotGroupSide.Inside) ? sPreHashedSlotsInside : sPreHashedSlotsOutside);
		string text = ((slotGroupSide != RoutingSlotGroupSide.Inside) ? "RoutingSlot_Platform_Outside" : "RoutingSlot_Platform_Inside");
		uint numLanes = GetNumLanes();
		Slot[] array2 = new Slot[numLanes];
		for (uint num = 0u; num < numLanes; num++)
		{
			Slot slot = ((num < 32) ? array[num] : Slots.Hash(text + num));
			Owner.GetPositionOfSlot(slot);
			if (Slots.IsSlotEnabled(Owner.ObjectId, (uint)slot))
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

	public Slot[] GetRoutingSlotsForGroup(RoutingSlotGroup slotGroup)
	{
		uint numLanes = GetNumLanes();
		Slot[] routingSlotsForGroupSide = GetRoutingSlotsForGroupSide(slotGroup.Side);
		for (uint num = 0u; num < numLanes; num++)
		{
			if (routingSlotsForGroupSide[num] != Slot.None && Owner.GetRoomIdOfSlot(routingSlotsForGroupSide[num], eRoomDefinition.Platform) != slotGroup.PlatformRoomId)
			{
				routingSlotsForGroupSide[num] = Slot.None;
			}
		}
		return routingSlotsForGroupSide;
	}

	public RoutingSlotGroup GetRoutingSlotGroupForSlot(Slot slot)
	{
		RoutingSlotGroup result = default;
		result.Side = RoutingSlotGroupSide.Inside;
		Slot[] routingSlotsForGroupSide = GetRoutingSlotsForGroupSide(RoutingSlotGroupSide.Outside);
		Slot[] array = routingSlotsForGroupSide;
		foreach (Slot slot2 in array)
		{
			if (slot == slot2)
			{
				result.Side = RoutingSlotGroupSide.Outside;
			}
		}
		result.PlatformRoomId = Owner.GetRoomIdOfSlot(slot, eRoomDefinition.Platform);
		return result;
	}

	private bool SpecialSlotClearTest(Slot slot, Sim sim)
	{
		RoutingSlotGroupSide side = GetRoutingSlotGroupForSlot(slot).Side;
		Matrix44 matrixOfSlot = Owner.GetMatrixOfSlot(slot);
		Vector3 v = matrixOfSlot.pos.V3;
		Vector3 endPoint = ((side != RoutingSlotGroupSide.Outside) ? (v + matrixOfSlot.at.V3 * kPlatformWallInsideOffset) : (v + matrixOfSlot.at.V3 * kPlatformWallOutsideOffset));
		ObjectGuid secondObjectIdToIgnore = ObjectGuid.InvalidObjectGuid;
		CASAgeGenderFlags agsFlags = CASAgeGenderFlags.None;
		if (sim != null)
		{
			secondObjectIdToIgnore = sim.ObjectId;
			agsFlags = sim.SimDescription.AgeGenderSpecies;
		}
		BlockedStatus blockedStatus = Route.RoutingBlockerCheck2d(v, endPoint, Route.RouteOption.BlockedByPeople, Owner.ObjectId, secondObjectIdToIgnore, agsFlags);
		return blockedStatus == BlockedStatus.Unobstructed;
	}

	public override bool OnPortalStart(Sim s)
	{
		if (s.SimDescription.ToddlerOrBelow)
		{
			s.PlayRouteFailure();
			return false;
		}
		if (s.IsDeer)
		{
			return false;
		}
		if (GetLaneInfo(s, out var lane))
		{
			Vector3 vector = OwnerPlatformPortalObject.GetPositionOfSlot(lane.mLaneSlots[1], s.SimDescription.AgeGenderSpecies, isExitSlot: true) - OwnerPlatformPortalObject.GetPositionOfSlot(lane.mLaneSlots[0], s.SimDescription.AgeGenderSpecies, isExitSlot: false);
			if (vector.IsSimilarTo(Vector3.Zero))
			{
				s.PlayRouteFailure();
				return false;
			}
			uint footprintNameHash = (uint)lane.mLaneSlots[0];
			try
			{
				if (vector.y > 0f)
				{
					OwnerPlatformPortalObject.EnableFootprint(footprintNameHash);
					return OwnerPlatformPortalObject.GetUp(s, lane.mLaneSlots[0], lane.mLaneSlots[1]);
				}
				footprintNameHash = (uint)lane.mLaneSlots[1];
				OwnerPlatformPortalObject.EnableFootprint(footprintNameHash);
				return OwnerPlatformPortalObject.GetDown(s, lane.mLaneSlots[0], lane.mLaneSlots[1]);
			}
			finally
			{
				OwnerPlatformPortalObject.DisableFootprint(footprintNameHash);
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
			if (s == Slots.Hash("RoutingSlot_Platform_Outside" + num))
			{
				return "RoutingSlot_Platform_Outside" + num;
			}
			if (s == Slots.Hash("RoutingSlot_Platform_Inside" + num))
			{
				return "RoutingSlot_Platform_Inside" + num;
			}
		}
		return "<Unknown>";
	}

	protected override bool DoAdditionalLaneChecks(bool bPreferedLane, Sim s, LaneInfo laneInfo)
	{
		Vector3 positionOfSlot = Owner.GetPositionOfSlot(laneInfo.mLaneSlots[0], s.SimDescription.AgeGenderSpecies, isExitSlot: false);
		Vector3 positionOfSlot2 = Owner.GetPositionOfSlot(laneInfo.mLaneSlots[1], s.SimDescription.AgeGenderSpecies, isExitSlot: true);
		Vector3 positionOfSlot3 = Owner.GetPositionOfSlot(laneInfo.mLaneSlots[1], s.SimDescription.AgeGenderSpecies, isExitSlot: false);
		GameObject gameObject = null;
		if ((s.SimDescription.Species == CASAgeGenderFlags.Dog && s.SimDescription.Age != CASAgeGenderFlags.Child) || s.SimDescription.Species == CASAgeGenderFlags.Horse)
		{
			gameObject = GlobalFunctions.CreateObjectOutOfWorld("DynamicSlot") as GameObject;
			gameObject.SetHiddenFlags(HiddenFlags.Model);
		}
		if (gameObject != null)
		{
			Route pathToLane = GetPathToLane(s, ref laneInfo);
			if (pathToLane == null || !pathToLane.PlanResult.Succeeded())
			{
				if (gameObject != null)
				{
					gameObject.Destroy();
					gameObject = null;
				}
				return false;
			}
			ObjectGuid[] array = new ObjectGuid[2] { mScriptObject.ObjectId, s.ObjectId };
			TestObjectPlacementBooleans testObjectPlacementBooleans = TestObjectPlacementBooleans.Routable | TestObjectPlacementBooleans.AllowTunnelPortalIntersection;
			Vector3 forwardOfSlot = Owner.GetForwardOfSlot(laneInfo.mLaneSlots[0]);
			Vector3 forwardOfSlot2 = Owner.GetForwardOfSlot(laneInfo.mLaneSlots[1]);
			bool flag = World.IsOnPlatform(s.Position);
			Vector3[] dynamicFootprintVertices = new Vector3[4];
			bool flag2 = true;
			gameObject.SetPosition(positionOfSlot);
			gameObject.SetForward(forwardOfSlot);
			DynamicSimFootprint.UpdateDynamicFootprintShape(ref dynamicFootprintVertices, s, positionOfSlot, forwardOfSlot, Owner.GetSideOfSlot(laneInfo.mLaneSlots[0]), bCropToCellMarginOnSides: true, bUseFeetBoundary: false);
			Route.AddDiscourageFootprint(gameObject.ObjectId.Value, dynamicFootprintVertices, bHighImpassable: true, bAllowPlacementInWorld: true, bPlacementFootprint: true);
			testObjectPlacementBooleans |= TestObjectPlacementBooleans.AllowIntersectionWithPlatformWalls;
			flag2 = flag2 && World.TestObjectPlacement(gameObject.ObjectId, testObjectPlacementBooleans, array, positionOfSlot, forwardOfSlot);
			Route.RemoveDiscourageFootprint(gameObject.ObjectId.Value);
			testObjectPlacementBooleans &= ~TestObjectPlacementBooleans.AllowIntersectionWithPlatformWalls;
			if (!flag2)
			{
				if (gameObject != null)
				{
					gameObject.Destroy();
					gameObject = null;
				}
				return false;
			}
			gameObject.SetPosition(positionOfSlot2);
			gameObject.SetForward(forwardOfSlot);
			DynamicSimFootprint.UpdateDynamicFootprintShape(ref dynamicFootprintVertices, s, positionOfSlot2, forwardOfSlot, Owner.GetSideOfSlot(laneInfo.mLaneSlots[0]), bCropToCellMarginOnSides: true, bUseFeetBoundary: false);
			Route.AddDiscourageFootprint(gameObject.ObjectId.Value, dynamicFootprintVertices, bHighImpassable: true, bAllowPlacementInWorld: true, bPlacementFootprint: true);
			if (!flag)
			{
				testObjectPlacementBooleans |= TestObjectPlacementBooleans.AllowIntersectionWithPlatformWalls;
			}
			flag2 = flag2 && World.TestObjectPlacement(gameObject.ObjectId, testObjectPlacementBooleans, array, positionOfSlot2, forwardOfSlot);
			Route.RemoveDiscourageFootprint(gameObject.ObjectId.Value);
			if (!flag)
			{
				testObjectPlacementBooleans &= ~TestObjectPlacementBooleans.AllowIntersectionWithPlatformWalls;
			}
			if (!flag2)
			{
				if (gameObject != null)
				{
					gameObject.Destroy();
					gameObject = null;
				}
				return false;
			}
			Vector3 vector = (flag ? positionOfSlot : positionOfSlot2);
			gameObject.SetPosition(vector);
			gameObject.SetForward(forwardOfSlot);
			DynamicSimFootprint.UpdateDynamicFootprintShape(ref dynamicFootprintVertices, s, vector, forwardOfSlot, Owner.GetSideOfSlot(laneInfo.mLaneSlots[0]), bCropToCellMarginOnSides: true, bUseFeetBoundary: true);
			Route.AddDiscourageFootprint(gameObject.ObjectId.Value, dynamicFootprintVertices, bHighImpassable: true, bAllowPlacementInWorld: true, bPlacementFootprint: true);
			flag2 = flag2 && World.TestObjectPlacement(gameObject.ObjectId, testObjectPlacementBooleans, array, vector, forwardOfSlot);
			Route.RemoveDiscourageFootprint(gameObject.ObjectId.Value);
			if (!flag2)
			{
				if (gameObject != null)
				{
					gameObject.Destroy();
					gameObject = null;
				}
				return false;
			}
			ref ObjectGuid reference = ref array[1];
			reference = ObjectGuid.InvalidObjectGuid;
			float num = forwardOfSlot * s.ForwardVector;
			if (flag && num < -0.7f)
			{
				gameObject.SetPosition(positionOfSlot3);
				gameObject.SetForward(forwardOfSlot2);
				DynamicSimFootprint.UpdateDynamicFootprintShape(ref dynamicFootprintVertices, s, positionOfSlot3, forwardOfSlot2, Owner.GetSideOfSlot(laneInfo.mLaneSlots[1]), bCropToCellMarginOnSides: true, bUseFeetBoundary: false);
				Route.AddDiscourageFootprint(gameObject.ObjectId.Value, dynamicFootprintVertices, bHighImpassable: true, bAllowPlacementInWorld: true, bPlacementFootprint: true);
				testObjectPlacementBooleans |= TestObjectPlacementBooleans.AllowIntersectionWithPlatformWalls;
				flag2 = flag2 && World.TestObjectPlacement(gameObject.ObjectId, testObjectPlacementBooleans, array, positionOfSlot3, forwardOfSlot2);
				Route.RemoveDiscourageFootprint(gameObject.ObjectId.Value);
				testObjectPlacementBooleans &= ~TestObjectPlacementBooleans.AllowIntersectionWithPlatformWalls;
				if (!flag2)
				{
					if (gameObject != null)
					{
						gameObject.Destroy();
						gameObject = null;
					}
					return false;
				}
			}
		}
		if (bPreferedLane && (!SpecialSlotClearTest(laneInfo.mLaneSlots[0], s) || !SpecialSlotClearTest(laneInfo.mLaneSlots[1], s)))
		{
			s.PushSims(positionOfSlot, 1f, waitForPushes: true);
			s.PushSims(positionOfSlot3, 1f, waitForPushes: true);
		}
		return true;
	}
}
