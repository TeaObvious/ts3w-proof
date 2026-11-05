using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class World : CallbackObject, IWorld
{
	[DllImport("Sims3Common.dll")]
	private static extern void World_RegisterCallbackMethodImpl(uint worldEvent, [MarshalAs(UnmanagedType.LPWStr)] string typeName, [MarshalAs(UnmanagedType.LPWStr)] string methodName);

	[DllImport("Sims3Common.dll")]
	private static extern void World_RegisterCallbackDelegateImpl(uint worldEvent, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetTerrainHeightImpl(float x, float z, [MarshalAs(UnmanagedType.I1)] bool considerBridges);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetTerrainHeightImpl(ulong lotId, float x, float z, float height);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetSeaLevelImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetPondLevelImpl(float x, float z, out float waterLevel);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetLevelHeightImpl(float x, float z, int level);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ResourceExistsImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetTerrainTypeImpl(float x, float z, int level);

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetTerrainSurfaceTypeImpl(float x, float z, int level);

	[DllImport("Sims3Common.dll")]
	private static extern void World_AddObjectToObjectManagerImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_AddObjectToObjectManagersImpl(ulong scriptHandle, ulong groupId, Vector3 position, int level, Vector3 createFacing, uint hiddenFlags);

	[DllImport("Sims3Common.dll")]
	private static extern void World_RemoveObjectFromObjectManagerImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_MoveObjectToObjectManager(ulong scriptHandle, ulong mgrId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_AddObjectToSceneImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_GetManagerIdForObject(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_GetGlobalObjectManagerId();

	[DllImport("Sims3Common.dll")]
	private static extern Rect World_GetTerrainExtentsImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetObjectScreenSpacePosImpl(ulong scriptHandle, float x, float y, float z, out Vector2 outPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetScreenSpacePosImpl(Vector3 worldPos, out Vector2 outPos);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LightSetDimmerImpl(ulong scriptHandle, float dimmerValue);

	[DllImport("Sims3Common.dll")]
	private static extern float World_LightGetDimmerImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LightSetColorImpl(ulong scriptHandle, float r, float g, float b);

	[DllImport("Sims3Common.dll")]
	private static extern void World_BurninateWindowImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ScratchObjectImpl(ulong scriptHandle, [MarshalAs(UnmanagedType.I1)] bool bScratched);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetObjectSnowImpl(ulong scriptHandle, [MarshalAs(UnmanagedType.I1)] bool bEnabled);

	[DllImport("Sims3Common.dll")]
	private static extern bool World_HasObjectSnowImpl(ulong scriptHandle, [MarshalAs(UnmanagedType.I1)] bool bCheckOnlyScript);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotChangeDisplayLevelImpl(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool increment);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetDisplayLevelImpl(ulong lotId, int level);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetVisibilityImpl(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool bVisible, [MarshalAs(UnmanagedType.I1)] bool bOutside);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotUpdateVisibilityImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotShowRoofImpl(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool showRoof);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_LotRoofVisibleImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotRoofUpImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotDoAutoRoofImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetAutoRoofStyleImpl(ulong lotId, ResourceKey productKey);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey World_LotGetAutoRoofStyleImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotRemoveAllRoofsImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_LotIsEmptyImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetForceDoorVisibilityCheckImpl(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool bEnabled);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DoesFoundationExistOnLotImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsDeckFoundationAtLotLocImpl(ulong lotId, float x, float z, int level);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetHighlightColorImpl(ulong lotId, float red, float green, float blue);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_AreHolidayHouseLightsEnabledImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetHolidayHouseLightsImpl(ulong lotId, bool bEnable, bool bMultiColored, ushort lightsType, float red, float green, float blue);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey World_LotGetDefaultAutoRoofStyleImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_LotGetIsAutoRoofEnabledImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_LotAreRoofChangesAllowedImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_TreesWithinRadialRangeImpl(ulong objId, Vector3 position, float range);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotClusterTreesImpl(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool cluster);

	[DllImport("Sims3Common.dll")]
	private static extern void World_BulldozeLotImpl(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool bAllowDestruction, [MarshalAs(UnmanagedType.I1)] bool bFinishOp);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_ChimneyCapObjectFromFireplaceObjectImpl(ulong lotId, ulong fireplaceObjectId);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_FireplaceObjectFromChimneyObjectImpl(ulong lotId, ulong chimneyObjectId);

	[DllImport("Sims3Common.dll")]
	private static extern LotDisplayLevelInfo World_LotGetDisplayLevelInfoImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern LotCorners World_LotGetCornersImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern Matrix44 World_LotGetWorldToLotTransformImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 World_LotGetPtInsideImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetActiveLotImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetFocusLotImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetWallCutawayFocusPosImpl(Vector3 pos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetUpdateLightRigsImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetUpdateLightRigsImpl([MarshalAs(UnmanagedType.I1)] bool value);

	[DllImport("Sims3Common.dll")]
	private static extern void World_EnableCustomLightRiggingImpl([MarshalAs(UnmanagedType.I1)] bool bEnable);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetStartTime(long ticks);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetAdvancedTime(long ticks);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsObjectOnScreenImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_EnableInGameAdsImpl(bool enable);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetTestingCheatsEnabledImpl(bool bState);

	[DllImport("Sims3Common.dll")]
	private static extern void World_EnableBuyDebugModeImpl(bool bState);

	[DllImport("Sims3Common.dll")]
	private static extern void World_RestrictBuildBuyInBuildingsImpl(bool bState);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LoadHeightMapRelatedDataImpl(bool bKeepLoaded);

	[DllImport("Sims3Common.dll")]
	private static extern void World_UnloadHeightMapRelatedDataImpl(bool bForceRelease);

	[DllImport("Sims3Common.dll")]
	private static extern void World_BuildRoutingDataImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasAnyRoofAtPosImpl(Vector3 pos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasAnyRoofOrFloorAbovePosImpl(Vector3 pos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasAnyRoofImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasAnyRoofWithAdjustableSlopeImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_CanSeeSkyFromPosImpl(Vector3 pos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsPosInsideGreenhouseImpl(Vector3 pos);

	[DllImport("Sims3Common.dll")]
	private static extern short World_GetObjectTombRoomIdImpl(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern short World_GetRoomIdAtPosImpl(Vector3 pos, int roomDefinition);

	[DllImport("Sims3Common.dll")]
	private static extern short World_GetRoomIdAtPosOnLotImpl(ulong lotId, Vector3 pos, int roomDefinition);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetImposterMode([MarshalAs(UnmanagedType.I1)] bool enable);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetMapViewActiveLotMode(bool allowHighLOD);

	[DllImport("Sims3Common.dll")]
	private static extern void World_RegenImposter(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSnowUpdate(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_TestIfObjectsIntersect(ulong obj1Id, ulong obj2Id, ref Matrix44 mat1);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_TestObjectPlacementP(ulong objId, uint options, ref Vector3 position);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_TestObjectPlacementPE(ulong objId, uint options, ref Vector3 position, uint maxErrors, ref uint numErrors, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] errorTypes, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] errorDatas);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_TestObjectPlacementPQ(ulong objId, uint options, ref Vector3 position, ref Quaternion orientation);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_TestObjectPlacementPQI(ulong objId, uint options, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIdsToIgnore, ref Vector3 position, ref Quaternion orientation);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_TestObjectPlacementPQE(ulong objId, uint options, ref Vector3 position, ref Quaternion orientation, uint maxErrors, ref uint numErrors, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] errorTypes, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] errorDatas);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_TestObjectPlacementPQEI(ulong objId, uint options, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIdsToIgnore, ref Vector3 position, ref Quaternion orientation, uint maxErrors, ref uint numErrors, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] errorTypes, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ref ulong[] errorDatas);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindGoodLocation(ulong objId, Vector3 startPosition, int directionToSelect, int initialsearchDirection, uint facingMask, uint booleanConstraints, int requiredRoomID, int requiredPlatformRoomID, [MarshalAs(UnmanagedType.Interface)] Delegate ValidatePlacementDelegate, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIdsToIgnore, ref Vector3 outPos, ref float outOrientation, [MarshalAs(UnmanagedType.I1)] bool bTestWorldOnly, int offsetScale, float maxSearchRadius);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindGoodLocationAtCustomDepth(ulong objId, Vector3 startPosition, int directionToSelect, int initialsearchDirection, uint facingMask, uint booleanConstraints, int requiredRoomID, int requiredPlatformRoomID, [MarshalAs(UnmanagedType.Interface)] Delegate ValidatePlacementDelegate, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIdsToIgnore, float minDepth, float maxDepth, ref Vector3 outPos, ref float outOrientation, [MarshalAs(UnmanagedType.I1)] bool bTestWorldOnly, int offsetScale, float maxSearchRadius);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPlaceOnRoad(ulong objId, ref Vector3 pos, uint option, ref Vector3 outPos, ref Quaternion outOrient);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPlacesOnRoad(ulong objId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIdsToIgnore, ref Vector3 pos, uint option, uint requestCount, float separation, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] orientArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPlaceOnRoadOffScreen(ulong objId, ref Vector3 pos, uint option, float distance, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] orientArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPointsOnRoofs(ulong lotId, uint requestCount, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPointsOnRoofsAbove(ulong lotId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] seedArray, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPondRepresentativePositions(ulong lotId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetAllPondIds(ulong lotId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)] ref uint[] idArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetPondInfo(uint pondId, ulong lotId, ref PondInfo pondInfo);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetPondAtPoint(ulong lotId, Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetNumPonds(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPlaceOutsideLot(ulong lotId, ref uint offsetHint, ref Vector3 outPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsSimNearShoreline(ulong objId, ref Vector3 pointInWater);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPlacesOnShoreline(ulong objId, ref Vector3 pos, uint requestCount, [MarshalAs(UnmanagedType.I1)] bool bAllowPointsAboveGroundLevel, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] orientArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindPlacesToDisembarkOnShoreline(ulong objId, ref Vector3 pos, uint requestCount, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] orientArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindGoodLocationForSpecialLotObject(ulong objId, ulong refObjId, ulong lotId, ref Vector3 outPos, ref Quaternion outOrient);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_PickWallAtWindowPoint(int x, int y, ref Vector3 outHitPt, ref Vector3 outOrig, ref Vector3 outDest);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_PickFloorAtWindowPoint(int x, int y, ref Vector3 outHitPt);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ArePointsConnectedByLand(Vector3 pos1, Vector3 pos2);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ArePointsInSameBodyOfWater(Vector3 pos1, Vector3 pos2);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_GetLotLocationImpl(Vector3 worldPos, ref LotLocation location, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDefinition);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_GetLotLocationAtFloorImpl(Vector3 worldPos, ref LotLocation location, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDefinition);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsPositionOutsideImpl(Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsOnRoofImpl(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern short World_GetRoomIdImpl(ulong lotId, LotLocation location, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDefinition);

	[DllImport("Sims3Common.dll")]
	private static extern void World_GetWorldPositionImpl(ulong lotId, LotLocation location, ref Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] World_GetObjectsImpl(ulong lotId, LotLocation location);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetObjectCountImpl(ulong lotId, LotLocation location);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey World_ObjectGetProductKey(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetModel(ulong objId, [MarshalAs(UnmanagedType.LPWStr)] string modelName, uint groupId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetModelKey(ulong objId, ResourceKey modelKey);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectPreloadMaterial(ulong objId, [MarshalAs(UnmanagedType.LPWStr)] string materialSetName);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetMaterial(ulong objId, [MarshalAs(UnmanagedType.LPWStr)] string materialSetName, float transitionTime, [MarshalAs(UnmanagedType.I1)] bool bTransitionToOverlay);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetGeometryVisibilityState(ulong objId, [MarshalAs(UnmanagedType.LPWStr)] string geometryVisibilityState);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetCustomLightRig(ulong objId, [MarshalAs(UnmanagedType.LPWStr)] string lightRigName);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetOpacity(ulong objId, float translucency, float transitionTime);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetOpacityTransition(ulong objId, float translucency1, float transitionTime, float translucency2);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetNeverFade(ulong objId, bool neverFade);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectPropagateFade(ulong objId, bool propagatesFade);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetDoNotDrawModel(ulong objId, bool b);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetColorTint(ulong objId, float red, float green, float blue, float transitionTime);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetColorTintTransition(ulong objId, float red1, float green1, float blue1, float transitionTime, float red2, float green2, float blue2);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetGhostState(ulong objId, uint ghostType, uint ageGenderSpeciesFlags);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetSculptureType(ulong objId, uint sculptureType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectSetVisualOverride(ulong objId, uint type, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] parameters);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectRemoveVisualOverride(ulong objId, uint type);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetCurrentLotFlag(ulong objId, bool bVal);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDetachAutoDestroyEffects(ulong objId, [MarshalAs(UnmanagedType.I1)] bool destroyEffects);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetElevationOffset(ulong objId, float elevation);

	[DllImport("Sims3Common.dll")]
	private static extern float World_ObjectGetElevationOffset(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetHiddenFlags(ulong objId, uint hiddenFlags);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetHiddenFlagsWithWorldFootprint(ulong objId, uint hiddenFlags);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectGetHiddenFlags(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectResetParentVisibilityFlags(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectResetBindPoseWithRotation(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectResetBindPose(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectEnableFootprint(ulong objId, uint footprintNameHash, [MarshalAs(UnmanagedType.I1)] bool enable);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectIsFootprintEnabled(ulong objId, uint footprintNameHash);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectResetFootprintState(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectGetFootprintExtents(ulong objId, uint footprintNameHash, ref Vector2 v0, ref Vector2 v1, ref sbyte level);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectFootprintContainsPoint(ulong objId, uint footprintNameHash, Vector3 position);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectFootprintContainsPoints(ulong objId, uint footprintNameHash, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIdsToCompare, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_I4)] ref int[] results);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)]
	private static extern uint[] World_ObjectGetFootprintNameHashes(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetPosition(ulong objId, Vector3 pos, int level);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetPlacementMode(ulong objId, uint mode);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectGetPlacementMode(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectCanBeMovedUpAndDownOnWall(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetFogAreaEffect(ulong objId, float fogNearPlane, float fogFarPlane, float startRadius, float endRadius, float startTime, float endTime);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectPlayVideo(ulong objId, [MarshalAs(UnmanagedType.LPWStr)] string videoName, [MarshalAs(UnmanagedType.I1)] bool bLoop, uint product);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectPlayVideoFromKey(ulong objId, ResourceKey videoKey, [MarshalAs(UnmanagedType.I1)] bool bLoop);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectStopVideo(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectSetPainting(ulong objId, ResourceKey paintingKey, uint levelToReveal);

	[DllImport("Sims3Common.dll")]
	private static extern void World_StairsGetProductInformation(Vector3 worldPositionOfStairs, out ResourceKey stairProductKey, out ResourceKey presetKey);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetRoomMarkerSeed(ulong objId, uint markerType);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ClearRoomMarkerSeed(ulong objId, uint markerType);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetRoomStrobeDelay(ulong lotId, int roomId, float delay);

	[DllImport("Sims3Common.dll")]
	private static extern void World_StairsGetFloorCoverExtents(ObjectGuid objId, out Vector3 min, out Vector3 max);

	[DllImport("Sims3Common.dll")]
	private static extern void World_FogOfExplorationSetFadeTime(float secondsToFade);

	[DllImport("Sims3Common.dll")]
	private static extern void World_CapturePhoto(uint style, [MarshalAs(UnmanagedType.SafeArray)] ObjectGuid[] objIdsToFrame, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void World_CaptureSceneForMemoryOrPicture(uint style, uint x, uint y, uint width, uint height, uint skill, [MarshalAs(UnmanagedType.I1)] bool bForMemory, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetIsPaintingTextureInUse(ResourceKey paintingKey, [MarshalAs(UnmanagedType.I1)] bool isInUse, [MarshalAs(UnmanagedType.I1)] bool bySim);

	[DllImport("Sims3Common.dll")]
	private static extern void World_CaptureMeshForSculpture(ulong objId, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DeleteSculptureMesh(ResourceKey meshKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DeleteTravelDBResource(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetSunriseTime();

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetSunsetTime();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HandToolAttach(ulong objId, [MarshalAs(UnmanagedType.I1)] bool dropOnMouseUp);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_HandToolDetach();

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_HandToolGetObjectHeld();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HandToolHide();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HandToolShow();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_SetObjectImpl(ulong objectId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_SetCASPartImpl(ResourceKey partKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_SetPatternImpl(ResourceKey patternKey, ResourceKey presetKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_SetBuildBuyProductImpl(uint type, ResourceKey productKey, ResourceKey presetKey);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_IsProcessingImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_SetNewCompositorImpl(uint paramHash, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetCompositorPreviewImageImpl(uint paramHash);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey World_ObjectDesigner_GetPatternKeyImpl(uint hashId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_SetNewPatternImpl(uint hashId, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_UpdateTextureImpl(uint paramHash);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_SetThumbnailCompositorImpl(ulong compositorID, [MarshalAs(UnmanagedType.SafeArray)] byte[] dataSmall, [MarshalAs(UnmanagedType.SafeArray)] byte[] dataLarge);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_SetHairSwatchCompositorImpl([MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_IsHairSwatchCompositorValidImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_AreSharedCompositorsValidImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_ClearLargePatternThumbnailImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_CreateLargePatternThumbnailImpl(ulong compositorID, ulong patternHashId, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetPatternThumbnailImpl(ulong compositorID, ulong patternHashId, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetHairSwatchThumbnailImpl(ulong instanceId, uint root, uint diffuse, uint highlight, uint tips);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_EndDesigningImpl([MarshalAs(UnmanagedType.I1)] bool bSave, [MarshalAs(UnmanagedType.LPWStr)] string presetStr);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_ObjectDesigner_GetCurrentObjectImpl();

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_ObjectDesigner_GetOriginalObjectImpl();

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey World_ObjectDesigner_GetCurrentPatternImpl();

	[DllImport("Sims3Common.dll")]
	private static extern int World_ObjectDesigner_GetCurrentPatternTypeImpl();

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetDesignPresetCountImpl();

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetDefaultPresetIdImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_ObjectDesigner_GetDesignPresetImpl(uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetDesignPresetSubsortImpl(uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetDesignPresetIndexFromIdImpl(uint id);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl(ResourceKey key, uint id);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetDesignPresetIdFromIndexImpl(uint index);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_SetDesignPresetCompositorImpl([MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_CreateDesignPresetThumbnailImpl(uint index, [MarshalAs(UnmanagedType.SafeArray)] byte[] dataA, [MarshalAs(UnmanagedType.SafeArray)] byte[] dataB);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetDesignPresetThumbnailImpl(uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_AddDesignPresetImpl([MarshalAs(UnmanagedType.LPWStr)] string presetStr, uint subsort);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_ShareDesignPresetImpl([MarshalAs(UnmanagedType.LPWStr)] string packageName, [MarshalAs(UnmanagedType.LPWStr)] string presetStr, [MarshalAs(UnmanagedType.LPWStr)] string presetDesc, uint subsort, uint presetId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_SaveCurrentPresetAsXmlImpl([MarshalAs(UnmanagedType.LPWStr)] string presetName, [MarshalAs(UnmanagedType.LPWStr)] string presetStr);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_BuildExportImagesImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_RemoveDesignPresetByIdImpl(uint id);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_IsUserDesignPresetImpl(uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetPresetContentCategoryImpl(uint index);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_ObjectDesigner_GetPresetContentCategoryFromKeyImpl(ResourceKey key, uint index);

	[DllImport("Sims3Common.dll")]
	private static extern void World_WinAttachToObjImpl(uint winHandle, ulong scriptHandle, Vector3 effect3DOffset, Vector2 effect2DOffset, [MarshalAs(UnmanagedType.I1)] bool mapTag, [MarshalAs(UnmanagedType.I1)] bool simThread, [MarshalAs(UnmanagedType.I1)] bool stickToScreenBounds);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_AddColorInfoPresetImpl(ResourceKey key, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_RemoveColorInfoPresetImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_ObjectDesigner_IsUserColorInfoPresetImpl(ResourceKey key);

	[DllImport("Sims3Common.dll")]
	private static extern void World_WinDetachFromObjImpl(uint winHandle, [MarshalAs(UnmanagedType.I1)] bool simThread, [MarshalAs(UnmanagedType.I1)] bool mapTag);

	[DllImport("Sims3Common.dll")]
	private static extern void World_WinAttachToWorldPositionImpl(uint winHandle, Vector3 pos, Vector2 effect2DOffset, [MarshalAs(UnmanagedType.I1)] bool mapTag, [MarshalAs(UnmanagedType.I1)] bool simThread, [MarshalAs(UnmanagedType.I1)] bool stickToScreenBounds, [MarshalAs(UnmanagedType.I1)] bool round);

	[DllImport("Sims3Common.dll")]
	private static extern void World_WinDetachFromWorldPositionImpl(uint winHandle, [MarshalAs(UnmanagedType.I1)] bool simThread, [MarshalAs(UnmanagedType.I1)] bool mapTag);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetMapTagStickToScreenBoundsImpl(uint winHandle, [MarshalAs(UnmanagedType.I1)] bool stickToScreenBounds);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ForceMaptagTickImpl(uint winHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_ObjectDesigner_GetObjectDesignPresetImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_ObjectDesigner_GetBuildBuyDesignPresetImpl(uint type, Vector3 point);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_ClearObjectDesignPresetImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ObjectDesigner_SetPresetInfoImpl(ulong scriptHandle, [MarshalAs(UnmanagedType.LPWStr)] string presetXml);

	[DllImport("Sims3Common.dll")]
	private static extern RoomInfo World_GetInformationAboutRoomImpl(ulong lotId, int roomID, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDef);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetPercentageOfWallsCoveredImpl(ulong lotId, int roomID, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDef);

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetLotType(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetLotType(ulong lotId, int lotType);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetResidentialLotSubType(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetResidentialLotSubType(ulong lotId, uint subType);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetCommercialLotSubType(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetCommercialLotSubType(ulong lotId, uint subType);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetLotAdditionalPropertyValue(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetLotBeautifulVistaBuf(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetHighestPointOnLot(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetLotIsPartiallyInSea(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetLotBuildBuyEnabledFlag(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetLotBuildBuyEnabledFlag(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool b);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetUnchartedLot(ulong lotId, float distance);

	[DllImport("Sims3Common.dll")]
	private static extern void World_MarkLotWorthDirty(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetLotWorth(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetUnfurnishedLotWorth(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetEmptyLotWorth(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetWorldNameKey();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetWorldFileName();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetLotName(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetLotNameKey(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetLotDescription(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetLotDescriptionKey(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetLotAddress(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetLotAddressKey(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetLotName(ulong lotId, [MarshalAs(UnmanagedType.LPWStr)] string lotName);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetLotDescription(ulong lotId, [MarshalAs(UnmanagedType.LPWStr)] string lotDescription);

	[DllImport("Sims3Common.dll")]
	private static extern IntPtr World_GetLotSaveFileName(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] World_GetObjectScreenCoverageData();

	[DllImport("Sims3Common.dll")]
	private static extern void World_EnableObjectScreenCoverage(uint enable);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ForceVisibilityForPicture([MarshalAs(UnmanagedType.I1)] bool bForce);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)]
	private static extern byte[] World_GetGameObjTuningDataImpl(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetGameObjTuningDataImpl(ulong objectId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] byte[] data);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_I4)]
	private static extern int[] World_GetDoorRoomsImpl(ulong scriptHandle, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDef);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DropLeavesFromTreesImpl(ulong lotId, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DecayLeavesImpl(ulong lotId, float amount);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetFloorFeaturesImpl(ulong lotId, LotLocation location, [MarshalAs(UnmanagedType.U4)] FloorFeatureFlags featureFlags, [MarshalAs(UnmanagedType.I1)] bool bSet, ushort mask);

	[DllImport("Sims3Common.dll")]
	private static extern ushort World_GetFloorFeatureMaskImpl(ulong lotId, LotLocation location, [MarshalAs(UnmanagedType.U4)] FloorFeatureFlags featureFlags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasFloorFeaturesImpl(ulong lotId, LotLocation location, [MarshalAs(UnmanagedType.U4)] FloorFeatureFlags featureFlags, ushort mask);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasFloorFeaturesWorldPosImpl(Vector3 worldPos, [MarshalAs(UnmanagedType.U4)] FloorFeatureFlags featureFlags, ushort mask);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] World_GetTilesWithFloorFeaturesImpl(ulong lotId, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDefinition, [MarshalAs(UnmanagedType.U4)] FloorFeatureFlags featureFlags, ushort mask);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasSolidFloorImpl(ulong lotId, LotLocation location);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string World_GetFloorSurfaceTypeImpl(ulong lotId, Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ChangeStairStateImpl(ulong lotId, ulong objId, [MarshalAs(UnmanagedType.I1)] bool bHide);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasBasementImpl(ulong lotId, LotLocation location);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasPoolImpl(ulong lotId, LotLocation location);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasDiagonalWallImpl(ulong lotId, LotLocation location);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_WallExistsBetweenImpl(ulong lotId, LotLocation a, LotLocation b);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_WallExistsBetweenPointsImpl(ulong lotId, Vector3 a, Vector3 b, int roomDef);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsLiveDraggingEnabledImpl(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_StaysAfterEvictImpl(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_CanSeeObjectImpl(Vector3 start, ulong targetObjectId, [MarshalAs(UnmanagedType.I1)] bool bIgnoreWindows);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_CanSeePointImpl(Vector3 start, Vector3 end, ulong endObjectId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsEditInGameFromWBModeImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_ExportInfoImpl();

	[DllImport("Sims3Common.dll")]
	private static extern float World_GetCatalogRefundRateImpl();

	[DllImport("Sims3Common.dll")]
	private static extern uint World_DesignModeSwap_CreateImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_DesignModeSwap_ReleaseImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ResourceKey World_DesignModeSwap_GetPatternKeyImpl(uint handle, uint variableHash);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DesignModeSwap_SetSourceObjectImpl(uint handle, ulong sourceId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DesignModeSwap_SetFloodImpl(uint handle, [MarshalAs(UnmanagedType.I1)] bool flood);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DesignModeSwap_SetSourceBuildBuyImpl(uint handle, uint type, Vector3 point);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DesignModeSwap_ClearOldCompositorsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DesignModeSwap_SetNewCompositorImpl(uint handle, uint paramHash, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DesignModeSwap_SetNewPatternImpl(uint handle, uint variableHash, [MarshalAs(UnmanagedType.SafeArray)] byte[] data);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DesignModeSwap_SetSubsortImpl(uint handle, uint subsort);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DesignModeSwap_StartMaterialBuildImpl(uint handle, [MarshalAs(UnmanagedType.LPWStr)] string presetStr);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DesignModeSwap_IsMaterialBuiltImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DesignModeSwap_ApplyToObjectImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DesignModeSwap_DisableSubmitOfUndoableImpl(uint handle, [MarshalAs(UnmanagedType.I1)] bool b);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ReplaceUndoableObjectImpl(ulong oldObjId, ulong newObjId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsSimRoutableImpl(float worldX, float worldZ);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsCameraRoutableImpl(float worldX, float worldZ);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_LotWasRefreshedImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetObjectHighlightImpl(ulong objId, bool bTurnOn);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetWallCutoutStateForObjectImpl(ulong objId, bool bEnable);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetFloorCutoutStateForObjectImpl(ulong objId, bool bEnable);

	[DllImport("Sims3Common.dll")]
	private static extern void World_DoorLockStateChangedImpl(ulong objId, bool bEnable);

	[DllImport("Sims3Common.dll")]
	private static extern void World_WaitForDetailedLots([MarshalAs(UnmanagedType.Interface)] Delegate callback, ulong lotId, uint maskFlags);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetPagodaRoofCurveChoiceImpl(uint curveChoice);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetPagodaRoofCurveChoiceImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetRoofSlopeAngleImpl(uint slopeAngle);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetRoofSlopeAngleImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasRoofsWhoseSlopesCantBeChangedImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasPagodaRoofsImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_RebuildLotCompositorsImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetLotMainEntranceLocationImpl(ulong lotID, ref Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_GetLotFrontDoorImpl(ulong lotID, uint frontDoorType);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_SetLotFrontDoorImpl(ulong lotID, ulong objectID, uint frontDoorType);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetEntranceByTargetPointImpl(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool bEnable, Vector3 targetPt);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_LotIsEntranceFromTargetPointImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 World_LotGetEntraceTargetPointImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_I4)]
	private static extern int[] World_GetConnectedRoomsImpl(ulong lotId, int roomId, int level);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_I4)]
	private static extern int[] World_GetInsideRoomsAtLevelImpl(ulong lotId, int level, [MarshalAs(UnmanagedType.I4)] eRoomDefinition roomDefinition);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_I4)]
	private static extern int[] World_GetPoolRoomsImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsInPoolImpl(Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_GetPoolObjectIdForPoolBelowPositionImpl(Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsOnPlatformImpl(Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LotSetDetailPriority(ulong lotId, LotDetailPriority priority);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsSimOnHill(ulong simObjId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetIsSimInPool(ulong simObjId, [MarshalAs(UnmanagedType.I1)] bool isInPool, float waterSurfaceHeight);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetNearestSwimmingPoint(Vector3 currentLocation, ref Vector3 nearestShoreline, ref Vector3 oceanPoint);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_FindNearbyPointToSwimTo(Vector3 currentLocation, float distance, float depth, ref Vector3 destination);

	[DllImport("Sims3Common.dll")]
	private static extern void World_UpdateMoodStateImpl(uint reserved, [MarshalAs(UnmanagedType.I1)] bool bEnabled, float r, float g, float b, int val);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetDarkLotRendering(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool flag);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsDarkLotRenderingEnabled(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_RandomizeCloudinessImmediately(float value);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetMoonCycleImpl(int moonCycle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetMoonPhaseImpl(int moonPhase);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ForceMoonCycleImpl(int moonCycle);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ForceMoonPhaseImpl(int moonPhase);

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetMoonCycleImpl();

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetMoonPhaseImpl();

	[DllImport("Sims3Common.dll")]
	private static extern int World_GetNumDaysUntilFullMoonImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetLightingValuesImpl(int index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasAnySnowAtPoint(Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	private static extern void World_SetVisualOverrideImpl(uint type);

	[DllImport("Sims3Common.dll")]
	private static extern void World_LoadTickImpl();

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetRainPuddlesOnLotImpl(ulong lotId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] posArray);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_HasAnyValidRainPuddlesOnLotImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern ulong World_CreateHouseboatLotImpl(uint width, uint height, uint lotType, uint lotSubtype);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_DeleteHouseboatLotImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsHouseboatLotImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	private static extern void World_ParentLotToHouseboatImpl(ulong lotId, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern ObjectGuid World_GetHouseboatParentImpl(ulong lotId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetWorldToHouseboatDisplayPositionImpl(ulong lotId, Vector3 worldPos, out Vector3 outPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetHouseboatDisplayToWorldPositionImpl(ulong lotId, Vector3 houseboatPos, out Vector3 outPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetWorldToHouseboatDisplayPositionAndForwardImpl(ulong lotId, Vector3 worldPos, Vector3 worldFwd, out Vector3 outPos, out Vector3 outFwd);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_GetHouseboatDisplayToWorldPositionAndForwardImpl(ulong lotId, Vector3 houseboatPos, Vector3 houseboatFwd, out Vector3 outPos, out Vector3 outFwd);

	[DllImport("Sims3Common.dll")]
	private static extern uint World_GetNumSpeedTreesImpl(ulong objectId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool World_IsWallVertexACornerImpl(ulong lotId, LotLocation location);

	public World()
	{
		AppDomain.CurrentDomain.SetData("World", this);
	}

	public void RegisterCallbackMethod(WorldEvent worldEvent, string typeName, string methodName)
	{
		World_RegisterCallbackMethodImpl((uint)worldEvent, typeName, methodName);
	}

	public void RegisterCallbackDelegate(WorldEvent worldEvent, Delegate handler)
	{
		World_RegisterCallbackDelegateImpl((uint)worldEvent, handler);
	}

	public bool ResourceExists(ResourceKey key)
	{
		return World_ResourceExistsImpl(key);
	}

	public float GetTerrainHeight(float x, float z, bool considerBridges)
	{
		return World_GetTerrainHeightImpl(x, z, considerBridges);
	}

	public float GetSeaLevel()
	{
		return World_GetSeaLevelImpl();
	}

	public bool GetPondLevel(float x, float z, out float waterLevel)
	{
		return World_GetPondLevelImpl(x, z, out waterLevel);
	}

	public void LotSetTerrainHeight(ulong lotId, float x, float z, float height)
	{
		World_LotSetTerrainHeightImpl(lotId, x, z, height);
	}

	public float GetLevelHeight(float x, float z, int level)
	{
		return World_GetLevelHeightImpl(x, z, level);
	}

	public float GetSunriseTime()
	{
		return World_GetSunriseTime();
	}

	public float GetSunsetTime()
	{
		return World_GetSunsetTime();
	}

	public int GetTerrainType(float x, float z, int level)
	{
		return World_GetTerrainTypeImpl(x, z, level);
	}

	public int GetTerrainSurfaceType(float x, float z, int level)
	{
		return World_GetTerrainSurfaceTypeImpl(x, z, level);
	}

	public void AddObjectToObjectManager(ObjectGuid scriptHandle)
	{
		World_AddObjectToObjectManagerImpl(scriptHandle.Value);
	}

	public bool AddObjectToObjectManagers(ObjectGuid scriptHandle, Sims3.SimIFace.Simulator.ObjectInitParameters initData)
	{
		return World_AddObjectToObjectManagersImpl(scriptHandle.Value, initData.CreateGroupId, initData.CreateAtPosition, initData.CreateAtLevel, initData.CreateFacing, (uint)initData.HiddenFlags);
	}

	public void RemoveObjectFromObjectManager(ObjectGuid scriptHandle)
	{
		World_RemoveObjectFromObjectManagerImpl(scriptHandle.Value);
	}

	public void MoveObjectToObjectManager(ObjectGuid scriptHandle, ulong mgrId)
	{
		World_MoveObjectToObjectManager(scriptHandle.Value, mgrId);
	}

	public void AddObjectToScene(ObjectGuid scriptHandle)
	{
		World_AddObjectToSceneImpl(scriptHandle.Value);
	}

	public ulong GetManagerIdForObject(ObjectGuid scriptHandle)
	{
		return World_GetManagerIdForObject(scriptHandle.Value);
	}

	public ulong GetGlobalObjectManagerId()
	{
		return World_GetGlobalObjectManagerId();
	}

	public Rect GetTerrainExtents()
	{
		return World_GetTerrainExtentsImpl();
	}

	public bool GetObjectScreenSpacePos(ObjectGuid scriptHandle, Vector3 offset, out Vector2 outPos)
	{
		return World_GetObjectScreenSpacePosImpl(scriptHandle.Value, offset.x, offset.y, offset.z, out outPos);
	}

	public bool GetScreenSpacePos(Vector3 worldPos, out Vector2 outPos)
	{
		return World_GetScreenSpacePosImpl(worldPos, out outPos);
	}

	public void LightSetDimmer(ObjectGuid scriptHandle, float dimmerValue)
	{
		World_LightSetDimmerImpl(scriptHandle.Value, dimmerValue);
	}

	public float LightGetDimmer(ObjectGuid scriptHandle)
	{
		return World_LightGetDimmerImpl(scriptHandle.Value);
	}

	public void LightSetColor(ObjectGuid scriptHandle, float r, float g, float b)
	{
		World_LightSetColorImpl(scriptHandle.Value, r, g, b);
	}

	public void BurninateWindow(ObjectGuid scriptHandle)
	{
		World_BurninateWindowImpl(scriptHandle.Value);
	}

	public void ScratchObject(ObjectGuid scriptHandle, bool bScratched)
	{
		World_ScratchObjectImpl(scriptHandle.Value, bScratched);
	}

	public void SetObjectSnow(ObjectGuid scriptHandle, bool bEnabled)
	{
		World_SetObjectSnowImpl(scriptHandle.Value, bEnabled);
	}

	public bool HasObjectSnow(ObjectGuid scriptHandle, bool bCheckOnlyScript)
	{
		return World_HasObjectSnowImpl(scriptHandle.Value, bCheckOnlyScript);
	}

	public void LotChangeDisplayLevel(ulong lotId, bool increment)
	{
		World_LotChangeDisplayLevelImpl(lotId, increment);
	}

	public void LotSetDisplayLevel(ulong lotId, int level)
	{
		World_LotSetDisplayLevelImpl(lotId, level);
	}

	public void LotSetVisibility(ulong lotId, bool bVisible, bool bOutside)
	{
		World_LotSetVisibilityImpl(lotId, bVisible, bOutside);
	}

	public void LotUpdateVisibility(ulong lotId)
	{
		World_LotUpdateVisibilityImpl(lotId);
	}

	public void LotShowRoof(ulong lotId, bool showRoof)
	{
		World_LotShowRoofImpl(lotId, showRoof);
	}

	public bool LotRoofVisible(ulong lotId)
	{
		return World_LotRoofVisibleImpl(lotId);
	}

	public void LotRoofUp(ulong lotId)
	{
		World_LotRoofUpImpl(lotId);
	}

	public void LotDoAutoRoof(ulong lotId)
	{
		World_LotDoAutoRoofImpl(lotId);
	}

	public void LotSetAutoRoofStyle(ulong lotId, ResourceKey productKey)
	{
		World_LotSetAutoRoofStyleImpl(lotId, productKey);
	}

	public ResourceKey LotGetAutoRoofStyle(ulong lotId)
	{
		return World_LotGetAutoRoofStyleImpl(lotId);
	}

	public void LotRemoveAllRoofs(ulong lotId)
	{
		World_LotRemoveAllRoofsImpl(lotId);
	}

	public bool LotIsEmpty(ulong lotId)
	{
		return World_LotIsEmptyImpl(lotId);
	}

	public void LotSetForceDoorVisibilityCheck(ulong lotId, bool bEnabled)
	{
		World_LotSetForceDoorVisibilityCheckImpl(lotId, bEnabled);
	}

	public bool DoesFoundationExistOnLot(ulong lotId)
	{
		return World_DoesFoundationExistOnLotImpl(lotId);
	}

	public bool IsDeckFoundationAtLotLoc(ulong lotId, float x, float z, int level)
	{
		return World_IsDeckFoundationAtLotLocImpl(lotId, x, z, level);
	}

	public void LotSetHighlightColor(ulong lotId, float red, float green, float blue)
	{
		World_LotSetHighlightColorImpl(lotId, red, green, blue);
	}

	public bool LotAreHolidayHouseLightsEnabled(ulong lotId)
	{
		return World_AreHolidayHouseLightsEnabledImpl(lotId);
	}

	public void LotSetHolidayHouseLights(ulong lotId, bool bEnable, bool bMultiColored, ushort lightsType, float red, float green, float blue)
	{
		World_LotSetHolidayHouseLightsImpl(lotId, bEnable, bMultiColored, lightsType, red, green, blue);
	}

	public ResourceKey LotGetDefaultAutoRoofStyle(ulong lotId)
	{
		return World_LotGetDefaultAutoRoofStyleImpl(lotId);
	}

	public bool LotGetIsAutoRoofEnabled(ulong lotId)
	{
		return World_LotGetIsAutoRoofEnabledImpl(lotId);
	}

	public bool LotAreRoofChangesAllowed(ulong lotId)
	{
		return World_LotAreRoofChangesAllowedImpl(lotId);
	}

	public uint TreesWithinRadialRange(ObjectGuid objectGuid, Vector3 position, float range)
	{
		return World_TreesWithinRadialRangeImpl(objectGuid.mValue, position, range);
	}

	public void LotClusterTrees(ulong lotId, bool cluster)
	{
		World_LotClusterTreesImpl(lotId, cluster);
	}

	public void BulldozeLot(ulong lotId, bool bAllowDestruction, bool bFinishOp)
	{
		World_BulldozeLotImpl(lotId, bAllowDestruction, bFinishOp);
	}

	public ulong ChimneyCapObjectFromFireplaceObject(ulong lotId, ulong fireplaceId)
	{
		return World_ChimneyCapObjectFromFireplaceObjectImpl(lotId, fireplaceId);
	}

	public ulong FireplaceObjectFromChimneyObject(ulong lotId, ulong chimneyId)
	{
		return World_FireplaceObjectFromChimneyObjectImpl(lotId, chimneyId);
	}

	public LotDisplayLevelInfo LotGetDisplayLevelInfo(ulong lotId)
	{
		return World_LotGetDisplayLevelInfoImpl(lotId);
	}

	public LotCorners LotGetCorners(ulong lotId)
	{
		return World_LotGetCornersImpl(lotId);
	}

	public Matrix44 LotGetWorldToLotTransform(ulong lotId)
	{
		return World_LotGetWorldToLotTransformImpl(lotId);
	}

	public Vector3 LotGetPtInside(ulong lotId)
	{
		return World_LotGetPtInsideImpl(lotId);
	}

	public void SetActiveLot(ulong lotId)
	{
		World_SetActiveLotImpl(lotId);
	}

	public void SetLunarCycle(int mooncycle)
	{
		World_SetMoonCycleImpl(mooncycle);
	}

	public void SetLunarPhase(int moonphase)
	{
		World_SetMoonPhaseImpl(moonphase);
	}

	public void ForceLunarCycle(int mooncycle)
	{
		World_ForceMoonCycleImpl(mooncycle);
	}

	public void ForceLunarPhase(int moonphase)
	{
		World_ForceMoonPhaseImpl(moonphase);
	}

	public int GetLunarCycle()
	{
		return World_GetMoonCycleImpl();
	}

	public int GetLunarPhase()
	{
		return World_GetMoonPhaseImpl();
	}

	public int GetNumDaysUntilFullMoon()
	{
		return World_GetNumDaysUntilFullMoonImpl();
	}

	public void SetLightingValues(int index)
	{
		World_SetLightingValuesImpl(index);
	}

	public void SetFocusLot(ulong lotId)
	{
		World_SetFocusLotImpl(lotId);
	}

	public void SetWallCutawayFocusPos(Vector3 pos)
	{
		World_SetWallCutawayFocusPosImpl(pos);
	}

	public bool GetUpdateLightRigs()
	{
		return World_GetUpdateLightRigsImpl();
	}

	public void SetUpdateLightRigs(bool value)
	{
		World_SetUpdateLightRigsImpl(value);
	}

	public void EnableCustomLightRigging(bool bEnable)
	{
		World_EnableCustomLightRiggingImpl(bEnable);
	}

	public void SetStartTime(long ticks)
	{
		World_SetStartTime(ticks);
	}

	public void SetAdvancedTime(long ticks)
	{
		World_SetAdvancedTime(ticks);
	}

	public bool IsObjectOnScreen(ObjectGuid scriptHandle)
	{
		return World_IsObjectOnScreenImpl(scriptHandle.mValue);
	}

	public bool CanSeeSkyFromPos(Vector3 position)
	{
		return World_CanSeeSkyFromPosImpl(position);
	}

	public bool IsPosInsideGreenhouse(Vector3 position)
	{
		return World_IsPosInsideGreenhouseImpl(position);
	}

	public bool HasAnyRoofAtPos(Vector3 position)
	{
		return World_HasAnyRoofAtPosImpl(position);
	}

	public bool HasAnyRoofOrFloorAbovePos(Vector3 position)
	{
		return World_HasAnyRoofOrFloorAbovePosImpl(position);
	}

	public bool HasAnyRoof(ulong lotId)
	{
		return World_HasAnyRoofImpl(lotId);
	}

	public bool HasAnyRoofWithAdjustableSlope(ulong lotId)
	{
		return World_HasAnyRoofWithAdjustableSlopeImpl(lotId);
	}

	public short GetObjectTombRoomId(ulong guid)
	{
		return World_GetObjectTombRoomIdImpl(guid);
	}

	public short GetRoomIdAtPos(Vector3 position, eRoomDefinition def)
	{
		return World_GetRoomIdAtPosImpl(position, (int)def);
	}

	public short GetRoomIdAtPosOnLot(ulong lotId, Vector3 position, eRoomDefinition def)
	{
		return World_GetRoomIdAtPosOnLotImpl(lotId, position, (int)def);
	}

	public void EnableInGameAds(bool enable)
	{
		World_EnableInGameAdsImpl(enable);
	}

	public void SetTestingCheatsEnabled(bool bState)
	{
		World_SetTestingCheatsEnabledImpl(bState);
	}

	public void EnableBuyDebugMode(bool bState)
	{
		World_EnableBuyDebugModeImpl(bState);
	}

	public void RestrictBuildBuyInBuildings(bool bState)
	{
		World_RestrictBuildBuyInBuildingsImpl(bState);
	}

	public void LoadHeightMapRelatedData(bool bKeepLoaded)
	{
		World_LoadHeightMapRelatedDataImpl(bKeepLoaded);
	}

	public void UnloadHeightMapRelatedData(bool bForceRelease)
	{
		World_UnloadHeightMapRelatedDataImpl(bForceRelease);
	}

	public void BuildRoutingData()
	{
		World_BuildRoutingDataImpl();
	}

	public void SetImposterMode(bool enable)
	{
		World_SetImposterMode(enable);
	}

	public void SetMapViewActiveLotMode(bool allowHighLOD)
	{
		World_SetMapViewActiveLotMode(allowHighLOD);
	}

	public void RegenImposter(ulong lotId)
	{
		World_RegenImposter(lotId);
	}

	public void LotSnowUpdate(ulong lotId)
	{
		World_LotSnowUpdate(lotId);
	}

	public bool TestIfObjectsIntersect(ObjectGuid obj1Id, ObjectGuid obj2Id, ref Matrix44 mat1)
	{
		return World_TestIfObjectsIntersect(obj1Id.Value, obj2Id.Value, ref mat1);
	}

	public bool TestObjectPlacement(ObjectGuid objectGuid, uint options, ref Vector3 position)
	{
		return World_TestObjectPlacementP(objectGuid.Value, options, ref position);
	}

	public bool TestObjectPlacement(ObjectGuid objectGuid, uint options, ref Vector3 position, uint maxErrors, ref uint numErrors, ref ObjectPlacementError[] errors)
	{
		ulong[] errorTypes = new ulong[maxErrors];
		ulong[] errorDatas = new ulong[maxErrors];
		for (int i = 0; i < maxErrors; i++)
		{
			errorTypes[i] = errors[i].mType;
			errorDatas[i] = errors[i].mData;
		}
		bool result = World_TestObjectPlacementPE(objectGuid.Value, options, ref position, maxErrors, ref numErrors, ref errorTypes, ref errorDatas);
		for (int j = 0; j < numErrors; j++)
		{
			errors[j].mType = errorTypes[j];
			errors[j].mData = errorDatas[j];
		}
		return result;
	}

	public bool TestObjectPlacement(ObjectGuid objectGuid, uint options, ref Vector3 position, ref Quaternion orientation)
	{
		return World_TestObjectPlacementPQ(objectGuid.Value, options, ref position, ref orientation);
	}

	public bool TestObjectPlacement(ObjectGuid objectGuid, uint options, ulong[] objIdsToIgnore, ref Vector3 position, ref Quaternion orientation)
	{
		return World_TestObjectPlacementPQI(objectGuid.Value, options, objIdsToIgnore, ref position, ref orientation);
	}

	public bool TestObjectPlacement(ObjectGuid objectGuid, uint options, ref Vector3 position, ref Quaternion orientation, uint maxErrors, ref uint numErrors, ref ObjectPlacementError[] errors)
	{
		ulong[] errorTypes = new ulong[maxErrors];
		ulong[] errorDatas = new ulong[maxErrors];
		for (int i = 0; i < maxErrors; i++)
		{
			errorTypes[i] = errors[i].mType;
			errorDatas[i] = errors[i].mData;
		}
		bool result = World_TestObjectPlacementPQE(objectGuid.Value, options, ref position, ref orientation, maxErrors, ref numErrors, ref errorTypes, ref errorDatas);
		for (int j = 0; j < numErrors; j++)
		{
			errors[j].mType = errorTypes[j];
			errors[j].mData = errorDatas[j];
		}
		return result;
	}

	public bool TestObjectPlacement(ObjectGuid objectGuid, uint options, ulong[] objIdsToIgnore, ref Vector3 position, ref Quaternion orientation, uint maxErrors, ref uint numErrors, ref ObjectPlacementError[] errors)
	{
		ulong[] errorTypes = new ulong[maxErrors];
		ulong[] errorDatas = new ulong[maxErrors];
		for (int i = 0; i < maxErrors; i++)
		{
			errorTypes[i] = errors[i].mType;
			errorDatas[i] = errors[i].mData;
		}
		bool result = World_TestObjectPlacementPQEI(objectGuid.Value, options, objIdsToIgnore, ref position, ref orientation, maxErrors, ref numErrors, ref errorTypes, ref errorDatas);
		for (int j = 0; j < numErrors; j++)
		{
			errors[j].mType = errorTypes[j];
			errors[j].mData = errorDatas[j];
		}
		return result;
	}

	public bool FindGoodLocation(ulong objId, Vector3 startPosition, int directionToSelect, int initialsearchDirection, uint facingMask, uint booleanConstraints, int requiredRoomID, int requiredPlatformRoomID, ValidatePlacementDelegate ValidatePlacementDelegate, int offsetScale, ulong[] objIdsToIgnore, float maxSearchRadius, ref Vector3 outPos, ref float outOrientation)
	{
		return World_FindGoodLocation(objId, startPosition, directionToSelect, initialsearchDirection, facingMask, booleanConstraints, requiredRoomID, requiredPlatformRoomID, ValidatePlacementDelegate, objIdsToIgnore, ref outPos, ref outOrientation, bTestWorldOnly: false, offsetScale, maxSearchRadius);
	}

	public bool FindGoodLocationOnWorld(ulong objId, Vector3 startPosition, int directionToSelect, int initialsearchDirection, uint facingMask, uint booleanConstraints, int requiredRoomID, int requiredPlatformRoomID, ValidatePlacementDelegate ValidatePlacementDelegate, int offsetScale, float maxSearchRadius, ref Vector3 outPos, ref float outOrientation)
	{
		return World_FindGoodLocation(objId, startPosition, directionToSelect, initialsearchDirection, facingMask, booleanConstraints, requiredRoomID, requiredPlatformRoomID, ValidatePlacementDelegate, null, ref outPos, ref outOrientation, bTestWorldOnly: true, offsetScale, maxSearchRadius);
	}

	public bool FindGoodLocationOnWorldAtCustomDepth(ulong objId, ulong[] objIdsToIgnore, Vector3 startPosition, int directionToSelect, int initialsearchDirection, uint facingMask, uint booleanConstraints, int requiredRoomID, int requiredPlatformRoomID, ValidatePlacementDelegate ValidatePlacementDelegate, int offsetScale, float maxSearchRadius, float minDepth, float maxDepth, ref Vector3 outPos, ref float outOrientation)
	{
		return World_FindGoodLocationAtCustomDepth(objId, startPosition, directionToSelect, initialsearchDirection, facingMask, booleanConstraints, requiredRoomID, requiredPlatformRoomID, ValidatePlacementDelegate, objIdsToIgnore, minDepth, maxDepth, ref outPos, ref outOrientation, bTestWorldOnly: false, offsetScale, maxSearchRadius);
	}

	public bool FindPlaceOnRoad(IScriptProxy scriptHandle, Vector3 pos, uint option, ref Vector3 outPos, ref Quaternion outOrient)
	{
		return World_FindPlaceOnRoad(scriptHandle?.ObjectId.Value ?? 0, ref pos, option, ref outPos, ref outOrient);
	}

	public bool FindPlacesOnRoad(IScriptProxy scriptHandle, ulong[] objIdsToIgnore, Vector3 pos, FindPlaceOnRoadOption option, uint requestCount, float stepSize, ref float[] posArray, ref float[] orientArray)
	{
		ulong objId = scriptHandle?.ObjectId.Value ?? 0;
		return World_FindPlacesOnRoad(objId, objIdsToIgnore, ref pos, (uint)option, requestCount, stepSize, ref posArray, ref orientArray);
	}

	public bool FindPlaceOnRoadOffScreen(IScriptProxy scriptHandle, Vector3 pos, FindPlaceOnRoadOption option, float distance, ref float[] posArray, ref float[] orientArray)
	{
		ulong objId = scriptHandle?.ObjectId.Value ?? 0;
		return World_FindPlaceOnRoadOffScreen(objId, ref pos, (uint)option, distance, ref posArray, ref orientArray);
	}

	public bool FindPointsOnRoofs(ulong lotId, uint requestCount, ref float[] posArray)
	{
		return World_FindPointsOnRoofs(lotId, requestCount, ref posArray);
	}

	public bool FindPointsOnRoofsAbove(ulong lotId, ref float[] seedArray, ref float[] posArray)
	{
		return World_FindPointsOnRoofsAbove(lotId, ref seedArray, ref posArray);
	}

	public bool FindPondRepresentativePositions(ulong lotId, ref float[] posArray)
	{
		return World_FindPondRepresentativePositions(lotId, ref posArray);
	}

	public bool GetAllPondIds(ulong lotId, ref uint[] idArray)
	{
		return World_GetAllPondIds(lotId, ref idArray);
	}

	public bool GetPondInfo(uint pondId, ulong lotId, ref PondInfo pondInfo)
	{
		return World_GetPondInfo(pondId, lotId, ref pondInfo);
	}

	public uint GetPondAtPoint(ulong lotId, Vector3 worldPos)
	{
		return World_GetPondAtPoint(lotId, worldPos);
	}

	public uint GetNumPonds(ulong lotId)
	{
		return World_GetNumPonds(lotId);
	}

	public bool FindPlaceOutsideLot(ulong lotId, ref uint offsetHint, ref Vector3 outPos)
	{
		return World_FindPlaceOutsideLot(lotId, ref offsetHint, ref outPos);
	}

	public bool IsSimNearShoreline(IScriptProxy scriptHandle, Vector3 pointInWater)
	{
		return World_IsSimNearShoreline(scriptHandle.ObjectId.Value, ref pointInWater);
	}

	public bool FindPlacesOnShoreline(IScriptProxy scriptHandle, Vector3 pos, uint requestCount, bool bAllowPointsAboveGroundLevel, ref float[] posArray, ref float[] orientArray)
	{
		return World_FindPlacesOnShoreline(scriptHandle.ObjectId.Value, ref pos, requestCount, bAllowPointsAboveGroundLevel, ref posArray, ref orientArray);
	}

	public bool FindPlacesToDisembarkOnShoreline(IScriptProxy scriptHandle, Vector3 pos, uint requestCount, ref float[] posArray, ref float[] orientArray)
	{
		return World_FindPlacesToDisembarkOnShoreline(scriptHandle.ObjectId.Value, ref pos, requestCount, ref posArray, ref orientArray);
	}

	public bool FindGoodLocationForSpecialLotObject(ulong objId, ulong refObjId, ulong lotId, ref Vector3 outPos, ref Quaternion outOrient)
	{
		return World_FindGoodLocationForSpecialLotObject(objId, refObjId, lotId, ref outPos, ref outOrient);
	}

	public bool PickWallAtWindowPoint(int x, int y, ref Vector3 outHitPt, ref Vector3 outOrig, ref Vector3 outDest)
	{
		return World_PickWallAtWindowPoint(x, y, ref outHitPt, ref outOrig, ref outDest);
	}

	public bool PickFloorAtWindowPoint(int x, int y, ref Vector3 outHitPt)
	{
		return World_PickFloorAtWindowPoint(x, y, ref outHitPt);
	}

	public bool ArePointsConnectedByLand(Vector3 pos1, Vector3 pos2)
	{
		return World_ArePointsConnectedByLand(pos1, pos2);
	}

	public bool ArePointsInSameBodyOfWater(Vector3 pos1, Vector3 pos2)
	{
		return World_ArePointsInSameBodyOfWater(pos1, pos2);
	}

	public ulong GetLotLocation(Vector3 worldPos, ref LotLocation location, eRoomDefinition roomDefinition)
	{
		return World_GetLotLocationImpl(worldPos, ref location, roomDefinition);
	}

	public ulong GetLotLocationAtFloor(Vector3 worldPos, ref LotLocation location, eRoomDefinition roomDefinition)
	{
		return World_GetLotLocationAtFloorImpl(worldPos, ref location, roomDefinition);
	}

	public bool IsPositionOutside(Vector3 worldPos)
	{
		return World_IsPositionOutsideImpl(worldPos);
	}

	public bool IsOnRoof(ulong objId)
	{
		return World_IsOnRoofImpl(objId);
	}

	public short GetRoomId(ulong lotId, LotLocation location, eRoomDefinition roomDefinition)
	{
		return World_GetRoomIdImpl(lotId, location, roomDefinition);
	}

	public void GetWorldPosition(ulong lotId, LotLocation location, ref Vector3 worldPos)
	{
		World_GetWorldPositionImpl(lotId, location, ref worldPos);
	}

	public ObjectGuid[] GetObjects(ulong lotId, LotLocation location)
	{
		ulong[] array = World_GetObjectsImpl(lotId, location);
		if (array != null)
		{
			ObjectGuid[] array2 = new ObjectGuid[array.Length];
			for (int i = 0; i < array2.Length; i++)
			{
				ref ObjectGuid reference = ref array2[i];
				reference = new ObjectGuid(array[i]);
			}
			return array2;
		}
		return null;
	}

	public uint GetObjectCount(ulong lotId, LotLocation location)
	{
		return World_GetObjectCountImpl(lotId, location);
	}

	public ResourceKey ObjectGetProductKey(ObjectGuid objId)
	{
		return World_ObjectGetProductKey(objId.mValue);
	}

	public void ObjectSetModel(ObjectGuid objId, string modelName, uint groupId)
	{
		World_ObjectSetModel(objId.mValue, modelName, groupId);
	}

	public void ObjectSetModel(ObjectGuid objId, ResourceKey modelKey)
	{
		World_ObjectSetModelKey(objId.mValue, modelKey);
	}

	public void ObjectPreloadMaterial(ObjectGuid objId, string materialSetName)
	{
		World_ObjectPreloadMaterial(objId.mValue, materialSetName);
	}

	public void ObjectSetMaterial(ObjectGuid objId, string materialSetName, float transitionTime, bool bTransitionToOverlay)
	{
		World_ObjectSetMaterial(objId.mValue, materialSetName, transitionTime, bTransitionToOverlay);
	}

	public void ObjectSetGeometryVisibilityState(ObjectGuid objId, string geometryVisibilityState)
	{
		World_ObjectSetGeometryVisibilityState(objId.mValue, geometryVisibilityState);
	}

	public void ObjectSetCustomLightRig(ObjectGuid objId, string customLightRig)
	{
		World_ObjectSetCustomLightRig(objId.mValue, customLightRig);
	}

	public void ObjectSetOpacity(ObjectGuid objId, float opacity, float transitionTime)
	{
		World_ObjectSetOpacity(objId.mValue, opacity, transitionTime);
	}

	public void ObjectSetOpacityTransition(ObjectGuid objId, float opacity1, float transitionTime, float opacity2)
	{
		World_ObjectSetOpacityTransition(objId.mValue, opacity1, transitionTime, opacity2);
	}

	public void ObjectSetNeverFade(ObjectGuid objId, bool neverFade)
	{
		World_ObjectSetNeverFade(objId.mValue, neverFade);
	}

	public void ObjectSetPropagateFade(ObjectGuid objId, bool propagateFade)
	{
		World_ObjectPropagateFade(objId.mValue, propagateFade);
	}

	public void ObjectSetDoNotDrawModel(ObjectGuid objId, bool b)
	{
		World_ObjectSetDoNotDrawModel(objId.mValue, b);
	}

	public void ObjectSetColorTint(ObjectGuid objId, float red, float green, float blue, float transitionTime)
	{
		World_ObjectSetColorTint(objId.mValue, red, green, blue, transitionTime);
	}

	public void ObjectSetColorTintTransition(ObjectGuid objId, float red1, float green1, float blue1, float transitionTime, float red2, float green2, float blue2)
	{
		World_ObjectSetColorTintTransition(objId.mValue, red1, green1, blue1, transitionTime, red2, green2, blue2);
	}

	public void ObjectSetGhostState(ObjectGuid objId, uint ghostType, uint ageGenderSpeciesFlags)
	{
		World_ObjectSetGhostState(objId.mValue, ghostType, ageGenderSpeciesFlags);
	}

	public void ObjectSetSculptureType(ObjectGuid objId, uint sculptureType)
	{
		World_ObjectSetSculptureType(objId.mValue, sculptureType);
	}

	public bool ObjectSetVisualOverride(ObjectGuid objId, uint type, float[] parameters)
	{
		return World_ObjectSetVisualOverride(objId.mValue, type, parameters);
	}

	public bool ObjectRemoveVisualOverride(ObjectGuid objId, uint type)
	{
		return World_ObjectRemoveVisualOverride(objId.mValue, type);
	}

	public void ObjectSetCurrentLotFlag(ObjectGuid objId, bool bVal)
	{
		World_ObjectSetCurrentLotFlag(objId.mValue, bVal);
	}

	public void ObjectDetachAutoDestroyEffects(ObjectGuid objId, bool destroyEffects)
	{
		World_ObjectDetachAutoDestroyEffects(objId.mValue, destroyEffects);
	}

	public void ObjectSetElevationOffset(ObjectGuid objId, float elevation)
	{
		World_ObjectSetElevationOffset(objId.mValue, elevation);
	}

	public float ObjectGetElevationOffset(ObjectGuid objId)
	{
		return World_ObjectGetElevationOffset(objId.mValue);
	}

	public void ObjectSetHiddenFlags(ObjectGuid objId, uint hiddenFlags)
	{
		World_ObjectSetHiddenFlags(objId.mValue, hiddenFlags);
	}

	public void ObjectSetHiddenFlagsWithWorldFootprint(ObjectGuid objId, uint hiddenFlags)
	{
		World_ObjectSetHiddenFlagsWithWorldFootprint(objId.mValue, hiddenFlags);
	}

	public uint ObjectGetHiddenFlags(ObjectGuid objId)
	{
		return World_ObjectGetHiddenFlags(objId.mValue);
	}

	public void ObjectResetParentVisibilityFlags(ObjectGuid objId)
	{
		World_ObjectResetParentVisibilityFlags(objId.mValue);
	}

	public void ObjectResetBindPose(ObjectGuid objId)
	{
		World_ObjectResetBindPose(objId.mValue);
	}

	public void ObjectResetBindPoseWithRotation(ObjectGuid objId)
	{
		World_ObjectResetBindPoseWithRotation(objId.mValue);
	}

	public bool ObjectEnableFootprint(ObjectGuid objId, uint footprintNameHash, bool enable)
	{
		return World_ObjectEnableFootprint(objId.mValue, footprintNameHash, enable);
	}

	public bool ObjectGetFootprintExtents(ObjectGuid objId, uint footprintNameHash, out Vector2 v0, out Vector2 v1, out sbyte level)
	{
		v0 = (v1 = Vector2.Zero);
		level = 0;
		return World_ObjectGetFootprintExtents(objId.mValue, footprintNameHash, ref v0, ref v1, ref level);
	}

	public bool ObjectFootprintContainsPoint(ObjectGuid objId, uint footprintNameHash, Vector3 position)
	{
		return World_ObjectFootprintContainsPoint(objId.mValue, footprintNameHash, position);
	}

	public bool ObjectFootprintContainsPoints(ObjectGuid objId, uint footprintNameHash, ulong[] objIdsToCompare, ref int[] results)
	{
		return World_ObjectFootprintContainsPoints(objId.mValue, footprintNameHash, objIdsToCompare, ref results);
	}

	public uint[] ObjectGetFootprintNameHashes(ObjectGuid objId)
	{
		uint[] array = World_ObjectGetFootprintNameHashes(objId.mValue);
		if (array == null)
		{
			array = new uint[0];
		}
		return array;
	}

	public bool ObjectIsFootprintEnabled(ObjectGuid objId, uint footprintNameHash)
	{
		return World_ObjectIsFootprintEnabled(objId.mValue, footprintNameHash);
	}

	public bool ObjectResetFootprintState(ObjectGuid objId)
	{
		return World_ObjectResetFootprintState(objId.mValue);
	}

	public void ObjectSetPosition(ObjectGuid objId, Vector3 pos, int level)
	{
		World_ObjectSetPosition(objId.mValue, pos, level);
	}

	public void ObjectSetPlacementMode(ObjectGuid objId, uint mode)
	{
		World_ObjectSetPlacementMode(objId.mValue, mode);
	}

	public uint ObjectGetPlacementMode(ObjectGuid objId)
	{
		return World_ObjectGetPlacementMode(objId.mValue);
	}

	public bool ObjectCanBeMovedUpAndDownOnWall(ObjectGuid objId)
	{
		return World_ObjectCanBeMovedUpAndDownOnWall(objId.mValue);
	}

	public void ObjectSetFogAreaEffect(ObjectGuid objId, float fogNearPlane, float fogFarPlane, float startRadius, float endRadius, float startTime, float endTime)
	{
		World_ObjectSetFogAreaEffect(objId.mValue, fogNearPlane, fogFarPlane, startRadius, endRadius, startTime, endTime);
	}

	public uint ObjectPlayVideo(ObjectGuid objId, string videoName, bool bLoop, ProductVersion product)
	{
		return World_ObjectPlayVideo(objId.mValue, videoName, bLoop, (uint)product);
	}

	public uint ObjectPlayVideo(ObjectGuid objId, string videoName, bool bLoop)
	{
		return World_ObjectPlayVideo(objId.mValue, videoName, bLoop, 0u);
	}

	public uint ObjectPlayVideo(ObjectGuid objId, ResourceKey videoKey, bool bLoop)
	{
		return World_ObjectPlayVideoFromKey(objId.mValue, videoKey, bLoop);
	}

	public void ObjectStopVideo(ObjectGuid objId)
	{
		World_ObjectStopVideo(objId.mValue);
	}

	public void ObjectSetPainting(ObjectGuid objId, ResourceKey paintingKey, uint levelToReveal)
	{
		World_ObjectSetPainting(objId.mValue, paintingKey, levelToReveal);
	}

	public void StairsGetProductInformation(Vector3 worldPositionOfStairs, out ResourceKey stairProductKey, out ResourceKey presetKey)
	{
		stairProductKey = ResourceKey.kInvalidResourceKey;
		presetKey = ResourceKey.kInvalidResourceKey;
		World_StairsGetProductInformation(worldPositionOfStairs, out stairProductKey, out presetKey);
	}

	public void SetRoomMarkerSeed(ObjectGuid objId, RoomMarkerTypes markerType)
	{
		World_SetRoomMarkerSeed(objId.mValue, (uint)markerType);
	}

	public void ClearRoomMarkerSeed(ObjectGuid objId, RoomMarkerTypes markerType)
	{
		World_ClearRoomMarkerSeed(objId.mValue, (uint)markerType);
	}

	public void SetRoomStrobeDelay(ulong lotId, int roomId, float delay)
	{
		World_SetRoomStrobeDelay(lotId, roomId, delay);
	}

	public void StairsGetFloorCoverExtents(ObjectGuid objId, out Vector3 min, out Vector3 max)
	{
		min = (max = Vector3.Zero);
		World_StairsGetFloorCoverExtents(objId, out min, out max);
	}

	public void FogOfExplorationSetFadeTime(float secondsToFade)
	{
		World_FogOfExplorationSetFadeTime(secondsToFade);
	}

	public ResourceKey CapturePhoto(PaintingStyle style, ObjectGuid[] objIdsToFrame)
	{
		World_CapturePhoto((uint)style, objIdsToFrame, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		ResourceKey result = ResourceKey.kInvalidResourceKey;
		if (callbackResult != null)
		{
			result = (ResourceKey)callbackResult;
		}
		return result;
	}

	public ResourceKey CaptureSceneForMemoryOrPicture(uint style, uint x, uint y, uint width, uint height, uint skill, bool bForMemory)
	{
		World_CaptureSceneForMemoryOrPicture(style, x, y, width, height, skill, bForMemory, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		ResourceKey result = ResourceKey.kInvalidResourceKey;
		if (callbackResult != null)
		{
			result = (ResourceKey)callbackResult;
		}
		return result;
	}

	public void SetIsPaintingTextureInUse(ResourceKey paintingKey, bool isInUse, bool bySim)
	{
		World_SetIsPaintingTextureInUse(paintingKey, isInUse, bySim);
	}

	public ResourceKey CaptureMeshForSculpture(ulong objID)
	{
		World_CaptureMeshForSculpture(objID, CallbackDelegate);
		object callbackResult = GetCallbackResult();
		ResourceKey result = ResourceKey.kInvalidResourceKey;
		if (callbackResult != null)
		{
			result = (ResourceKey)callbackResult;
		}
		return result;
	}

	public void DeleteSculptureMesh(ResourceKey meshKey)
	{
		World_DeleteSculptureMesh(meshKey);
	}

	public bool DeleteTravelDBResource(ResourceKey key)
	{
		return World_DeleteTravelDBResource(key);
	}

	public bool HandToolAttach(ulong objId, bool dropOnMouseUp)
	{
		return World_HandToolAttach(objId, dropOnMouseUp);
	}

	public ulong HandToolDetach()
	{
		return World_HandToolDetach();
	}

	public ulong HandToolGetObjectHeld()
	{
		return World_HandToolGetObjectHeld();
	}

	public bool HandToolHide()
	{
		return World_HandToolHide();
	}

	public bool HandToolShow()
	{
		return World_HandToolShow();
	}

	public bool ObjectDesigner_SetObject(ObjectGuid scriptHandle)
	{
		return World_ObjectDesigner_SetObjectImpl(scriptHandle.mValue);
	}

	public bool ObjectDesigner_SetCASPart(ResourceKey partKey)
	{
		return World_ObjectDesigner_SetCASPartImpl(partKey);
	}

	public bool ObjectDesigner_SetPattern(ResourceKey patternKey, ResourceKey presetKey)
	{
		return World_ObjectDesigner_SetPatternImpl(patternKey, presetKey);
	}

	public bool ObjectDesigner_SetBuildBuyProduct(eDesignModeType type, ResourceKey productKey, ResourceKey presetKey)
	{
		return World_ObjectDesigner_SetBuildBuyProductImpl((uint)type, productKey, presetKey);
	}

	public bool ObjectDesigner_IsProcessing()
	{
		return World_ObjectDesigner_IsProcessingImpl();
	}

	public void ObjectDesigner_SetNewCompositor(uint paramHash, byte[] data)
	{
		World_ObjectDesigner_SetNewCompositorImpl(paramHash, data);
	}

	public uint ObjectDesigner_GetCompositorPreviewImage(uint paramHash)
	{
		return World_ObjectDesigner_GetCompositorPreviewImageImpl(paramHash);
	}

	public ResourceKey ObjectDesigner_GetPatternKey(uint hashId)
	{
		return World_ObjectDesigner_GetPatternKeyImpl(hashId);
	}

	public void ObjectDesigner_SetNewPattern(uint hashId, byte[] data)
	{
		World_ObjectDesigner_SetNewPatternImpl(hashId, data);
	}

	public void ObjectDesigner_UpdateTexture(uint paramHash)
	{
		World_ObjectDesigner_UpdateTextureImpl(paramHash);
	}

	public void ObjectDesigner_SetThumbnailCompositor(ulong compositorID, byte[] dataSmall, byte[] dataLarge)
	{
		World_ObjectDesigner_SetThumbnailCompositorImpl(compositorID, dataSmall, dataLarge);
	}

	public void ObjectDesigner_SetHairSwatchCompositor(byte[] data)
	{
		World_ObjectDesigner_SetHairSwatchCompositorImpl(data);
	}

	public bool ObjectDesigner_IsHairSwatchCompositorValid()
	{
		return World_ObjectDesigner_IsHairSwatchCompositorValidImpl();
	}

	public bool ObjectDesigner_AreSharedCompositorsValid()
	{
		return World_ObjectDesigner_AreSharedCompositorsValidImpl();
	}

	public void ObjectDesigner_ClearLargePatternThumbnail()
	{
		World_ObjectDesigner_ClearLargePatternThumbnailImpl();
	}

	public void ObjectDesigner_CreateLargePatternThumbnail(ulong compositorID, ulong patternHashId, byte[] data)
	{
		World_ObjectDesigner_CreateLargePatternThumbnailImpl(compositorID, patternHashId, data);
	}

	public uint ObjectDesigner_GetPatternThumbnail(ulong compositorID, ulong patternHashId, byte[] data)
	{
		return World_ObjectDesigner_GetPatternThumbnailImpl(compositorID, patternHashId, data);
	}

	public uint ObjectDesigner_GetHairSwatchThumbnail(ulong instanceId, Color root, Color diffuse, Color highlight, Color tips)
	{
		return World_ObjectDesigner_GetHairSwatchThumbnailImpl(instanceId, root.ARGB, diffuse.ARGB, highlight.ARGB, tips.ARGB);
	}

	public void ObjectDesigner_EndDesigning(bool bSave, string presetStr)
	{
		World_ObjectDesigner_EndDesigningImpl(bSave, presetStr);
	}

	public ObjectGuid ObjectDesigner_GetCurrentObject()
	{
		return new ObjectGuid(World_ObjectDesigner_GetCurrentObjectImpl());
	}

	public ObjectGuid ObjectDesigner_GetOriginalObject()
	{
		return new ObjectGuid(World_ObjectDesigner_GetOriginalObjectImpl());
	}

	public ResourceKey ObjectDesigner_GetCurrentPattern()
	{
		return World_ObjectDesigner_GetCurrentPatternImpl();
	}

	public int ObjectDesigner_GetCurrentPatternType()
	{
		return World_ObjectDesigner_GetCurrentPatternTypeImpl();
	}

	public uint ObjectDesigner_GetDesignPresetCount()
	{
		return World_ObjectDesigner_GetDesignPresetCountImpl();
	}

	public uint ObjectDesigner_GetDefaultPresetId()
	{
		return World_ObjectDesigner_GetDefaultPresetIdImpl();
	}

	public string ObjectDesigner_GetDesignPreset(uint index)
	{
		return World_ObjectDesigner_GetDesignPresetImpl(index);
	}

	public uint ObjectDesigner_GetDesignPresetSubsort()
	{
		return World_ObjectDesigner_GetDesignPresetSubsortImpl(uint.MaxValue);
	}

	public uint ObjectDesigner_GetDesignPresetSubsort(uint index)
	{
		return World_ObjectDesigner_GetDesignPresetSubsortImpl(index);
	}

	public uint ObjectDesigner_GetDesignPresetIndexFromId(uint id)
	{
		return World_ObjectDesigner_GetDesignPresetIndexFromIdImpl(id);
	}

	public uint ObjectDesigner_GetDesignPresetIndexFromKeyAndId(ResourceKey key, uint id)
	{
		return World_ObjectDesigner_GetDesignPresetIndexFromKeyAndIdImpl(key, id);
	}

	public uint ObjectDesigner_GetDesignPresetIdFromIndex(uint index)
	{
		return World_ObjectDesigner_GetDesignPresetIdFromIndexImpl(index);
	}

	public void ObjectDesigner_SetDesignPresetCompositor(byte[] data)
	{
		World_ObjectDesigner_SetDesignPresetCompositorImpl(data);
	}

	public void ObjectDesigner_CreateDesignPresetThumbnail(uint index, byte[] dataA, byte[] dataB)
	{
		World_ObjectDesigner_CreateDesignPresetThumbnailImpl(index, dataA, dataB);
	}

	public uint ObjectDesigner_GetDesignPresetThumbnail(uint index)
	{
		return World_ObjectDesigner_GetDesignPresetThumbnailImpl(index);
	}

	public uint ObjectDesigner_AddDesignPreset(string presetStr, uint subsort)
	{
		return World_ObjectDesigner_AddDesignPresetImpl(presetStr, subsort);
	}

	public bool ObjectDesigner_ShareDesignPreset(string packageName, string presetStr, string presetDesc, uint subsort, uint presetId)
	{
		return World_ObjectDesigner_ShareDesignPresetImpl(packageName, presetStr, presetDesc, subsort, presetId);
	}

	public bool ObjectDesigner_SaveCurrentPresetAsXml(string presetName, string presetStr)
	{
		return World_ObjectDesigner_SaveCurrentPresetAsXmlImpl(presetName, presetStr);
	}

	public bool ObjectDesigner_IsUserDesignPreset(uint index)
	{
		return World_ObjectDesigner_IsUserDesignPresetImpl(index);
	}

	public uint ObjectDesigner_GetPresetContentCategory(uint presetIndex)
	{
		return World_ObjectDesigner_GetPresetContentCategoryImpl(presetIndex);
	}

	public uint ObjectDesigner_GetPresetContentCategoryFromKey(ResourceKey key, uint presetIndex)
	{
		return World_ObjectDesigner_GetPresetContentCategoryFromKeyImpl(key, presetIndex);
	}

	public string ObjectDesigner_GetObjectDesignPreset(ObjectGuid scriptHandle)
	{
		return World_ObjectDesigner_GetObjectDesignPresetImpl(scriptHandle.mValue);
	}

	public void ObjectDesigner_AddColorInfoPreset(ResourceKey key, byte[] data)
	{
		World_ObjectDesigner_AddColorInfoPresetImpl(key, data);
	}

	public void ObjectDesigner_RemoveColorInfoPreset(ResourceKey key)
	{
		World_ObjectDesigner_RemoveColorInfoPresetImpl(key);
	}

	public bool ObjectDesigner_IsUserColorInfoPreset(ResourceKey key)
	{
		return World_ObjectDesigner_IsUserColorInfoPresetImpl(key);
	}

	public string ObjectDesigner_GetBuildBuyDesignPreset(eDesignModeType type, Vector3 point)
	{
		return World_ObjectDesigner_GetBuildBuyDesignPresetImpl((uint)type, point);
	}

	public void ObjectDesigner_ClearObjectDesignPreset(ObjectGuid scriptHandle)
	{
		World_ObjectDesigner_ClearObjectDesignPresetImpl(scriptHandle.Value);
	}

	public void ObjectDesigner_SetPresetInfo(ObjectGuid objectId, string presetXml)
	{
		World_ObjectDesigner_SetPresetInfoImpl(objectId.Value, presetXml);
	}

	public void ObjectDesigner_BuildExportImages()
	{
		World_ObjectDesigner_BuildExportImagesImpl();
	}

	public bool ObjectDesigner_RemoveDesignPresetById(uint id)
	{
		return World_ObjectDesigner_RemoveDesignPresetByIdImpl(id);
	}

	public void WinAttachToObj(uint winHandle, ObjectGuid scriptHandle, Vector3 effect3DOffset, Vector2 effect2DOffset, bool mapTag, bool simThread, bool stickToScreenBounds)
	{
		World_WinAttachToObjImpl(winHandle, scriptHandle.Value, effect3DOffset, effect2DOffset, mapTag, simThread, stickToScreenBounds);
	}

	public void WinDetachFromObj(uint winHandle, bool simThread, bool mapTag)
	{
		World_WinDetachFromObjImpl(winHandle, simThread, mapTag);
	}

	public void WinAttachToWorldPosition(uint winHandle, Vector3 pos, Vector2 effect2DOffset, bool mapTag, bool simThread, bool stickToScreenBounds, bool round)
	{
		World_WinAttachToWorldPositionImpl(winHandle, pos, effect2DOffset, mapTag, simThread, stickToScreenBounds, round);
	}

	public void WinDetachFromWorldPosition(uint winHandle, bool simThread, bool mapTag)
	{
		World_WinDetachFromWorldPositionImpl(winHandle, simThread, mapTag);
	}

	public void SetMapTagStickToScreenBounds(uint winHandle, bool stickToScreenBounds)
	{
		World_SetMapTagStickToScreenBoundsImpl(winHandle, stickToScreenBounds);
	}

	public void ForceMaptagTick(uint winHandle)
	{
		World_ForceMaptagTickImpl(winHandle);
	}

	public EnvironmentRoomInfo GetInformationAboutRoom(ulong lotId, int roomID)
	{
		EnvironmentRoomInfo result = default;
		result.roomData = World_GetInformationAboutRoomImpl(lotId, roomID, eRoomDefinition.PlacementBlocking);
		return result;
	}

	public EnvironmentRoomInfo GetInformationAboutRoom(ulong lotId, int roomID, eRoomDefinition def)
	{
		EnvironmentRoomInfo result = default;
		result.roomData = World_GetInformationAboutRoomImpl(lotId, roomID, def);
		return result;
	}

	public float GetPercentageOfWallsCovered(ulong lotId, int roomID)
	{
		return World_GetPercentageOfWallsCoveredImpl(lotId, roomID, eRoomDefinition.PlacementBlocking);
	}

	public float GetPercentageOfWallsCovered(ulong lotId, int roomID, eRoomDefinition def)
	{
		return World_GetPercentageOfWallsCoveredImpl(lotId, roomID, def);
	}

	public LotType GetLotType(ulong lotId)
	{
		return (LotType)World_GetLotType(lotId);
	}

	public void SetLotType(ulong lotId, LotType lotType)
	{
		World_SetLotType(lotId, (int)lotType);
	}

	public ResidentialLotSubType GetResidentialLotSubType(ulong lotId)
	{
		return (ResidentialLotSubType)World_GetResidentialLotSubType(lotId);
	}

	public void SetResidentialLotSubType(ulong lotId, ResidentialLotSubType subType)
	{
		World_SetResidentialLotSubType(lotId, (uint)subType);
	}

	public CommercialLotSubType GetCommercialLotSubType(ulong lotId)
	{
		return (CommercialLotSubType)World_GetCommercialLotSubType(lotId);
	}

	public void SetCommercialLotSubType(ulong lotId, CommercialLotSubType subType)
	{
		World_SetCommercialLotSubType(lotId, (uint)subType);
	}

	public float GetLotAdditionalPropertyValue(ulong lotId)
	{
		return World_GetLotAdditionalPropertyValue(lotId);
	}

	public float GetLotBeautifulVistaBuf(ulong lotId)
	{
		return World_GetLotBeautifulVistaBuf(lotId);
	}

	public float GetHighestPointOnLot(ulong lotId)
	{
		return World_GetHighestPointOnLot(lotId);
	}

	public bool GetLotIsPartiallyInSea(ulong lotId)
	{
		return World_GetLotIsPartiallyInSea(lotId);
	}

	public bool GetLotBuildBuyEnabledFlag(ulong lotId)
	{
		return World_GetLotBuildBuyEnabledFlag(lotId);
	}

	public void SetLotBuildBuyEnabledFlag(ulong lotId, bool b)
	{
		World_SetLotBuildBuyEnabledFlag(lotId, b);
	}

	public void SetUnchartedLot(ulong lotId, float distance)
	{
		World_SetUnchartedLot(lotId, distance);
	}

	public void MarkLotWorthDirty(ulong lotId)
	{
		World_MarkLotWorthDirty(lotId);
	}

	public int GetLotWorth(ulong lotId)
	{
		return World_GetLotWorth(lotId);
	}

	public int GetUnfurnishedLotWorth(ulong lotId)
	{
		return World_GetUnfurnishedLotWorth(lotId);
	}

	public int GetEmptyLotWorth(ulong lotId)
	{
		return World_GetEmptyLotWorth(lotId);
	}

	public string GetWorldNameKey()
	{
		return World_GetWorldNameKey();
	}

	public string GetWorldFileName()
	{
		return World_GetWorldFileName();
	}

	public string GetLotName(ulong lotId)
	{
		return World_GetLotName(lotId);
	}

	public string GetLotNameKey(ulong lotId)
	{
		return World_GetLotNameKey(lotId);
	}

	public string GetLotDescription(ulong lotId)
	{
		return World_GetLotDescription(lotId);
	}

	public string GetLotDescriptionKey(ulong lotId)
	{
		return World_GetLotDescriptionKey(lotId);
	}

	public string GetLotAddress(ulong lotId)
	{
		return World_GetLotAddress(lotId);
	}

	public string GetLotAddressKey(ulong lotId)
	{
		return World_GetLotAddressKey(lotId);
	}

	public void SetLotName(ulong lotId, string lotName)
	{
		World_SetLotName(lotId, lotName);
	}

	public void SetLotDescription(ulong lotId, string lotDescription)
	{
		World_SetLotDescription(lotId, lotDescription);
	}

	public string GetLotSaveFileName(ulong lotId)
	{
		IntPtr intPtr = World_GetLotSaveFileName(lotId);
		if (intPtr != IntPtr.Zero)
		{
			return Marshal.PtrToStringUni(intPtr);
		}
		return string.Empty;
	}

	public ulong[] GetObjectScreenCoverageData()
	{
		return World_GetObjectScreenCoverageData();
	}

	public void EnableObjectScreenCoverage(uint enable)
	{
		World_EnableObjectScreenCoverage(enable);
	}

	public void ForceVisibilityForPicture(bool bForce)
	{
		World_ForceVisibilityForPicture(bForce);
	}

	public byte[] GetGameObjTuningData(ulong objId)
	{
		return World_GetGameObjTuningDataImpl(objId);
	}

	public void SetGameObjTuningData(ObjectGuid objectId, byte[] data)
	{
		World_SetGameObjTuningDataImpl(objectId.Value, data);
	}

	public int[] GetDoorRooms(ObjectGuid scriptHandle, eRoomDefinition roomDef)
	{
		int[] array = World_GetDoorRoomsImpl(scriptHandle.mValue, roomDef);
		if (array == null)
		{
			array = new int[0];
		}
		return array;
	}

	public void DropLeavesFromTrees(ulong lotId, float amount)
	{
		World_DropLeavesFromTreesImpl(lotId, amount);
	}

	public void DecayLeaves(ulong lotId, float amount)
	{
		World_DecayLeavesImpl(lotId, amount);
	}

	public void SetFloorFeatures(ulong lotId, LotLocation location, FloorFeatureFlags featureFlags, bool bSet, ushort mask)
	{
		World_SetFloorFeaturesImpl(lotId, location, featureFlags, bSet, mask);
	}

	public bool HasFloorFeatures(ulong lotId, LotLocation location, FloorFeatureFlags featureFlags, ushort mask)
	{
		return World_HasFloorFeaturesImpl(lotId, location, featureFlags, mask);
	}

	public bool HasFloorFeaturesWorldPos(Vector3 worldPos, FloorFeatureFlags featureFlags, ushort mask)
	{
		return World_HasFloorFeaturesWorldPosImpl(worldPos, featureFlags, mask);
	}

	public ushort GetFloorFeatureMask(ulong lotId, LotLocation location, FloorFeatureFlags featureFlags)
	{
		return World_GetFloorFeatureMaskImpl(lotId, location, featureFlags);
	}

	public LotLocation[] GetTilesWithFloorFeatures(ulong lotId, eRoomDefinition roomDefinition, FloorFeatureFlags featureFlags, ushort mask)
	{
		ulong[] array = World_GetTilesWithFloorFeaturesImpl(lotId, roomDefinition, featureFlags, mask);
		if (array == null)
		{
			return new LotLocation[0];
		}
		LotLocation[] array2 = new LotLocation[array.Length];
		int num = 0;
		ulong[] array3 = array;
		foreach (ulong num2 in array3)
		{
			int x = (int)(num2 & 0xFFFF);
			int z = (int)((num2 >> 16) & 0xFFFF);
			sbyte level = (sbyte)((num2 >> 32) & 0xFFFF);
			short room = (short)((num2 >> 48) & 0xFFFF);
			ref LotLocation reference = ref array2[num++];
			reference = new LotLocation(x, z, level, room);
		}
		return array2;
	}

	public bool HasSolidFloor(ulong lotId, LotLocation location)
	{
		return World_HasSolidFloorImpl(lotId, location);
	}

	public string GetFloorSurfaceType(ulong lotId, Vector3 worldPos)
	{
		return World_GetFloorSurfaceTypeImpl(lotId, worldPos);
	}

	public void ChangeStairState(ulong lotId, ObjectGuid objId, bool bHide)
	{
		World_ChangeStairStateImpl(lotId, objId.Value, bHide);
	}

	public bool HasBasement(ulong lotId, LotLocation location)
	{
		return World_HasBasementImpl(lotId, location);
	}

	public bool HasPool(ulong lotId, LotLocation location)
	{
		return World_HasPoolImpl(lotId, location);
	}

	public bool HasDiagonalWall(ulong lotId, LotLocation location)
	{
		return World_HasDiagonalWallImpl(lotId, location);
	}

	public bool WallExistsBetween(ulong lotId, LotLocation a, LotLocation b)
	{
		return World_WallExistsBetweenImpl(lotId, a, b);
	}

	public bool WallExistsBetweenPoints(ulong lotId, Vector3 a, Vector3 b, eRoomDefinition roomDef)
	{
		return World_WallExistsBetweenPointsImpl(lotId, a, b, (int)roomDef);
	}

	public bool IsLiveDraggingEnabled(ObjectGuid objId)
	{
		return World_IsLiveDraggingEnabledImpl(objId.Value);
	}

	public bool StaysAfterEvict(ObjectGuid objId)
	{
		return World_StaysAfterEvictImpl(objId.Value);
	}

	public bool CanSeeObject(Vector3 start, ObjectGuid target, bool bIgnoreWindows)
	{
		return World_CanSeeObjectImpl(start, target.Value, bIgnoreWindows);
	}

	public bool CanSeePoint(Vector3 start, Vector3 end, ObjectGuid endObjectId)
	{
		return World_CanSeePointImpl(start, end, endObjectId.Value);
	}

	public bool IsEditInGameFromWBMode()
	{
		return World_IsEditInGameFromWBModeImpl();
	}

	public void ExportWorldInfo()
	{
		World_ExportInfoImpl();
	}

	public float GetCatalogRefundRate()
	{
		return World_GetCatalogRefundRateImpl();
	}

	public bool WaitForDetailedLots()
	{
		World_WaitForDetailedLots(CallbackDelegate, 0uL, 0u);
		object callbackResult = GetCallbackResult();
		return (bool)callbackResult;
	}

	public bool WaitForLot(ulong lotID, bool waitForSims, bool waitForObjects)
	{
		uint num = 0u;
		if (waitForSims)
		{
			num |= 0x200000;
		}
		if (waitForObjects)
		{
			num |= 0x1000000;
		}
		World_WaitForDetailedLots(CallbackDelegate, lotID, num);
		object callbackResult = GetCallbackResult();
		return (bool)callbackResult;
	}

	public uint DesignModeSwap_Create()
	{
		return World_DesignModeSwap_CreateImpl();
	}

	public void DesignModeSwap_Release(uint handle)
	{
		World_DesignModeSwap_ReleaseImpl(handle);
	}

	public ResourceKey DesignModeSwap_GetPatternKey(uint handle, uint variableHash)
	{
		return World_DesignModeSwap_GetPatternKeyImpl(handle, variableHash);
	}

	public bool DesignModeSwap_SetSourceObject(uint handle, ulong sourceId)
	{
		return World_DesignModeSwap_SetSourceObjectImpl(handle, sourceId);
	}

	public bool DesignModeSwap_SetFlood(uint handle, bool flood)
	{
		return World_DesignModeSwap_SetFloodImpl(handle, flood);
	}

	public bool DesignModeSwap_SetSourceBuildBuy(uint handle, eDesignModeType type, Vector3 point)
	{
		return World_DesignModeSwap_SetSourceBuildBuyImpl(handle, (uint)type, point);
	}

	public void DesignModeSwap_ClearOldCompositors(uint handle)
	{
		World_DesignModeSwap_ClearOldCompositorsImpl(handle);
	}

	public bool DesignModeSwap_SetNewCompositor(uint handle, uint paramHash, byte[] data)
	{
		return World_DesignModeSwap_SetNewCompositorImpl(handle, paramHash, data);
	}

	public bool DesignModeSwap_SetNewPattern(uint handle, uint variableHash, byte[] data)
	{
		return World_DesignModeSwap_SetNewPatternImpl(handle, variableHash, data);
	}

	public void DesignModeSwap_SetSubsort(uint handle, uint subsort)
	{
		World_DesignModeSwap_SetSubsortImpl(handle, subsort);
	}

	public bool DesignModeSwap_StartMaterialBuild(uint handle, string presetStr)
	{
		return World_DesignModeSwap_StartMaterialBuildImpl(handle, presetStr);
	}

	public bool DesignModeSwap_IsMaterialBuilt(uint handle)
	{
		return World_DesignModeSwap_IsMaterialBuiltImpl(handle);
	}

	public void DesignModeSwap_ApplyToObject(uint handle)
	{
		World_DesignModeSwap_ApplyToObjectImpl(handle);
	}

	public void DesignModeSwap_DisableSubmitOfUndoable(uint handle, bool b)
	{
		World_DesignModeSwap_DisableSubmitOfUndoableImpl(handle, b);
	}

	public void ReplaceUndoableObject(ulong oldObjId, ulong newObjId)
	{
		World_ReplaceUndoableObjectImpl(oldObjId, newObjId);
	}

	public bool IsSimRoutable(float worldX, float worldZ)
	{
		return World_IsSimRoutableImpl(worldX, worldZ);
	}

	public bool IsCameraRoutable(float worldX, float worldZ)
	{
		return World_IsCameraRoutableImpl(worldX, worldZ);
	}

	public bool LotWasRefreshed(ulong lotId)
	{
		return World_LotWasRefreshedImpl(lotId);
	}

	public void SetObjectHighlight(ObjectGuid objId, bool bTurnOn)
	{
		World_SetObjectHighlightImpl(objId.Value, bTurnOn);
	}

	public void SetWallCutoutStateForObject(ObjectGuid objId, bool bEnable)
	{
		World_SetWallCutoutStateForObjectImpl(objId.Value, bEnable);
	}

	public void SetFloorCutoutStateForObject(ObjectGuid objId, bool bEnable)
	{
		World_SetFloorCutoutStateForObjectImpl(objId.Value, bEnable);
	}

	public void DoorLockStateChanged(ObjectGuid objId, bool bLocked)
	{
		World_DoorLockStateChangedImpl(objId.Value, bLocked);
	}

	public void SetPagodaRoofCurveChoice(uint curveChoice)
	{
		World_SetPagodaRoofCurveChoiceImpl(curveChoice);
	}

	public uint GetPagodaRoofCurveChoice()
	{
		return World_GetPagodaRoofCurveChoiceImpl();
	}

	public void SetRoofSlopeAngle(uint slopeAngle)
	{
		World_SetRoofSlopeAngleImpl(slopeAngle);
	}

	public uint GetRoofSlopeAngle()
	{
		return World_GetRoofSlopeAngleImpl();
	}

	public bool HasRoofsWhoseSlopesCannotBeChanged()
	{
		return World_HasRoofsWhoseSlopesCantBeChangedImpl();
	}

	public bool HasPagodaRoofs()
	{
		return World_HasPagodaRoofsImpl();
	}

	public void RebuildLotCompositors(ulong lotId)
	{
		World_RebuildLotCompositorsImpl(lotId);
	}

	protected override void OnAbortCallbackResult(object value)
	{
	}

	public bool GetLotMainEntranceLocation(ulong lotID, out Vector3 worldPos)
	{
		worldPos = Vector3.Invalid;
		return World_GetLotMainEntranceLocationImpl(lotID, ref worldPos);
	}

	public ObjectGuid GetLotFrontDoor(ulong lotID, eFrontDoorType frontDoorType)
	{
		ulong num = World_GetLotFrontDoorImpl(lotID, (uint)frontDoorType);
		if (num != 0)
		{
			return new ObjectGuid(num);
		}
		return ObjectGuid.InvalidObjectGuid;
	}

	public bool SetLotFrontDoor(ulong lotID, ObjectGuid objectGuid, eFrontDoorType frontDoorType)
	{
		return World_SetLotFrontDoorImpl(lotID, objectGuid.mValue, (uint)frontDoorType);
	}

	public void LotSetEntranceByTargetPoint(ulong lotId, bool bEnable, Vector3 targetPt)
	{
		World_LotSetEntranceByTargetPointImpl(lotId, bEnable, targetPt);
	}

	public bool LotIsEntranceFromTargetPoint(ulong lotId)
	{
		return World_LotIsEntranceFromTargetPointImpl(lotId);
	}

	public Vector3 LotGetEntraceTargetPoint(ulong lotId)
	{
		return World_LotGetEntraceTargetPointImpl(lotId);
	}

	public int[] GetConnectedRooms(ulong lotId, int roomId, int level)
	{
		int[] array = World_GetConnectedRoomsImpl(lotId, roomId, level);
		if (array == null)
		{
			array = new int[0];
		}
		return array;
	}

	public int[] GetInsideRoomsAtLevel(ulong lotId, int level, eRoomDefinition def)
	{
		int[] array = World_GetInsideRoomsAtLevelImpl(lotId, level, def);
		if (array == null)
		{
			array = new int[0];
		}
		return array;
	}

	public int[] GetPoolRooms(ulong lotId)
	{
		int[] array = World_GetPoolRoomsImpl(lotId);
		if (array == null)
		{
			array = new int[0];
		}
		return array;
	}

	public bool IsInPool(Vector3 worldPos)
	{
		return World_IsInPoolImpl(worldPos);
	}

	public ObjectGuid GetPoolObjectIdForPoolBelowPosition(Vector3 worldPos)
	{
		return new ObjectGuid(World_GetPoolObjectIdForPoolBelowPositionImpl(worldPos));
	}

	public bool IsOnPlatform(Vector3 worldPos)
	{
		return World_IsOnPlatformImpl(worldPos);
	}

	public void LotSetDetailPriority(ulong lotId, LotDetailPriority priority)
	{
		World_LotSetDetailPriority(lotId, priority);
	}

	public bool IsSimOnHill(ObjectGuid simObjId)
	{
		return World_IsSimOnHill(simObjId.Value);
	}

	public void SetIsSimInPool(ObjectGuid simObjId, bool isInPool, float waterSurfaceHeight)
	{
		World_SetIsSimInPool(simObjId.Value, isInPool, waterSurfaceHeight);
	}

	public bool GetNearestSwimmingPoint(Vector3 currentLocation, ref Vector3 nearestShoreline, ref Vector3 oceanPoint)
	{
		return World_GetNearestSwimmingPoint(currentLocation, ref nearestShoreline, ref oceanPoint);
	}

	public bool FindNearbyPointToSwimTo(Vector3 currentLocation, float distance, float depth, ref Vector3 destination)
	{
		return World_FindNearbyPointToSwimTo(currentLocation, distance, depth, ref destination);
	}

	public void UpdateMoodState(uint reserved, bool bEnabled, float r, float g, float b, int val)
	{
		World_UpdateMoodStateImpl(reserved, bEnabled, r, g, b, val);
	}

	public void SetDarkLotRendering(ulong lotId, bool flag)
	{
		World_SetDarkLotRendering(lotId, flag);
	}

	public bool IsDarkLotRenderingEnabled(ulong lotId)
	{
		return World_IsDarkLotRenderingEnabled(lotId);
	}

	public void RandomizeCloudinessImmediately(float value)
	{
		World_RandomizeCloudinessImmediately(value);
	}

	public bool HasAnySnowAtPoint(Vector3 worldPos)
	{
		return World_HasAnySnowAtPoint(worldPos);
	}

	public void SetVisualOverride(uint type)
	{
		World_SetVisualOverrideImpl(type);
	}

	public void LoadTick()
	{
		World_LoadTickImpl();
	}

	public bool GetRainPuddlesOnLot(ulong lotId, ref float[] posArray)
	{
		return World_GetRainPuddlesOnLotImpl(lotId, ref posArray);
	}

	public bool HasAnyValidRainPuddlesOnLot(ulong lotId)
	{
		return World_HasAnyValidRainPuddlesOnLotImpl(lotId);
	}

	public ulong CreateHouseboatLot(uint width, uint height, LotType lotType, uint lotSubtype)
	{
		return World_CreateHouseboatLotImpl(width, height, (uint)lotType, lotSubtype);
	}

	public bool DeleteHouseboatLot(ulong lotId)
	{
		return World_DeleteHouseboatLotImpl(lotId);
	}

	public bool IsHouseboatLot(ulong lotId)
	{
		return World_IsHouseboatLotImpl(lotId);
	}

	public void ParentLotToHouseboat(ulong lotId, ObjectGuid objectId)
	{
		World_ParentLotToHouseboatImpl(lotId, objectId.Value);
	}

	public ObjectGuid GetHouseboatParent(ulong lotId)
	{
		return World_GetHouseboatParentImpl(lotId);
	}

	public bool GetWorldToHouseboatDisplayPosition(ulong lotId, Vector3 worldPos, out Vector3 outPos)
	{
		return World_GetWorldToHouseboatDisplayPositionImpl(lotId, worldPos, out outPos);
	}

	public bool GetHouseboatDisplayToWorldPosition(ulong lotId, Vector3 houseboatPos, out Vector3 outPos)
	{
		return World_GetHouseboatDisplayToWorldPositionImpl(lotId, houseboatPos, out outPos);
	}

	public bool GetWorldToHouseboatDisplayPositionAndForward(ulong lotId, Vector3 worldPos, Vector3 worldFwd, out Vector3 outPos, out Vector3 outFwd)
	{
		return World_GetWorldToHouseboatDisplayPositionAndForwardImpl(lotId, worldPos, worldFwd, out outPos, out outFwd);
	}

	public bool GetHouseboatDisplayToWorldPositionAndForward(ulong lotId, Vector3 houseboatPos, Vector3 houseboatFwd, out Vector3 outPos, out Vector3 outFwd)
	{
		return World_GetHouseboatDisplayToWorldPositionAndForwardImpl(lotId, houseboatPos, houseboatFwd, out outPos, out outFwd);
	}

	public uint GetNumSpeedTree(ObjectGuid objId)
	{
		return World_GetNumSpeedTreesImpl(objId.Value);
	}

	public bool IsWallVertexACorner(ulong lotId, LotLocation location)
	{
		return World_IsWallVertexACornerImpl(lotId, location);
	}
}
