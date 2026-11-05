// Original PC 1.67 SimIFace.dll; actual ILSpy type decompilation.
// Analyst: use the paired original IL for exact arithmetic, option constants and method identity.
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Reflection;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.RouteDestinations;

namespace Sims3.SimIFace;

[Persistable]
public abstract class Route : IDisposable
{
	public enum RouteOption : long
	{
		None = 0L,
		PassThroughWalls = 1L,
		PassThroughObjects = 2L,
		BlockedByPeople = 4L,
		UseMostDirectPath = 8L,
		EnablePlanningAsCar = 0x10L,
		DisablePlanningAsPedestrian = 0x20L,
		BeginAsCar = 0x40L,
		EndAsCar = 0x80L,
		ReplanToFindObstacleWhenPathPlanFails = 0x100L,
		MakeDynamicObjectAdjustments = 0x200L,
		PushSimsAtDestination = 0x400L,
		AddPenaltyForSimsAtDestination = 0x800L,
		BlockedByDynamicFootprints = 0x1000L,
		TryOtherParts = 0x2000L,
		UseAutoSlotFootprintLocking = 0x4000L,
		DoSlotObstructionChecksUserOverride = 0x8000L,
		DoLineOfSightCheckUserOverride = 0x10000L,
		DoObjectPlacementCheckUserOverride = 0x20000L,
		UserOverrideSlotObstruction = 0x40000L,
		IgnoreParent = 0x80000L,
		IgnoreChildren = 0x100000L,
		CreateSubPaths = 0x200000L,
		DisableRouteLeadIns = 0x400000L,
		CheckForFootprintsNearGoals = 0x800000L,
		DoNotEmitDegenerateRoutesForRadialRangeGoals = 0x1000000L,
		ForcePhysicsBasedRaycast = 0x2000000L,
		ConstrainGoalsToSingleLevel = 0x4000000L,
		DisallowGoalsOnRoads = 0x8000000L,
		AllowGoalsToLeavePools = 0x10000000L,
		PenalizeGoalsOnDifferentLevels = 0x20000000L,
		ForceUseMainEntrance = 0x40000000L,
		RouteAsGhost = 0x80000000L,
		DebugPathPlan = 0x100000000L,
		AllowGoalsToLeavePlatforms = 0x200000000L,
		PlatformsNotBlocking = 0x400000000L,
		EnableSubwayPlanning = 0x800000000L,
		DisallowGoalsOnThisPlatform = 0x1000000000L,
		BlockUnderPoolWaterPlanning = 0x2000000000L,
		DisallowGoalsOnBridges = 0x4000000000L,
		PlanUsingStroller = 0x8000000000L,
		ReplanUsingStroller = 0x10000000000L,
		BeginAsStroller = 0x20000000000L,
		EndAsStroller = 0x40000000000L,
		IncludeLotTerrainInPointToPointTest = 0x80000000000L,
		RouteAsLargeAnimal = 0x100000000000L,
		OffsetDestinationForLongAnimals = 0x200000000000L,
		RouteWhileMounted = 0x400000000000L,
		IgnoreSidewalkAndLotRestrictions = 0x800000000000L,
		PreventCatsRoutingThroughPlants = 0x1000000000000L,
		RouteAsFlier = 0x2000000000000L,
		RouteAsSimWalkingDog = 0x4000000000000L,
		RouteAsSimWalkingLittleDog = 0x8000000000000L,
		RouteAsSimLeadingHorse = 0x10000000000000L,
		DisableAvoidance = 0x20000000000000L,
		IgnoreFaceToDestinationTestForPets = 0x40000000000000L,
		IgnorePortalTunnelFootprintsAtDestination = 0x80000000000000L,
		IgnorePrivateFootprints = 0x100000000000000L,
		DisallowRouteBackwards = 0x200000000000000L,
		EnableUFOPlanning = 0x800000000000000L,
		EnableWaterPlanning = 0x1000000000000000L,
		EnablePondPlanning = 0x2000000000000000L
	}

	public enum RouteOption2 : long
	{
		None = 0L,
		DestinationMustBeInDeepWater = 1L,
		EnablePlanningAsBoat = 2L,
		DisablePlanningOnLand = 4L,
		BeginAsBoat = 8L,
		EndAsBoat = 0x10L,
		RouteAsShark = 0x20L,
		RouteAsMermaid = 0x40L,
		RouteAsLifeguard = 0x80L,
		DestinationMustBeOnLand = 0x100L,
		UseFollowerStartOrientation = 0x200L,
		UseOppositeOfFollowerStartOrientation = 0x400L,
		EnableHoverTrainPlanning = 0x800L
	}

	public struct RouteOptionPair
	{
		public static readonly RouteOptionPair Default = new RouteOptionPair(RouteOption.None, RouteOption2.None);

		public RouteOption mOptions;

		public RouteOption2 mOptions2;

		public RouteOptionPair(RouteOption opt)
		{
			mOptions = opt;
			mOptions2 = RouteOption2.None;
		}

		public RouteOptionPair(RouteOption opt, RouteOption2 opt2)
		{
			mOptions = opt;
			mOptions2 = opt2;
		}
	}

	public enum RouteMetaType
	{
		None,
		GoHome,
		GoRabbitHole,
		GoCommunityLot,
		GoWork
	}

	public enum PortalPermissions : ulong
	{
		Arch = 18446744072718094335uL,
		Door = 18446744072650985471uL,
		DoorDogVariant = 1574784uL,
		DoorHorseVariant = 16803712uL,
		DoorSimLeadingHorseVariant = 536872832uL,
		StairsHuman = 2047uL,
		StairsPetDVariant = DoorDogVariant,
		StairsPetCLVariant = 12781440uL,
		PlatformHuman = StairsHuman,
		PlatformDogVariant = DoorDogVariant,
		PlatformCatLittleDogVariant = StairsPetCLVariant,
		PlatformHorseVariant = 26496uL,
		PlatformFoalVariant = 6016uL,
		BoxStallHumanVariant = StairsHuman,
		BoxStallHorseVariant = 30592uL
	}

	[Flags]
	public enum SteeringOptions : uint
	{
		None = 0u,
		IgnoreGhostsForAvoidance = 1u,
		DoAdditionalAvoidanceCheckBeforeWade = 2u
	}

	public enum GangwayRouteState : ushort
	{
		None,
		ToPort,
		ToHouseboat
	}

	[Persistable(false)]
	public delegate void AboutToPlanDelegate(Route r, string routeType, Vector3 point);

	[Persistable(false)]
	public delegate void PostPlanDelegate(Route r, string routeType, string result);

	[Persistable(false)]
	public delegate void AddDestinationDelegate(Route r, RouteDestination rd);

	[Persistable(false)]
	public delegate void IsSlotUnobstructedDelegate(ObjectGuid sim, ObjectGuid target, Slot slot, bool beforeCheck);

	[Persistable]
	public class RouteCallbackEntry
	{
		public RouteCallback Callback;

		public RouteCallbackType TriggerType;

		public RouteCallbackCondition TriggerCondition;

		public bool PrevConditionResult;

		private RouteCallbackEntry()
		{
		}

		public RouteCallbackEntry(RouteCallback callback, RouteCallbackType type, RouteCallbackCondition cond)
		{
			Callback = callback;
			TriggerType = type;
			TriggerCondition = cond;
			PrevConditionResult = false;
		}

		public bool Execute(Route r, RouteEvent re, out bool shouldDelete)
		{
			bool flag = false;
			if (TriggerCondition == null || TriggerCondition(r, re))
			{
				if (TriggerType == RouteCallbackType.TriggerOnTrue)
				{
					if (!PrevConditionResult)
					{
						flag = true;
					}
				}
				else
				{
					flag = true;
				}
				if (flag)
				{
					if (Callback == null)
					{
						shouldDelete = true;
						return false;
					}
					try
					{
						Callback(r, re);
					}
					catch (ResetException)
					{
						if (r.Follower != null)
						{
							r.Follower.SetObjectToReset();
						}
						throw;
					}
					catch (Exception)
					{
						if (r.Follower != null)
						{
							r.Follower.SetObjectToReset();
							r.Follower.Target.ToString();
						}
					}
				}
				PrevConditionResult = true;
			}
			else
			{
				PrevConditionResult = false;
			}
			shouldDelete = flag && TriggerType == RouteCallbackType.TriggerOnce;
			return flag;
		}

		public override bool Equals(object obj)
		{
			if (obj is RouteCallbackEntry other)
			{
				return Equals(other);
			}
			return false;
		}

		public bool Equals(RouteCallbackEntry other)
		{
			if (other.Callback == Callback && other.TriggerType == TriggerType)
			{
				return other.TriggerCondition == TriggerCondition;
			}
			return false;
		}

		public override int GetHashCode()
		{
			int num = ((Callback != null) ? Callback.GetHashCode() : 0);
			return num ^ TriggerType.GetHashCode() ^ TriggerCondition.GetHashCode();
		}
	}

	public delegate bool ShouldUsePortal();

	public delegate bool RouteToNaturalWaterBodyPositionCheck(Vector3 candidateActorPos, Vector3 pointInWater);

	private const float kAddDestinationLocationCallbackQuantization = 0.05f;

	public static AboutToPlanDelegate AboutToPlanCallback;

	public static PostPlanDelegate PostPlanCallback;

	protected static Dictionary<ObjectGuid, AddDestinationDelegate> AddDestinationTargetCallbacks;

	protected static Dictionary<Vector3, AddDestinationDelegate> AddDestinationLocationCallbacks;

	public static bool sRouteLogEnabled;

	private static IRouteManager gRouteManager;

	private static ConstructorInfo sCtorInfo;

	public bool CanPlayReactionsAtEndOfRoute;

	public bool IgnoreGreetedStatusOnLot;

	public bool ExecutionFromNonSimTaskIsSafe;

	private float mfMinRadius;

	private float mfMaxRadius = -1f;

	private bool mbRouteBackwards;

	protected static Dictionary<ObjectGuid, IsSlotUnobstructedDelegate> IsSlotUnobstructedCallbacks;

	private ShouldUsePortal mShouldUsePortalCallback;

	private IHasScriptProxy mTargetPortalObject;

	public float MinRadius => mfMinRadius;

	public float MaxRadius => mfMaxRadius;

	public bool RouteBackwards
	{
		get
		{
			return mbRouteBackwards;
		}
		set
		{
			mbRouteBackwards = value;
		}
	}

	public abstract uint Handle { get; }

	public abstract bool ReplanAllowed { get; set; }

	public abstract bool DoRouteFail { get; set; }

	public abstract uint RouteHandle { get; }

	public abstract IScriptProxy Follower { get; set; }

	public abstract uint FollowerAgeGenderSpecies { get; set; }

	public abstract RoutePlanResult PlanResult { get; set; }

	public abstract int ExitReasonsInterrupt { get; set; }

	public abstract IHasScriptProxy DestObj { get; }

	public abstract bool DestObjInvalid { get; }

	public abstract bool IsActive { get; }

	public uint LastSegment => GetNumSegments() - 1;

	public abstract uint NumRouteFailReplans { get; set; }

	public abstract List<RouteCallbackEntry> RouteCallbacks { get; }

	public static void AddAddDestinationCallback(ObjectGuid objectId, AddDestinationDelegate callback)
	{
		Lazy.Combine(ref AddDestinationTargetCallbacks, objectId, callback);
	}

	public static void AddAddDestinationCallback(Vector3 location, AddDestinationDelegate callback)
	{
		location.x = (int)(location.x * 0.05f);
		location.z = (int)(location.z * 0.05f);
		location.y = (int)location.y;
		if (AddDestinationLocationCallbacks == null)
		{
			AddDestinationLocationCallbacks = new Dictionary<Vector3, AddDestinationDelegate>();
		}
		Vector3 vector = location;
		for (int i = 0; i <= 1; i++)
		{
			for (int j = 0; j <= 1; j++)
			{
				location = vector;
				location.x += i;
				location.z += j;
				if (!AddDestinationLocationCallbacks.TryGetValue(location, out var value))
				{
					AddDestinationLocationCallbacks[location] = callback;
					continue;
				}
				AddDestinationDelegate value2 = (AddDestinationDelegate)Delegate.Combine(value, callback);
				AddDestinationLocationCallbacks[location] = value2;
			}
		}
	}

	public static void RemoveAddDestinationCallback(ObjectGuid objectId, AddDestinationDelegate callback)
	{
		EATrace.Verify(Lazy.Remove(ref AddDestinationTargetCallbacks, objectId, callback), "Assymetric use of Add/RemoveAddDestinationCallback");
	}

	public static void RemoveAddDestinationCallback(Vector3 location, AddDestinationDelegate callback)
	{
		if (AddDestinationLocationCallbacks == null)
		{
			return;
		}
		location.x = (int)(location.x * 0.05f);
		location.z = (int)(location.z * 0.05f);
		location.y = (int)location.y;
		Vector3 vector = location;
		for (int i = 0; i <= 1; i++)
		{
			for (int j = 0; j <= 1; j++)
			{
				location = vector;
				location.x += i;
				location.z += j;
				if (!AddDestinationLocationCallbacks.TryGetValue(location, out var value))
				{
					return;
				}
				AddDestinationDelegate addDestinationDelegate = (AddDestinationDelegate)Delegate.Remove(value, callback);
				if (addDestinationDelegate == null)
				{
					AddDestinationLocationCallbacks.Remove(location);
					if (AddDestinationLocationCallbacks.Count == 0)
					{
						AddDestinationLocationCallbacks = null;
						return;
					}
				}
				else if (addDestinationDelegate != value)
				{
					AddDestinationLocationCallbacks[location] = addDestinationDelegate;
				}
			}
		}
	}

	public static void InvokeAddDestinationCallback(ObjectGuid objectId, Route r, RouteDestination rd)
	{
		if (Lazy.TryGetValue<Dictionary<ObjectGuid, AddDestinationDelegate>, ObjectGuid, AddDestinationDelegate>(AddDestinationTargetCallbacks, objectId, out var value))
		{
			value(r, rd);
		}
	}

	public static void InvokeAddDestinationCallback(Vector3 location, Route r, RouteDestination rd)
	{
		if (AddDestinationLocationCallbacks != null)
		{
			location.x = (int)(location.x * 0.05f);
			location.z = (int)(location.z * 0.05f);
			location.y = (int)location.y;
			if (AddDestinationLocationCallbacks.TryGetValue(location, out var value))
			{
				value(r, rd);
			}
		}
	}

	static Route()
	{
		gRouteManager = (IRouteManager)AppDomain.CurrentDomain.GetData("RouteManager");
	}

	public static Route Create(IScriptProxy simObj, uint ageGenderFlags)
	{
		if (sCtorInfo == null)
		{
			sCtorInfo = (ConstructorInfo)AppDomain.CurrentDomain.GetData("RouteCtor");
			if (sCtorInfo == null)
			{
				return null;
			}
		}
		return (Route)sCtorInfo.Invoke(new object[2] { simObj, ageGenderFlags });
	}

	public static bool IsObjectRouting(ObjectGuid simObjID)
	{
		Vector3 position = default;
		Vector3 velocity = default;
		return gRouteManager.IsObjectRouting(simObjID, ref position, ref velocity);
	}

	public static bool IsObjectRouting(ObjectGuid simObjID, ref Vector3 position, ref Vector3 velocity)
	{
		return gRouteManager.IsObjectRouting(simObjID, ref position, ref velocity);
	}

	public static RouteIsOkToIdleFlags IsOkToIdleAtCurrentLocation(ObjectGuid simObjID, ulong[] ignoreIds, float radius, CASAgeGenderFlags agsFlags)
	{
		return gRouteManager.IsOkToIdleAtCurrentLocation(simObjID, (ignoreIds == null) ? new ulong[1] { simObjID.mValue } : ignoreIds, radius, agsFlags);
	}

	public static BlockedStatus IsRouteToObjectUnobstructed(ObjectGuid scriptHandle, Vector3 point, RouteOption options, ObjectGuid objectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return gRouteManager.IsRouteToObjectUnobstructed(scriptHandle, point, options, objectIdToIgnore, agsFlags);
	}

	public static BlockedStatus IsRouteToObjectUnobstructed(ObjectGuid scriptHandle, Vector3 point, RouteOptionPair options, ObjectGuid objectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return gRouteManager.IsRouteToObjectUnobstructed(scriptHandle, point, options, objectIdToIgnore, agsFlags);
	}

	public static BlockedStatus RoutingBlockerCheck2d(Vector2 startPoint, int startPointLevel, Vector2 endPoint, int endPointLevel, RouteOption options, ObjectGuid firstObjectIdToIgnore, ObjectGuid secondObjectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return gRouteManager.RoutingBlockerCheck2d(startPoint, startPointLevel, endPoint, endPointLevel, options, firstObjectIdToIgnore, secondObjectIdToIgnore, agsFlags);
	}

	public static BlockedStatus RoutingBlockerCheck2d(Vector2 startPoint, int startPointLevel, Vector2 endPoint, int endPointLevel, RouteOptionPair options, ObjectGuid firstObjectIdToIgnore, ObjectGuid secondObjectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return gRouteManager.RoutingBlockerCheck2d(startPoint, startPointLevel, endPoint, endPointLevel, options, firstObjectIdToIgnore, secondObjectIdToIgnore, agsFlags);
	}

	public static BlockedStatus RoutingBlockerCheck2d(Vector3 startPoint, Vector3 endPoint, RouteOption options, ObjectGuid firstObjectIdToIgnore, ObjectGuid secondObjectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		LotLocation location = default;
		LotLocation location2 = default;
		World.GetLotLocation(startPoint, ref location);
		World.GetLotLocation(endPoint, ref location2);
		return RoutingBlockerCheck2d(new Vector2(startPoint.x, startPoint.z), location.mLevel, new Vector2(endPoint.x, endPoint.z), location2.mLevel, options, firstObjectIdToIgnore, secondObjectIdToIgnore, agsFlags);
	}

	public static BlockedStatus RoutingBlockerCheck2d(Vector3 startPoint, Vector3 endPoint, RouteOptionPair options, ObjectGuid firstObjectIdToIgnore, ObjectGuid secondObjectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		LotLocation location = default;
		LotLocation location2 = default;
		World.GetLotLocation(startPoint, ref location);
		World.GetLotLocation(endPoint, ref location2);
		return RoutingBlockerCheck2d(new Vector2(startPoint.x, startPoint.z), location.mLevel, new Vector2(endPoint.x, endPoint.z), location2.mLevel, options, firstObjectIdToIgnore, secondObjectIdToIgnore, agsFlags);
	}

	public static void AddIsSlotUnobstructedCallback(ObjectGuid objectId, IsSlotUnobstructedDelegate callback)
	{
		Lazy.Combine(ref IsSlotUnobstructedCallbacks, objectId, callback);
	}

	public static void RemoveIsSlotUnobstructedCallback(ObjectGuid objectId, IsSlotUnobstructedDelegate callback)
	{
		bool flag = Lazy.Remove(ref IsSlotUnobstructedCallbacks, objectId, callback);
	}

	public static BlockedStatus IsSlotUnobstructed(ObjectGuid sim, ObjectGuid scriptHandle, Slot slotNameHash, bool checkForSims, RouteOption options, ObjectGuid objectIdToIgnore)
	{
		return IsSlotUnobstructed(sim, scriptHandle, slotNameHash, checkForSims, options, objectIdToIgnore, CASAgeGenderFlags.None, isExitSlot: false);
	}

	public static BlockedStatus IsSlotUnobstructed(ObjectGuid sim, ObjectGuid scriptHandle, Slot slotNameHash, bool checkForSims, RouteOption options, ObjectGuid objectIdToIgnore, CASAgeGenderFlags agsFlags, bool isExitSlot)
	{
		Lazy.TryGetValue<Dictionary<ObjectGuid, IsSlotUnobstructedDelegate>, ObjectGuid, IsSlotUnobstructedDelegate>(IsSlotUnobstructedCallbacks, scriptHandle, out var value);
		value?.Invoke(sim, scriptHandle, slotNameHash, beforeCheck: true);
		BlockedStatus result = gRouteManager.IsSlotUnobstructed(scriptHandle, slotNameHash, checkForSims, options, objectIdToIgnore, agsFlags, isExitSlot);
		value?.Invoke(sim, scriptHandle, slotNameHash, beforeCheck: false);
		return result;
	}

	public static void SetDebugIdentifier(ObjectGuid simObjID, string identifier)
	{
		gRouteManager.SetDebugIdentifier(simObjID, identifier);
	}

	public static void SetMinimumDistanceForCarTravel(float minDistanceForCarTravel)
	{
		gRouteManager.SetMinimumDistanceForCarTravel(minDistanceForCarTravel);
	}

	public static void SetMinimumDistanceForBoatTravel(float minDistanceForBoatTravel)
	{
		gRouteManager.SetMinimumDistanceForBoatTravel(minDistanceForBoatTravel);
	}

	public static void SetCarSpeedGlobalMultiplier(float multiplier)
	{
		gRouteManager.SetCarSpeedGlobalMultiplier(multiplier);
	}

	public static void SetCarSpeed(ObjectGuid carObjId, float speed)
	{
		gRouteManager.SetCarSpeed(carObjId, speed);
	}

	public static void SetIsPlayerObject(ObjectGuid carObjId, bool bState)
	{
		gRouteManager.SetIsPlayerObject(carObjId, bState);
	}

	public static void SetFadePriority(ObjectGuid carObjId, uint priority)
	{
		gRouteManager.SetFadePriority(carObjId, priority);
	}

	public static void SetCarAcceleration(ObjectGuid carObjId, float acceleration)
	{
		gRouteManager.SetCarAcceleration(carObjId, acceleration);
	}

	public static float CalculateMinimumDistanceForLocomotionAnimSpec(ObjectGuid simObjID, RouteAnimationSpec rAnimSpec)
	{
		return gRouteManager.CalculateMinimumDistanceForLocomotionAnimSpec(simObjID, rAnimSpec);
	}

	public static float GetSteeringObjectRadius(ObjectGuid simObjId)
	{
		return gRouteManager.GetSteeringObjectRadius(simObjId);
	}

	public static bool PlaceSocialFootprintObject(Vector3 simAPos, Slot slotAName, Vector3 simBPos, Slot slotBName, ObjectGuid footprintId)
	{
		return gRouteManager.PlaceSocialFootprintObject(simAPos, slotAName, simBPos, slotBName, footprintId);
	}

	public abstract bool PlaceSocialFootprint(Slot slotAName, Vector3 simBPos, Slot slotBName, ObjectGuid footprintId);

	public static bool PlaceGroupSocial(ulong[] groupedScriptHandles, ulong[] singleScriptHandles, out Vector3[] positionArray, out Vector3[] orientArray, float fSeparation)
	{
		bool flag = gRouteManager.PlaceGroupSocial(groupedScriptHandles, singleScriptHandles, out var positionArray2, out var orientArray2, fSeparation);
		if (flag)
		{
			positionArray = new Vector3[positionArray2.Length / 3];
			for (int i = 0; i < positionArray.Length; i++)
			{
				ref Vector3 reference = ref positionArray[i];
				reference = new Vector3(positionArray2[3 * i], positionArray2[3 * i + 1], positionArray2[3 * i + 2]);
			}
			orientArray = new Vector3[orientArray2.Length / 3];
			for (int j = 0; j < orientArray.Length; j++)
			{
				ref Vector3 reference2 = ref orientArray[j];
				reference2 = new Vector3(orientArray2[3 * j], orientArray2[3 * j + 1], orientArray2[3 * j + 2]);
			}
		}
		else
		{
			positionArray = new Vector3[0];
			orientArray = new Vector3[0];
		}
		return flag;
	}

	public static bool PlaceDestinationPoint(Vector3 currPos, out Vector3 newPos)
	{
		return gRouteManager.PlaceDestinationPoint(currPos, out newPos);
	}

	public static void GetPositionAndOrientationForRailPath(ObjectGuid trainObjId, int railIndexStart, int railIndexEnd, out Vector3 position, out Vector3 orientation)
	{
		gRouteManager.GetPositionAndOrientationForRailPath(trainObjId, railIndexStart, railIndexEnd, out position, out orientation);
	}

	public static bool AddDiscourageFootprint(ulong scriptHandle, Vector3[] discourageRegionPointAry, bool bHighImpassable, bool bAllowPlacementInWorld)
	{
		return AddDiscourageFootprint(scriptHandle, discourageRegionPointAry, bHighImpassable, bAllowPlacementInWorld, bPlacementFootprint: false);
	}

	public static bool AddDiscourageFootprint(ulong scriptHandle, Vector3[] discourageRegionPointAry, bool bHighImpassable, bool bAllowPlacementInWorld, bool bPlacementFootprint)
	{
		return gRouteManager.AddDiscourageFootprint(scriptHandle, discourageRegionPointAry, bHighImpassable, bAllowPlacementInWorld, bPlacementFootprint);
	}

	public static bool RemoveDiscourageFootprint(ulong scriptHandle)
	{
		return gRouteManager.RemoveDiscourageFootprint(scriptHandle);
	}

	public static bool AddPrivateFootprint(ulong scriptHandle, Vector3[] privateFootprintPointAry, bool bAllowPlacementInWorld)
	{
		return gRouteManager.AddPrivateFootprint(scriptHandle, privateFootprintPointAry, bAllowPlacementInWorld);
	}

	public static bool RemovePrivateFootprint(ulong scriptHandle)
	{
		return gRouteManager.RemovePrivateFootprint(scriptHandle);
	}

	public static PortalHandle AddPortal(ObjectGuid objId, Vector3 startPos, Vector3 endPos, float portalCost, PortalType portalType, RoutePortalFlags flags)
	{
		return AddPortal(objId, startPos, endPos, portalCost, portalType, flags, CASAGSAvailabilityFlags.All);
	}

	public static PortalHandle AddPortal(ObjectGuid objId, Vector3 startPos, Vector3 endPos, float portalCost, PortalType portalType, RoutePortalFlags flags, CASAGSAvailabilityFlags agsFlags)
	{
		uint num = gRouteManager.AddPortal(objId, startPos, endPos, portalCost, portalType, flags, agsFlags);
		if (num != 0)
		{
			return new PortalHandle(num);
		}
		return null;
	}

	public static void DestroyPortalHandle(uint portalHandle)
	{
		gRouteManager.DestroyPortalHandle(portalHandle);
	}

	public static bool AddPortalLocationVariation(ObjectGuid objId, PortalHandle portalHandle, Vector3 startPos, Vector3 endPos, Vector3 backwardsStartPos, Vector3 backwardsEndPos, CASAGSAvailabilityFlags agsFlags)
	{
		return gRouteManager.AddPortalLocationVariation(objId, portalHandle.Handle, startPos, endPos, backwardsStartPos, backwardsEndPos, agsFlags);
	}

	public static bool AddDivingBoardPortals(ObjectGuid objId)
	{
		return gRouteManager.AddDivingBoardPortals(objId);
	}

	public static bool AddWaterSlidePortals(ObjectGuid objId)
	{
		return gRouteManager.AddWaterSlidePortals(objId);
	}

	public static bool AddPoolPortals(ObjectGuid objId)
	{
		return gRouteManager.AddPoolPortals(objId);
	}

	public static bool AddPlatformPortals(ObjectGuid objId)
	{
		return gRouteManager.AddPlatformPortals(objId);
	}

	public static bool AddStairPortals(ObjectGuid objId)
	{
		return gRouteManager.AddStairPortals(objId);
	}

	public static bool SetOceanPortalOwner(ObjectGuid objId)
	{
		return gRouteManager.SetOceanPortalOwner(objId);
	}

	public static bool RemovePortals(ObjectGuid objId)
	{
		return gRouteManager.RemovePortals(objId);
	}

	public static bool SetPortalCost(ObjectGuid objId, float cost)
	{
		return gRouteManager.SetPortalCost(objId, cost);
	}

	public static bool SetPortalAgeGenderFlags(ObjectGuid objId, uint ageGenderFlags)
	{
		return gRouteManager.SetPortalAgeGenderFlags(objId, ageGenderFlags);
	}

	public static bool SetPortalLockStatus(ulong lotId, bool locked)
	{
		return gRouteManager.SetPortalLockStatus(lotId, locked);
	}

	public static void MarkRoomForUpdate(ulong lotId, int roomId)
	{
		gRouteManager.MarkRoomForUpdate(lotId, roomId);
	}

	public static StairTraversalResult StartStairTraversal(ulong simObjID, PortalRoutingSpec portalSpec, RouteAnimationSpec animSpec)
	{
		return gRouteManager.StartStairTraversal(simObjID, portalSpec, animSpec);
	}

	public static bool CanTransitionWalkstyle(uint oldWalkstyleHash, uint newWalkstyleHash, CASAgeGenderFlags ageSpecies)
	{
		return gRouteManager.CanTransitionWalkstyle(oldWalkstyleHash, newWalkstyleHash, (uint)ageSpecies);
	}

	public static void SetRouteSoundSpec(ObjectGuid carObjId, RouteSoundSpec rSpec)
	{
		gRouteManager.SetRouteSoundSpec(carObjId, rSpec);
	}

	public static void SetTravellingEventInterval(ObjectGuid simObjId, float interval)
	{
		gRouteManager.SetTravellingEventInterval(simObjId, interval);
	}

	public static void SetAvoidanceFieldRangeScale(ObjectGuid simObjId, float scale)
	{
		gRouteManager.SetAvoidanceFieldRangeScale(simObjId, scale);
	}

	public static void SetAvoidanceFieldSmoothing(ObjectGuid simObjId, float s)
	{
		gRouteManager.SetAvoidanceFieldSmoothing(simObjId, s);
	}

	public static void SetAvoidanceFieldForSnorkeling(ObjectGuid simObjId)
	{
		gRouteManager.SetAvoidanceFieldForSnorkeling(simObjId);
	}

	public static void ResetAvoidanceFieldForSnorkeling(ObjectGuid simObjId)
	{
		gRouteManager.ResetAvoidanceFieldForSnorkeling(simObjId);
	}

	public static void SetShouldHandleObstructionsEncountered(ObjectGuid simObjId, bool b)
	{
		gRouteManager.SetShouldHandleObstructionsEncountered(simObjId, b);
	}

	public static void SetAvoidanceFieldUseAdvancedAvoidance(ObjectGuid simObjId, bool useAdvancedAvoidance)
	{
		gRouteManager.SetAvoidanceFieldUseAdvancedAvoidance(simObjId, useAdvancedAvoidance);
	}

	public static void ForcePlayWeatherEffectForTerrainType(ObjectGuid simObjId, WeatherTerrainType weatherTerrainType)
	{
		gRouteManager.ForcePlayWeatherEffectForTerrainType(simObjId, weatherTerrainType);
	}

	public static void SetSteeringOption(ObjectGuid objId, SteeringOptions option, bool isOn)
	{
		gRouteManager.SetSteeringOption(objId, option, isOn);
	}

	public static void ResetSteering(ObjectGuid objId)
	{
		gRouteManager.ResetSteering(objId);
	}

	public static bool IsStairObject(ObjectGuid objId)
	{
		return gRouteManager.IsStairObject(objId);
	}

	public static void OnExitBuildBuy()
	{
		gRouteManager.OnExitBuildBuy();
	}

	public static Rect GetDynamicAvoidanceFootprintRectForAgeSpecies(CASAgeGenderFlags flags)
	{
		return gRouteManager.GetDynamicAvoidanceFootprintRectForAgeSpecies((uint)flags);
	}

	public static Rect GetFootBoundaryRectForAgeSpecies(CASAgeGenderFlags flags)
	{
		return gRouteManager.GetFootBoundaryRectForAgeSpecies((uint)flags);
	}

	public static void InitPairedAvoidance(ObjectGuid masterObjId, ObjectGuid slaveObjId, CASAgeGenderFlags slaveAGS)
	{
		gRouteManager.InitShutdownPairedAvoidance(masterObjId.Value, slaveObjId.Value, (uint)slaveAGS, bInit: true);
	}

	public static void ShutdownPairedAvoidance(ObjectGuid masterObjId, ObjectGuid slaveObjId, CASAgeGenderFlags slaveAGS)
	{
		gRouteManager.InitShutdownPairedAvoidance(masterObjId.Value, slaveObjId.Value, (uint)slaveAGS, bInit: false);
	}

	public static void SetRoutingDisplayOption(uint option, uint val)
	{
		gRouteManager.SetRoutingDisplayOption(option, val);
	}

	public static uint GetRoutingDisplayOption(uint option)
	{
		return gRouteManager.GetRoutingDisplayOption(option);
	}

	public abstract ObjectGuid GetDestinationObstruction();

	public abstract ObjectGuid GetObstructionAtPoint(Vector3 pt);

	public abstract ObjectGuid GetObstructionAtWorldOrLotPoint(Vector3 pt);

	public abstract bool GetDestPoint(out Vector3 pt);

	public Vector3 GetDestPoint()
	{
		GetDestPoint(out var pt);
		return pt;
	}

	public abstract Vector3 GetOriginalStartPoint();

	public abstract Vector3 GetCurrentStartPoint();

	public abstract Vector3 GetPlanStartPoint();

	public abstract float GetDistanceRemaining();

	public abstract float GetPathDistanceRemaining(uint pathIndex);

	public abstract void Dispose();

	public abstract bool Start(RouteAnimationSpec animSpec, RouteStartFlags routeStartFlags);

	public abstract bool Start(RouteAnimationSpec animSpec, uint[] slaveAnimSpecs, ulong[] slaveRoutingObjects, bool bSlavesRoute, RouteStartFlags routeStartFlags);

	public abstract bool Stop(StopMode stopMode);

	public abstract bool SubstitutePathsFromRoute(Route r);

	public abstract void UpdateRouteAnimationSpec(ObjectGuid simObjId, RouteAnimationSpec rSpec);

	public abstract void UpdateRouteAnimationSpec(ObjectGuid simObjId, RouteAnimationSpec rSpec, uint[] slaveAnimSpecsPacked, ulong[] slaveRoutingObjects);

	public abstract void SetOption(RouteOption optionType, bool value);

	public abstract bool GetOption(RouteOption optionType);

	public abstract void SetOption2(RouteOption2 optionType, bool value);

	public abstract bool GetOption2(RouteOption2 optionType);

	public abstract ObjectGuid IsPointObstructedBySim(Vector3 point);

	public abstract RouteMetaType GetRouteMetaType();

	public abstract void SetRouteMetaType(RouteMetaType routeMetaType);

	public abstract void SetRouteActionResult(uint actionResult);

	public abstract void SetLockKeys(params ulong[] lockKeys);

	public abstract void AddObjectToIgnoreForRoute(ObjectGuid objectId);

	public abstract void RemoveObjectToIgnoreForRoute(ObjectGuid objectId);

	public abstract void ClearObjectToIgnoreForRoute();

	public abstract ObjectGuid[] GetObjectsToIgnoreForRoute();

	public abstract void AddObjectToIgnoreForRouteEndTurn(ObjectGuid objectId);

	public abstract void RemoveObjectToIgnoreForRouteEndTurn(ObjectGuid objectId);

	public abstract void ClearObjectToIgnoreForRouteEndTurn();

	public abstract ObjectGuid[] GetObjectsToIgnoreForRouteEndTurn();

	public abstract void AddObjectToForbiddenPortalList(ObjectGuid objectId);

	public abstract void RemoveObjectFromForbiddenPortalList(ObjectGuid objectId);

	public abstract void ClearForbiddenPortalList();

	public abstract void SetPreferredPortal(ObjectGuid objectId);

	public abstract void MergeInPlanResult(RoutePlanResult planResult);

	public abstract Route ShallowCopy();

	public abstract Route Clone();

	public abstract void ClearDestinationList();

	public abstract void AddDestination(RouteDestination destination);

	public abstract void SetValidRooms(ulong nLotId, int[] validRooms);

	public abstract RoutePlanResult Plan();

	public abstract RoutePlanResult PlanFromPoint(Vector3 startPosition);

	public RoutePlanResult PlanToPoint(Vector3 destPosition)
	{
		ClearDestinationList();
		PointDestination pointDestination = new PointDestination();
		pointDestination.mPoint = destPosition;
		AddDestination(pointDestination);
		return Plan();
	}

	public RoutePlanResult PlanToPointFromPoint(Vector3 startPosition, Vector3 destPosition)
	{
		ClearDestinationList();
		PointDestination pointDestination = new PointDestination();
		pointDestination.mPoint = destPosition;
		AddDestination(pointDestination);
		return PlanFromPoint(startPosition);
	}

	public RoutePlanResult PlanToMatrix(ref Matrix44 destMat)
	{
		ClearDestinationList();
		PointDestination pointDestination = new PointDestination();
		pointDestination.mPoint = destMat.pos.V3;
		pointDestination.mFacingDirection = destMat.at.V3;
		AddDestination(pointDestination);
		return Plan();
	}

	public RoutePlanResult PlanToMatrixFromPoint(ref Vector3 startPosition, ref Matrix44 destMat)
	{
		ClearDestinationList();
		PointDestination pointDestination = new PointDestination();
		pointDestination.mPoint = destMat.pos.V3;
		pointDestination.mFacingDirection = destMat.at.V3;
		AddDestination(pointDestination);
		return PlanFromPoint(startPosition);
	}

	public RoutePlanResult PlanToLotCore(ulong lotId)
	{
		ClearDestinationList();
		if (AboutToPlanCallback != null)
		{
			AboutToPlanCallback(this, "Plan", World.LotGetPtInside(lotId));
		}
		LotDestination lotDestination = new LotDestination();
		lotDestination.mLotId = lotId;
		AddDestination(lotDestination);
		return Plan();
	}

	public RoutePlanResult PlanToPointRadius(Vector3 destPosition, float radius)
	{
		return PlanToPointRadius(destPosition, radius, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadius(Vector3 destPosition, float radius, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadius(destPosition, radius, Vector3.UnitZ, 360f, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadius(Vector3 destPosition, float radius, Vector3 coneVector, float coneAngle, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRange(destPosition, radius, -1f, coneVector, coneAngle, RouteDistancePreference.PreferNearestToRouteOrigin, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadius(IHasScriptProxy destObj, Vector3 destPosition, float radius)
	{
		return PlanToPointRadius(destObj, destPosition, radius, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadius(IHasScriptProxy destObj, Vector3 destPosition, float radius, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadius(destObj, destPosition, radius, Vector3.UnitZ, 360f, RouteOrientationPreference.TowardsObject, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadius(IHasScriptProxy destObj, Vector3 destPosition, float radius, Vector3 coneVector, float coneAngle, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRange(destObj, destPosition, radius, -1f, coneVector, coneAngle, RouteDistancePreference.PreferNearestToRouteOrigin, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRange(Vector3 destPosition, float minRadius, float maxRadius)
	{
		return PlanToPointRadialRange(destPosition, minRadius, maxRadius, RouteDistancePreference.NoPreference, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadialRange(Vector3 destPosition, float minRadius, float maxRadius, Vector3 coneVector, float coneAngle, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference)
	{
		return PlanToPointRadialRange(null, destPosition, minRadius, maxRadius, coneVector, coneAngle, distancePreference, orientationPreference, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadialRange(Vector3 destPosition, float minRadius, float maxRadius, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRange(destPosition, minRadius, maxRadius, Vector3.UnitZ, 360f, distancePreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRange(Vector3 destPosition, float minRadius, float maxRadius, Vector3 coneVector, float coneAngle, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRange(null, destPosition, minRadius, maxRadius, coneVector, coneAngle, distancePreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRange(IHasScriptProxy destObj, Vector3 destPosition, float minRadius, float maxRadius)
	{
		return PlanToPointRadialRange(destObj, destPosition, minRadius, maxRadius, RouteDistancePreference.NoPreference, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadialRange(IHasScriptProxy destObj, Vector3 destPosition, float minRadius, float maxRadius, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRange(destObj, destPosition, minRadius, maxRadius, Vector3.UnitZ, 360f, distancePreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRange(IHasScriptProxy destObj, Vector3 destPosition, float minRadius, float maxRadius, Vector3 coneVector, float coneAngle, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		ClearDestinationList();
		RadialRangeDestination radialRangeDestination = new RadialRangeDestination();
		radialRangeDestination.mTargetObject = destObj;
		radialRangeDestination.mCenterPoint = destPosition;
		radialRangeDestination.mfMinRadius = minRadius;
		radialRangeDestination.mfMaxRadius = maxRadius;
		radialRangeDestination.mConeVector = coneVector;
		radialRangeDestination.mfConeAngle = MathUtils.Degree2Radian(coneAngle);
		radialRangeDestination.mFacingPreference = orientationPreference;
		float num = ((minRadius > 0f) ? minRadius : ((maxRadius - minRadius) / 2f));
		if (num > 0f)
		{
			radialRangeDestination.mfPreferredSpacing = (float)(Math.PI * (double)num / 8.5);
		}
		if (radialRangeDestination.mfMaxRadius > radialRangeDestination.mfMinRadius)
		{
			float num2 = radialRangeDestination.mfMaxRadius - radialRangeDestination.mfMinRadius;
			if (radialRangeDestination.mfPreferredSpacing > num2)
			{
				radialRangeDestination.mfPreferredSpacing = num2;
			}
		}
		mfMinRadius = minRadius;
		mfMaxRadius = maxRadius;
		switch (distancePreference)
		{
		case RouteDistancePreference.PreferFurthestFromRouteDestination:
			radialRangeDestination.ScoreFunctionWeights[3] = 1f;
			break;
		case RouteDistancePreference.PreferFurthestFromRouteOrigin:
			radialRangeDestination.ScoreFunctionWeights[1] = 1f;
			break;
		case RouteDistancePreference.PreferNearestToRouteDestination:
			radialRangeDestination.ScoreFunctionWeights[2] = 1f;
			break;
		case RouteDistancePreference.PreferNearestToRouteOrigin:
			radialRangeDestination.ScoreFunctionWeights[0] = 1f;
			break;
		case RouteDistancePreference.NoPreference:
			radialRangeDestination.ScoreFunctionWeights[6] = 1f;
			break;
		}
		SetValidRooms(lotId, validRooms);
		AddDestination(radialRangeDestination);
		return Plan();
	}

	public RoutePlanResult PlanToPointRadiusFromPoint(Vector3 startPosition, Vector3 destPosition, float radius)
	{
		return PlanToPointRadiusFromPoint(startPosition, destPosition, radius, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadiusFromPoint(Vector3 startPosition, Vector3 destPosition, float radius, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadiusFromPoint(startPosition, destPosition, radius, Vector3.UnitZ, 360f, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadiusFromPoint(Vector3 startPosition, Vector3 destPosition, float radius, Vector3 coneVector, float coneAngle, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRangeFromPoint(startPosition, destPosition, radius, -1f, coneVector, coneAngle, RouteDistancePreference.NoPreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadiusFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Vector3 destPosition, float radius)
	{
		return PlanToPointRadiusFromPoint(startPosition, destObj, destPosition, radius, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadiusFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Vector3 destPosition, float radius, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadiusFromPoint(startPosition, destObj, destPosition, radius, Vector3.UnitZ, 360f, RouteOrientationPreference.TowardsObject, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadiusFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Vector3 destPosition, float radius, Vector3 coneVector, float coneAngle, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRangeFromPoint(startPosition, destObj, destPosition, radius, -1f, coneVector, coneAngle, RouteDistancePreference.NoPreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRangeFromPoint(Vector3 startPosition, Vector3 destPosition, float minRadius, float maxRadius)
	{
		return PlanToPointRadialRangeFromPoint(startPosition, destPosition, minRadius, maxRadius, RouteDistancePreference.NoPreference, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadialRangeFromPoint(Vector3 startPosition, Vector3 destPosition, float minRadius, float maxRadius, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRangeFromPoint(startPosition, destPosition, minRadius, maxRadius, Vector3.UnitZ, 360f, distancePreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRangeFromPoint(Vector3 startPosition, Vector3 destPosition, float minRadius, float maxRadius, Vector3 coneVector, float coneAngle, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRangeFromPoint(startPosition, null, destPosition, minRadius, maxRadius, coneVector, coneAngle, distancePreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRangeFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Vector3 destPosition, float minRadius, float maxRadius)
	{
		return PlanToPointRadialRangeFromPoint(startPosition, destObj, destPosition, minRadius, maxRadius, RouteDistancePreference.NoPreference, RouteOrientationPreference.TowardsObject, 0uL, null);
	}

	public RoutePlanResult PlanToPointRadialRangeFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Vector3 destPosition, float minRadius, float maxRadius, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		return PlanToPointRadialRangeFromPoint(startPosition, destObj, destPosition, minRadius, maxRadius, Vector3.UnitZ, 360f, distancePreference, orientationPreference, lotId, validRooms);
	}

	public RoutePlanResult PlanToPointRadialRangeFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Vector3 destPosition, float minRadius, float maxRadius, Vector3 coneVector, float coneAngle, RouteDistancePreference distancePreference, RouteOrientationPreference orientationPreference, ulong lotId, int[] validRooms)
	{
		ClearDestinationList();
		RadialRangeDestination radialRangeDestination = new RadialRangeDestination();
		radialRangeDestination.mTargetObject = destObj;
		radialRangeDestination.mCenterPoint = destPosition;
		radialRangeDestination.mfMinRadius = minRadius;
		radialRangeDestination.mfMaxRadius = maxRadius;
		radialRangeDestination.mConeVector = coneVector;
		radialRangeDestination.mfConeAngle = coneAngle;
		radialRangeDestination.mFacingPreference = orientationPreference;
		mfMinRadius = minRadius;
		mfMaxRadius = maxRadius;
		switch (distancePreference)
		{
		case RouteDistancePreference.PreferFurthestFromRouteDestination:
			radialRangeDestination.ScoreFunctionWeights[3] = 1f;
			break;
		case RouteDistancePreference.PreferFurthestFromRouteOrigin:
			radialRangeDestination.ScoreFunctionWeights[1] = 1f;
			break;
		case RouteDistancePreference.PreferNearestToRouteDestination:
			radialRangeDestination.ScoreFunctionWeights[2] = 1f;
			break;
		case RouteDistancePreference.PreferNearestToRouteOrigin:
			radialRangeDestination.ScoreFunctionWeights[0] = 1f;
			break;
		}
		SetValidRooms(lotId, validRooms);
		AddDestination(radialRangeDestination);
		return PlanFromPoint(startPosition);
	}

	public RoutePlanResult PlanToSlot(IHasScriptProxy destObj, Slot slotName)
	{
		return PlanToSlot(destObj, new Slot[1] { slotName }, null);
	}

	public RoutePlanResult PlanToSlot(IHasScriptProxy destObj, Slot slotName, bool bOffsetForPortalsByAGS)
	{
		return PlanToSlot(destObj, new Slot[1] { slotName }, null, bOffsetForPortalsByAGS);
	}

	public RoutePlanResult PlanToSlot(IHasScriptProxy destObj, Slot[] slotNames)
	{
		return PlanToSlot(destObj, slotNames, null);
	}

	public RoutePlanResult PlanToSlot(IHasScriptProxy destObj, Slot[] slotNames, float[] slotWeights)
	{
		return PlanToSlot(destObj, slotNames, slotWeights, bOffsetForPortalsByAGS: false);
	}

	public RoutePlanResult PlanToSlot(IHasScriptProxy destObj, Slot[] slotNames, float[] slotWeights, bool bOffsetForPortalsByAGS)
	{
		ClearDestinationList();
		SetOption(RouteOption.OffsetDestinationForLongAnimals, value: false);
		SlotArrayDestination slotArrayDestination = new SlotArrayDestination();
		slotArrayDestination.mTargetObject = destObj;
		slotArrayDestination.mAgeGenderSpecies = FollowerAgeGenderSpecies;
		slotArrayDestination.mbOffsetForPortalsByAGS = bOffsetForPortalsByAGS;
		int num = slotNames.Length;
		slotArrayDestination.mSlotTargets = new SlotArrayDestination.SlotTarget[num];
		for (int i = 0; i < num; i++)
		{
			slotArrayDestination.mSlotTargets[i] = new SlotArrayDestination.SlotTarget();
			slotArrayDestination.mSlotTargets[i].mSlot = slotNames[i];
			if (slotWeights != null)
			{
				slotArrayDestination.mSlotTargets[i].mWeight = slotWeights[i];
			}
			if (slotNames[i] == Slot.None)
			{
				slotArrayDestination.mSlotTargets[i].mWeight = 0f;
			}
		}
		AddDestination(slotArrayDestination);
		return Plan();
	}

	public RoutePlanResult PlanToSlotFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Slot slotName)
	{
		return PlanToSlotFromPoint(startPosition, destObj, new Slot[1] { slotName }, null);
	}

	public RoutePlanResult PlanToSlotFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Slot[] slotNames)
	{
		return PlanToSlotFromPoint(startPosition, destObj, slotNames, null);
	}

	public RoutePlanResult PlanToSlotFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Slot[] slotNames, float[] slotWeights)
	{
		return PlanToSlotFromPoint(startPosition, destObj, slotNames, slotWeights, bOffsetForPortalsByAGS: false);
	}

	public RoutePlanResult PlanToSlotFromPoint(Vector3 startPosition, IHasScriptProxy destObj, Slot[] slotNames, float[] slotWeights, bool bOffsetForPortalsByAGS)
	{
		ClearDestinationList();
		SetOption(RouteOption.OffsetDestinationForLongAnimals, value: false);
		SlotArrayDestination slotArrayDestination = new SlotArrayDestination();
		slotArrayDestination.mTargetObject = destObj;
		slotArrayDestination.mAgeGenderSpecies = FollowerAgeGenderSpecies;
		slotArrayDestination.mbOffsetForPortalsByAGS = bOffsetForPortalsByAGS;
		int num = slotNames.Length;
		slotArrayDestination.mSlotTargets = new SlotArrayDestination.SlotTarget[num];
		for (int i = 0; i < num; i++)
		{
			slotArrayDestination.mSlotTargets[i] = new SlotArrayDestination.SlotTarget();
			slotArrayDestination.mSlotTargets[i].mSlot = slotNames[i];
			if (slotWeights != null)
			{
				slotArrayDestination.mSlotTargets[i].mWeight = slotWeights[i];
			}
		}
		AddDestination(slotArrayDestination);
		return PlanFromPoint(startPosition);
	}

	public abstract bool IsPointRoutable(Vector3 worldPos);

	public abstract uint GetNumSegments();

	public abstract uint GetSegmentIdAtIndex(uint segmentIndex);

	public abstract uint Split(uint segmentIndex);

	public abstract uint Append(Route routeOther);

	public abstract uint Append(Route routeOther, bool preserveSegments);

	public abstract uint Append(Vector3 endSegment);

	public abstract void Replace(uint segmentId, Route routeOther);

	public abstract void Merge(uint beginSegmentId, uint endSegmentId);

	public abstract void Truncate(uint beginSegmentId);

	public abstract void Tesselate(float maximumSegmentLength);

	public abstract uint GetSegmentAtDistanceBeforeEnd(float fDistance, bool bCreate);

	public abstract void CreateSegmentAtDistanceBeforeEndOfRoute(float fDistance);

	public abstract uint GetSegmentAtDistanceBeforeSegment(uint beginSegmentId, float fDistance, bool bCreate);

	public abstract bool GetSegmentStartPoint(uint segment, out Vector3 pt);

	public abstract bool GetSegmentEndPoint(uint segment, out Vector3 pt);

	public abstract bool GetSegmentStartDirection(uint segment, out Vector3 dir);

	public abstract bool GetSegmentEndDirection(uint segment, out Vector3 dir);

	public abstract float GetDistanceBetweenSegments(uint startSegmentId, uint endSegmentID);

	public abstract uint GetLastCompletedSegment();

	public abstract uint GetCurrentSegment();

	public abstract uint GetNumInterestPoints();

	public abstract RouteInterestPoint GetInterestPointAtIndex(uint interestPointIndex);

	public RouteInterestPoint[] GetInterestPointsForSegment(uint segmentId)
	{
		List<RouteInterestPoint> list = new List<RouteInterestPoint>();
		uint numInterestPoints = GetNumInterestPoints();
		for (uint num = 0u; num < numInterestPoints; num++)
		{
			RouteInterestPoint interestPointAtIndex = GetInterestPointAtIndex(num);
			if (interestPointAtIndex.mSegmentID == segmentId)
			{
				list.Add(interestPointAtIndex);
			}
		}
		return list.ToArray();
	}

	public abstract ObjectGuid[] FindObstaclesForSim(IScriptProxy simObj);

	public abstract RoutePlanResult Replan();

	public abstract RoutePlanResult ReplanFromPoint(Vector3 fromPt);

	public abstract uint GetNumPaths();

	public abstract void SmoothenSubPathConnections();

	public abstract void SubdividePathsWithSelfIntersections();

	public abstract bool SelfIntersectionTest();

	public abstract PathData GetPathData(uint pathIndex);

	public abstract void SetPathData(ref PathData pathData);

	public abstract void PopPath();

	public abstract void ClearPaths();

	public abstract void ResetCurrentPath();

	public abstract void InsertRouteSubPathsAtIndex(uint pathIndex, Route r);

	public abstract bool InsertCustomPathAtIndex(uint pathIndex, Vector3[] points, bool bCyclic, bool bSetRouteDestination, PathType pathType);

	public abstract void GetPathStartPoint(uint pathIndex, ref Vector3 outPosition);

	public abstract void GetPathEndPoint(uint pathIndex, ref Vector3 outPosition);

	public abstract void GetPathStartDirection(uint pathIndex, ref Vector3 outDirection);

	public abstract void GetPathEndDirection(uint pathIndex, ref Vector3 outDirection);

	public abstract float GetPathLength(uint pathIndex);

	public abstract float GetRouteLength();

	public abstract void SetPathEndOrientation(uint pathIndex, Matrix44 orientationMatrix);

	public abstract void SetLoopStart(int startPathIndex);

	public abstract bool IsLoop();

	public abstract float GetEstimatedTravelTime(uint pathIndex, ObjectGuid simObjID, RouteAnimationSpec animSpec);

	public abstract uint GetNumNodes();

	public abstract Vector3 GetPointAtDistanceOnPathway(float dist, ref Vector3 returnTangent, ref int nodeIndex);

	public abstract Vector3 GetPointAtDistanceOnRoute(float dist, ref Vector3 returnTangent, ref int nodeIndex);

	public abstract Vector3 GetApproximateOriginalDestination();

	public abstract GangwayRouteState GetGangwayRouteState();

	public abstract ObjectGuid GetGangwayRouteObjectId();

	public abstract void SetGangwayRouteState(GangwayRouteState state, ObjectGuid gangwayObjectId);

	public abstract void ClearGangwayRouteState();

	[Conditional("EA_LOG_ENABLED")]
	public void LogDebugOutput(string eventName, string eventData)
	{
		if (Follower.Target is ISacsAware sacsAware)
		{
			sacsAware.LogDebugOutput(Follower.ToString(), "Routing", eventName, eventData, RouteHandle.ToString());
		}
	}

	public static bool EvaluateCallbacks(Route r, RouteEvent re)
	{
		bool flag = false;
		if (r.RouteCallbacks != null)
		{
			List<RouteCallbackEntry> list = new List<RouteCallbackEntry>(r.RouteCallbacks.ToArray());
			List<RouteCallbackEntry> list2 = new List<RouteCallbackEntry>(list.Count);
			int num = 0;
			while (num < list.Count && (r.PlanResult.Succeeded() || re.EventType == RouteEvent.tEventType.EventScriptSimulated || re.EventType == RouteEvent.tEventType.EventDisconnected))
			{
				RouteCallbackEntry routeCallbackEntry = list[num];
				bool flag2 = routeCallbackEntry.Execute(r, re, out var shouldDelete);
				flag = flag || flag2;
				if (shouldDelete)
				{
					list2.Add(list[num]);
					list.RemoveAt(num);
				}
				else
				{
					num++;
				}
			}
			foreach (RouteCallbackEntry item in list2)
			{
				r.RouteCallbacks.Remove(item);
			}
		}
		return flag;
	}

	public abstract void RegisterCallback(RouteCallback callback, RouteCallbackType type, RouteCallbackCondition cond);

	public abstract void UnregisterCallback(RouteCallback callback);

	public abstract void TransferCallbacksTo(Route routeOther);

	public void SetShouldUseCallback(ShouldUsePortal callback, IHasScriptProxy targetObject)
	{
		mShouldUsePortalCallback = callback;
		mTargetPortalObject = targetObject;
	}

	public bool TestShouldUsePortal(IHasScriptProxy portalObject)
	{
		if (mShouldUsePortalCallback != null && portalObject == mTargetPortalObject)
		{
			bool result = mShouldUsePortalCallback();
			mShouldUsePortalCallback = null;
			return result;
		}
		return true;
	}

	public static void CreateRouteToNaturalWaterBody(bool bUseRadialDestination, Route r, Vector3 clickedPoint, Vector3[] posResults, ulong lotId, LotLocation location, RouteToNaturalWaterBodyPositionCheck positionCheck)
	{
		float num = float.MaxValue;
		float[] array = new float[posResults.Length];
		for (int i = 0; i < posResults.Length; i++)
		{
			array[i] = (posResults[i] - clickedPoint).LengthSqr();
			if (array[i] < num)
			{
				num = array[i];
			}
		}
		for (int j = 0; j < posResults.Length; j++)
		{
			RouteDestination routeDestination = null;
			if (positionCheck == null || positionCheck(posResults[j], clickedPoint))
			{
				if (bUseRadialDestination)
				{
					RadialRangeDestination radialRangeDestination = new RadialRangeDestination();
					radialRangeDestination.mCenterPoint = posResults[j];
					radialRangeDestination.mfMinRadius = 0.5f;
					radialRangeDestination.mfMaxRadius = 3f;
					radialRangeDestination.mfPreferredRadius = 1.5f;
					radialRangeDestination.mfPreferredSpacing = 0.75f;
					routeDestination = radialRangeDestination;
				}
				else
				{
					PointDestination pointDestination = new PointDestination();
					pointDestination.mPoint = posResults[j];
					routeDestination = pointDestination;
				}
				routeDestination.Weight = num / (1f + array[j]) * 0.08f + 0.92f;
				routeDestination.ScoreFunctionWeights[5] = 1f;
				routeDestination.ScoreFunctionWeights[3] = 0.5f;
				routeDestination.ScoreFunctionWeights[6] = 0.25f;
				r.AddDestination(routeDestination);
			}
		}
		int[] validRooms = new int[1] { World.GetRoomId(lotId, location) };
		r.SetValidRooms(lotId, validRooms);
		r.SetOption(RouteOption.DoLineOfSightCheckUserOverride, value: true);
	}

	public abstract bool InsertPortalSubPathAtIndex(uint pathIndex, ObjectGuid portalObjectId);

	public void AddObjectsToIgnoreForRoute(ObjectGuid[] objectIds)
	{
		if (objectIds != null)
		{
			foreach (ObjectGuid objectId in objectIds)
			{
				AddObjectToIgnoreForRoute(objectId);
			}
		}
	}
}
