// Original PC 1.67 asm_00000000_78CF6CF5304D0C4F.dll; complete type ScriptCore.RouteManager.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System;
using System.Reflection;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;

namespace ScriptCore;

public class RouteManager : IRouteManager
{
	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetMinimumDistanceForCarTravel(float minDistanceForCarTravel);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetMinimumDistanceForBoatTravel(float minDistanceForBoatTravel);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetCarSpeedGlobalMultiplier(float multiplier);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetCarSpeed(ulong carObjID, float speed);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetIsPlayerObject(ulong carObjID, bool bState);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetFadePriority(ulong carObjId, uint priority);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetCarAcceleration(ulong carObjID, float acceleration);

	[DllImport("Sims3Common.dll")]
	private static extern float RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec(ulong simObjID, RouteAnimationSpec animSpec);

	[DllImport("Sims3Common.dll")]
	private static extern uint RouteManager_IsOkToIdleAtCurrentLocation(ulong simObjID, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] ignoreIds, float radius, uint agsFlags);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetDebugIdentifier(ulong footprintId, [MarshalAs(UnmanagedType.LPWStr)] string identifier);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_FootprintSetLockKeys(ulong footprintId, uint lockType, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] lockKeys);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_FootprintAddLockKey(ulong footprintId, uint lockType, ulong lockKey);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_FootprintRemoveLockKey(ulong footprintId, uint lockType, ulong lockKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_FootprintHasLockKey(ulong footprintId, uint lockType, ulong lockKey);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_FootprintClearLockKeys(ulong footprintId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_IsObjectRouting(ulong footprintId, ref Vector3 position, ref Vector3 velocity);

	[DllImport("Sims3Common.dll")]
	private static extern int RouteManager_IsRouteToObjectUnobstructed(ulong scriptHandle, Vector3 point, ulong options, ulong options2, ulong objectIdToIgnore, uint agsFlags);

	[DllImport("Sims3Common.dll")]
	private static extern int RouteManager_RoutingBlockerCheck2d(Vector2 startPoint, int startPointLevel, Vector2 endPoint, int endPointLevel, ulong options, ulong options2, ulong firstObjectIdToIgnore, ulong secondObjectIdToIgnore, uint agsFlags);

	[DllImport("Sims3Common.dll")]
	private static extern int RouteManager_IsSlotUnobstructed(ulong scriptHandle, uint slotNameHash, [MarshalAs(UnmanagedType.I1)] bool checkForSims, ulong options, ulong options2, ulong objectIdToIgnore, uint agsFlags, [MarshalAs(UnmanagedType.I1)] bool isExitSlot);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_PlaceSocialFootprintObjectImpl(Vector3 simAPos, uint slotAName, Vector3 simBPos, uint slotBName, ulong footprintId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_PlaceGroupSocialImpl([MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] groupedScriptHandles, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] singleScriptHandles, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] positionArray, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] orientArray, float fSeparation);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_PlaceDestinationPointImpl(Vector3 currPos, ref Vector3 newPos);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_GetPositionAndOrientationForRailPathImpl(ulong trainObjId, int railIndexStart, int railIndexEnd, ref Vector3 position, ref Vector3 orientation);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddDiscourageFootprint(ulong scriptHandle, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] discourageRegionPointAry, int numPoints, [MarshalAs(UnmanagedType.I1)] bool bHighImpassable, [MarshalAs(UnmanagedType.I1)] bool bAllowPlacementInWorld, [MarshalAs(UnmanagedType.I1)] bool bPlacementFootprint);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_RemoveDiscourageFootprint(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddPrivateFootprint(ulong scriptHandle, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] privateFootprintPointAry, int numPoints, [MarshalAs(UnmanagedType.I1)] bool bAllowPlacementInWorld);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_RemovePrivateFootprint(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern float RouteManager_GetSteeringObjectRadius(ulong simObjId);

	[DllImport("Sims3Common.dll")]
	private static extern uint RouteManager_AddPortal(ulong objId, Vector3 startPos, Vector3 endPos, float portalCost, uint portalType, int flags, ulong agsFlags);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_DestroyPortalHandle(uint portalHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddPortalLocationVariation(ulong objId, uint portalHandle, Vector3 startPos, Vector3 endPos, Vector3 backwardsStartPos, Vector3 backwardsEndPos, ulong agsFlags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddDivingBoardPortals(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddWaterSlidePortals(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddPoolPortals(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddPlatformPortals(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_AddStairPortals(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_SetOceanPortalOwner(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_RemovePortals(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_SetPortalCost(ulong objId, float cost);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_SetPortalAgeGenderFlags(ulong objId, uint ageGenderFlags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_SetPortalLockStatus(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool locked);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_MarkRoomForUpdate(ulong lotId, int roomId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U4)]
	private static extern uint RouteManager_BeginPortalRouting(ulong simObjectId, PortalRoutingSpec rPortalSpec, RouteAnimationSpec rAnimSpec);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_CanTransitionWalkstyle(uint oldWalkstyleHash, uint newWalkstyleHash, uint ageSpecies);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetRouteSoundSpec(ulong simObjId, [MarshalAs(UnmanagedType.LPWStr)] string rCruise, [MarshalAs(UnmanagedType.LPWStr)] string rDecelerate);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetTravellingEventInterval(ulong simObjId, float interval);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetAvoidanceFieldRangeScale(ulong simObjId, float scale);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetAvoidanceFieldSmoothing(ulong simObjId, float s);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetAvoidanceFieldForSnorkeling(ulong simObjId);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_ResetAvoidanceFieldForSnorkeling(ulong simObjId);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetShouldHandleObstructionsEncountered(ulong simObjId, [MarshalAs(UnmanagedType.I1)] bool b);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetAvoidanceFieldUseAdvancedAvoidance(ulong simObjId, [MarshalAs(UnmanagedType.I1)] bool useAdvancedAvoidance);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_ForcePlayWeatherEffectForTerrainType(ulong simObjId, ushort weatherTerrainType);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetSteeringOption(ulong simObjId, uint steeringOption, [MarshalAs(UnmanagedType.I1)] bool isOn);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_ResetSteering(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool RouteManager_IsStairObject(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_OnExitBuildBuy();

	[DllImport("Sims3Common.dll")]
	private static extern Rect RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies(uint flags);

	[DllImport("Sims3Common.dll")]
	private static extern Rect RouteManager_GetFootBoundaryRectForAgeSpecies(uint flags);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_InitShutdownPairedAvoidance(ulong masterObjId, ulong slaveObjId, uint slaveAGS, [MarshalAs(UnmanagedType.I1)] bool bInit);

	[DllImport("Sims3Common.dll")]
	private static extern void RouteManager_SetRoutingDisplayOption(uint option, uint val);

	[DllImport("Sims3Common.dll")]
	private static extern uint RouteManager_GetRoutingDisplayOption(uint option);

	static RouteManager()
	{
		AppDomain.CurrentDomain.SetData("RouteManager", new RouteManager());
		Type[] types = new Type[2]
		{
			typeof(IScriptProxy),
			typeof(uint)
		};
		ConstructorInfo constructor = typeof(Route).GetConstructor(types);
		AppDomain.CurrentDomain.SetData("RouteCtor", constructor);
		types = new Type[4]
		{
			typeof(IScriptProxy),
			typeof(uint),
			typeof(IScriptProxy),
			typeof(uint[])
		};
		constructor = typeof(Route).GetConstructor(types);
		AppDomain.CurrentDomain.SetData("RouteSlotCtor", constructor);
	}

	public bool IsObjectRouting(ObjectGuid simObjID, ref Vector3 position, ref Vector3 velocity)
	{
		return RouteManager_IsObjectRouting(simObjID.Value, ref position, ref velocity);
	}

	public BlockedStatus IsRouteToObjectUnobstructed(ObjectGuid scriptHandle, Vector3 point, Sims3.SimIFace.Route.RouteOptionPair options, ObjectGuid objectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return (BlockedStatus)RouteManager_IsRouteToObjectUnobstructed(scriptHandle.mValue, point, (ulong)options.mOptions, (ulong)options.mOptions2, objectIdToIgnore.mValue, (uint)agsFlags);
	}

	public BlockedStatus IsRouteToObjectUnobstructed(ObjectGuid scriptHandle, Vector3 point, Sims3.SimIFace.Route.RouteOption options, ObjectGuid objectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return (BlockedStatus)RouteManager_IsRouteToObjectUnobstructed(scriptHandle.mValue, point, (ulong)options, 0uL, objectIdToIgnore.mValue, (uint)agsFlags);
	}

	public BlockedStatus RoutingBlockerCheck2d(Vector2 startPoint, int startPointLevel, Vector2 endPoint, int endPointLevel, Sims3.SimIFace.Route.RouteOptionPair options, ObjectGuid firstObjectIdToIgnore, ObjectGuid secondObjectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return (BlockedStatus)RouteManager_RoutingBlockerCheck2d(startPoint, startPointLevel, endPoint, endPointLevel, (ulong)options.mOptions, (ulong)options.mOptions2, firstObjectIdToIgnore.mValue, secondObjectIdToIgnore.mValue, (uint)agsFlags);
	}

	public BlockedStatus RoutingBlockerCheck2d(Vector2 startPoint, int startPointLevel, Vector2 endPoint, int endPointLevel, Sims3.SimIFace.Route.RouteOption options, ObjectGuid firstObjectIdToIgnore, ObjectGuid secondObjectIdToIgnore, CASAgeGenderFlags agsFlags)
	{
		return (BlockedStatus)RouteManager_RoutingBlockerCheck2d(startPoint, startPointLevel, endPoint, endPointLevel, (ulong)options, 0uL, firstObjectIdToIgnore.mValue, secondObjectIdToIgnore.mValue, (uint)agsFlags);
	}

	public BlockedStatus IsSlotUnobstructed(ObjectGuid scriptHandle, Slot slotNameHash, bool checkForSims, Sims3.SimIFace.Route.RouteOptionPair options, ObjectGuid objectIdToIgnore, CASAgeGenderFlags agsFlags, bool isExitSlot)
	{
		return (BlockedStatus)RouteManager_IsSlotUnobstructed(scriptHandle.mValue, (uint)slotNameHash, checkForSims, (ulong)options.mOptions, (ulong)options.mOptions2, objectIdToIgnore.mValue, (uint)agsFlags, isExitSlot);
	}

	public BlockedStatus IsSlotUnobstructed(ObjectGuid scriptHandle, Slot slotNameHash, bool checkForSims, Sims3.SimIFace.Route.RouteOption options, ObjectGuid objectIdToIgnore, CASAgeGenderFlags agsFlags, bool isExitSlot)
	{
		return (BlockedStatus)RouteManager_IsSlotUnobstructed(scriptHandle.mValue, (uint)slotNameHash, checkForSims, (ulong)options, 0uL, objectIdToIgnore.mValue, (uint)agsFlags, isExitSlot);
	}

	public RouteIsOkToIdleFlags IsOkToIdleAtCurrentLocation(ObjectGuid simObjID, ulong[] ignoreIds, float radius, CASAgeGenderFlags agsFlags)
	{
		return (RouteIsOkToIdleFlags)RouteManager_IsOkToIdleAtCurrentLocation(simObjID.Value, ignoreIds, radius, (uint)agsFlags);
	}

	public void SetDebugIdentifier(ObjectGuid simObjID, string identifier)
	{
		RouteManager_SetDebugIdentifier(simObjID.Value, identifier);
	}

	public void SetMinimumDistanceForCarTravel(float minDistanceForCarTravel)
	{
		RouteManager_SetMinimumDistanceForCarTravel(minDistanceForCarTravel);
	}

	public void SetMinimumDistanceForBoatTravel(float minDistanceForBoatTravel)
	{
		RouteManager_SetMinimumDistanceForBoatTravel(minDistanceForBoatTravel);
	}

	public void SetCarSpeedGlobalMultiplier(float multiplier)
	{
		RouteManager_SetCarSpeedGlobalMultiplier(multiplier);
	}

	public void SetCarSpeed(ObjectGuid carObjId, float speed)
	{
		RouteManager_SetCarSpeed(carObjId.Value, speed);
	}

	public void SetIsPlayerObject(ObjectGuid carObjId, bool bState)
	{
		RouteManager_SetIsPlayerObject(carObjId.Value, bState);
	}

	public void SetFadePriority(ObjectGuid carObjId, uint priority)
	{
		RouteManager_SetFadePriority(carObjId.Value, priority);
	}

	public void SetCarAcceleration(ObjectGuid carObjId, float acceleration)
	{
		RouteManager_SetCarAcceleration(carObjId.Value, acceleration);
	}

	public float CalculateMinimumDistanceForLocomotionAnimSpec(ObjectGuid simObjID, RouteAnimationSpec animSpec)
	{
		return RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec(simObjID.Value, animSpec);
	}

	public bool PlaceSocialFootprintObject(Vector3 simAPos, Slot slotAName, Vector3 simBPos, Slot slotBName, ObjectGuid footprintId)
	{
		return RouteManager_PlaceSocialFootprintObjectImpl(simAPos, (uint)slotAName, simBPos, (uint)slotBName, footprintId.Value);
	}

	public bool PlaceGroupSocial(ulong[] groupedScriptHandles, ulong[] singleScriptHandles, out float[] positionArray, out float[] orientArray, float fSeparation)
	{
		positionArray = new float[3 * (groupedScriptHandles.Length + singleScriptHandles.Length)];
		orientArray = new float[3 * (groupedScriptHandles.Length + singleScriptHandles.Length)];
		return RouteManager_PlaceGroupSocialImpl(groupedScriptHandles, singleScriptHandles, ref positionArray, ref orientArray, fSeparation);
	}

	public bool PlaceDestinationPoint(Vector3 currPos, out Vector3 newPos)
	{
		newPos = Vector3.Invalid;
		return RouteManager_PlaceDestinationPointImpl(currPos, ref newPos);
	}

	public void GetPositionAndOrientationForRailPath(ObjectGuid trainObjId, int railIndexStart, int railIndexEnd, out Vector3 position, out Vector3 orientation)
	{
		position = Vector3.Invalid;
		orientation = Vector3.Invalid;
		RouteManager_GetPositionAndOrientationForRailPathImpl(trainObjId.Value, railIndexStart, railIndexEnd, ref position, ref orientation);
	}

	public bool AddDiscourageFootprint(ulong scriptHandle, Vector3[] discourageRegionPointAry, bool bHighImpassable, bool bAllowPlacementInWorld, bool bPlacementFootprint)
	{
		float[] discourageRegionPointAry2 = new float[3 * discourageRegionPointAry.Length];
		for (uint num = 0u; num < discourageRegionPointAry.Length; num++)
		{
			discourageRegionPointAry2[3 * num] = discourageRegionPointAry[num].x;
			discourageRegionPointAry2[3 * num + 1] = discourageRegionPointAry[num].y;
			discourageRegionPointAry2[3 * num + 2] = discourageRegionPointAry[num].z;
		}
		return RouteManager_AddDiscourageFootprint(scriptHandle, ref discourageRegionPointAry2, discourageRegionPointAry.Length, bHighImpassable, bAllowPlacementInWorld, bPlacementFootprint);
	}

	public bool RemoveDiscourageFootprint(ulong scriptHandle)
	{
		return RouteManager_RemoveDiscourageFootprint(scriptHandle);
	}

	public bool AddPrivateFootprint(ulong scriptHandle, Vector3[] privateFootprintPointAry, bool bAllowPlacementInWorld)
	{
		float[] privateFootprintPointAry2 = new float[3 * privateFootprintPointAry.Length];
		for (uint num = 0u; num < privateFootprintPointAry.Length; num++)
		{
			privateFootprintPointAry2[3 * num] = privateFootprintPointAry[num].x;
			privateFootprintPointAry2[3 * num + 1] = privateFootprintPointAry[num].y;
			privateFootprintPointAry2[3 * num + 2] = privateFootprintPointAry[num].z;
		}
		return RouteManager_AddPrivateFootprint(scriptHandle, ref privateFootprintPointAry2, privateFootprintPointAry.Length, bAllowPlacementInWorld);
	}

	public bool RemovePrivateFootprint(ulong scriptHandle)
	{
		return RouteManager_RemovePrivateFootprint(scriptHandle);
	}

	public void FootprintSetLockKeys(ulong footprintId, uint lockKeyType, params ulong[] lockKeys)
	{
		RouteManager_FootprintSetLockKeys(footprintId, lockKeyType, lockKeys);
	}

	public void FootprintAddLockKey(ulong footprintId, uint lockKeyType, ulong lockKey)
	{
		RouteManager_FootprintAddLockKey(footprintId, lockKeyType, lockKey);
	}

	public void FootprintRemoveLockKey(ulong footprintId, uint lockKeyType, ulong lockKey)
	{
		RouteManager_FootprintRemoveLockKey(footprintId, lockKeyType, lockKey);
	}

	public bool FootprintHasLockKey(ulong footprintId, uint lockKeyType, ulong lockKey)
	{
		return RouteManager_FootprintHasLockKey(footprintId, lockKeyType, lockKey);
	}

	public void FootprintClearLockKeys(ulong footprintId)
	{
		RouteManager_FootprintClearLockKeys(footprintId);
	}

	public float GetSteeringObjectRadius(ObjectGuid simObjId)
	{
		return RouteManager_GetSteeringObjectRadius(simObjId.Value);
	}

	public uint AddPortal(ObjectGuid objId, Vector3 startPos, Vector3 endPos, float portalCost, PortalType portalType, RoutePortalFlags flags, CASAGSAvailabilityFlags agsFlags)
	{
		return RouteManager_AddPortal(objId.Value, startPos, endPos, portalCost, (uint)portalType, (int)flags, (ulong)agsFlags);
	}

	public void DestroyPortalHandle(uint portalHandle)
	{
		RouteManager_DestroyPortalHandle(portalHandle);
	}

	public bool AddPortalLocationVariation(ObjectGuid objId, uint portalHandle, Vector3 startPos, Vector3 endPos, Vector3 backwardsStartPos, Vector3 backwardsEndPos, CASAGSAvailabilityFlags agsFlags)
	{
		return RouteManager_AddPortalLocationVariation(objId.Value, portalHandle, startPos, endPos, backwardsStartPos, backwardsEndPos, (ulong)agsFlags);
	}

	public bool AddDivingBoardPortals(ObjectGuid objId)
	{
		return RouteManager_AddDivingBoardPortals(objId.Value);
	}

	public bool AddWaterSlidePortals(ObjectGuid objId)
	{
		return RouteManager_AddWaterSlidePortals(objId.Value);
	}

	public bool AddPoolPortals(ObjectGuid objId)
	{
		return RouteManager_AddPoolPortals(objId.Value);
	}

	public bool AddPlatformPortals(ObjectGuid objId)
	{
		return RouteManager_AddPlatformPortals(objId.Value);
	}

	public bool AddStairPortals(ObjectGuid objId)
	{
		return RouteManager_AddStairPortals(objId.Value);
	}

	public bool SetOceanPortalOwner(ObjectGuid objId)
	{
		return RouteManager_SetOceanPortalOwner(objId.Value);
	}

	public bool RemovePortals(ObjectGuid objId)
	{
		return RouteManager_RemovePortals(objId.Value);
	}

	public bool SetPortalCost(ObjectGuid objId, float cost)
	{
		return RouteManager_SetPortalCost(objId.Value, cost);
	}

	public bool SetPortalAgeGenderFlags(ObjectGuid objId, uint ageGenderFlags)
	{
		return RouteManager_SetPortalAgeGenderFlags(objId.Value, ageGenderFlags);
	}

	public bool SetPortalLockStatus(ulong lotId, bool locked)
	{
		return RouteManager_SetPortalLockStatus(lotId, locked);
	}

	public void MarkRoomForUpdate(ulong lotId, int roomId)
	{
		RouteManager_MarkRoomForUpdate(lotId, roomId);
	}

	public StairTraversalResult StartStairTraversal(ulong simId, PortalRoutingSpec portalSpec, RouteAnimationSpec animSpec)
	{
		return (StairTraversalResult)RouteManager_BeginPortalRouting(simId, portalSpec, animSpec);
	}

	public bool CanTransitionWalkstyle(uint oldWalkstyleHash, uint newWalkstyleHash, uint ageSpecies)
	{
		return RouteManager_CanTransitionWalkstyle(oldWalkstyleHash, newWalkstyleHash, ageSpecies);
	}

	public void SetRouteSoundSpec(ObjectGuid carObjId, RouteSoundSpec rSpec)
	{
		RouteManager_SetRouteSoundSpec(carObjId.Value, rSpec.mCruise, rSpec.mDecelerate);
	}

	public void SetTravellingEventInterval(ObjectGuid simObjId, float interval)
	{
		RouteManager_SetTravellingEventInterval(simObjId.Value, interval);
	}

	public void SetAvoidanceFieldRangeScale(ObjectGuid simObjId, float scale)
	{
		RouteManager_SetAvoidanceFieldRangeScale(simObjId.Value, scale);
	}

	public void SetAvoidanceFieldSmoothing(ObjectGuid simObjId, float s)
	{
		RouteManager_SetAvoidanceFieldSmoothing(simObjId.Value, s);
	}

	public void SetAvoidanceFieldForSnorkeling(ObjectGuid simObjId)
	{
		RouteManager_SetAvoidanceFieldForSnorkeling(simObjId.Value);
	}

	public void ResetAvoidanceFieldForSnorkeling(ObjectGuid simObjId)
	{
		RouteManager_ResetAvoidanceFieldForSnorkeling(simObjId.Value);
	}

	public void SetShouldHandleObstructionsEncountered(ObjectGuid simObjId, bool b)
	{
		RouteManager_SetShouldHandleObstructionsEncountered(simObjId.Value, b);
	}

	public void SetAvoidanceFieldUseAdvancedAvoidance(ObjectGuid simObjId, bool useAdvancedAvoidance)
	{
		RouteManager_SetAvoidanceFieldUseAdvancedAvoidance(simObjId.Value, useAdvancedAvoidance);
	}

	public void ForcePlayWeatherEffectForTerrainType(ObjectGuid simObjId, WeatherTerrainType weatherTerrainType)
	{
		RouteManager_ForcePlayWeatherEffectForTerrainType(simObjId.Value, (ushort)weatherTerrainType);
	}

	public void SetSteeringOption(ObjectGuid simObjId, Sims3.SimIFace.Route.SteeringOptions option, bool isOn)
	{
		RouteManager_SetSteeringOption(simObjId.Value, (uint)option, isOn);
	}

	public void ResetSteering(ObjectGuid objId)
	{
		RouteManager_ResetSteering(objId.Value);
	}

	public bool IsStairObject(ObjectGuid objId)
	{
		return RouteManager_IsStairObject(objId.Value);
	}

	public void OnExitBuildBuy()
	{
		RouteManager_OnExitBuildBuy();
	}

	public Rect GetDynamicAvoidanceFootprintRectForAgeSpecies(uint flags)
	{
		return RouteManager_GetDynamicAvoidanceFootprintRectForAgeSpecies(flags);
	}

	public Rect GetFootBoundaryRectForAgeSpecies(uint flags)
	{
		return RouteManager_GetFootBoundaryRectForAgeSpecies(flags);
	}

	public void InitShutdownPairedAvoidance(ulong masterObjId, ulong slaveObjId, uint slaveAGS, bool bInit)
	{
		RouteManager_InitShutdownPairedAvoidance(masterObjId, slaveObjId, slaveAGS, bInit);
	}

	public void SetRoutingDisplayOption(uint option, uint val)
	{
		RouteManager_SetRoutingDisplayOption(option, val);
	}

	public uint GetRoutingDisplayOption(uint option)
	{
		return RouteManager_GetRoutingDisplayOption(option);
	}
}
