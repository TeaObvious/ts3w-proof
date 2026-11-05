using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.RouteDestinations;

namespace ScriptCore;

[Persistable]
public class Route : Sims3.SimIFace.Route
{
	private RouteHandleWrapper mHandleWrapper;

	private NonAbstractCallbackObject mCallback;

	private bool mbAllowReplan;

	private bool mbDoRouteFail;

	private ObjectGuid mFollowerId;

	private List<RouteCallbackEntry> mRouteCallbacks;

	[Persistable(false)]
	private RoutePlanResult mRoutePlanResult;

	private uint mNumRouteFailReplans;

	private ObjectGuid mDestObjId;

	private int mExitReasonsInterrupt;

	private Vector3 mOriginalStartPoint;

	private Vector3 mCurrentStartPoint;

	private Vector3 mPlanStartPoint;

	private Vector3 mDestinationPoint = Vector3.Origin;

	private bool mbDestObjInvalid;

	private uint mAgeGenderSpeciesFlags;

	private GangwayRouteState mCurrentGangwayRouteState;

	private ObjectGuid mCurrentGangwayRouteObjectId = ObjectGuid.InvalidObjectGuid;

	public override uint Handle => mHandleWrapper.Handle;

	public override bool ReplanAllowed
	{
		get
		{
			return mbAllowReplan;
		}
		set
		{
			mbAllowReplan = value;
		}
	}

	public override bool DoRouteFail
	{
		get
		{
			return mbDoRouteFail;
		}
		set
		{
			mbDoRouteFail = value;
		}
	}

	public override uint RouteHandle => mHandleWrapper.Handle;

	public override IScriptProxy Follower
	{
		get
		{
			return Sims3.SimIFace.Simulator.GetProxy(mFollowerId);
		}
		set
		{
			if (value != null)
			{
				mFollowerId = value.ObjectId;
			}
			else
			{
				mFollowerId.Value = 0uL;
			}
			Route_SetFollower(mHandleWrapper.Handle, mFollowerId.Value);
		}
	}

	public override uint FollowerAgeGenderSpecies
	{
		get
		{
			return mAgeGenderSpeciesFlags;
		}
		set
		{
			mAgeGenderSpeciesFlags = value;
			Route_SetAGS(mHandleWrapper.Handle, mAgeGenderSpeciesFlags);
		}
	}

	public override RoutePlanResult PlanResult
	{
		get
		{
			return mRoutePlanResult;
		}
		set
		{
			mRoutePlanResult = value;
		}
	}

	public override int ExitReasonsInterrupt
	{
		get
		{
			return mExitReasonsInterrupt;
		}
		set
		{
			mExitReasonsInterrupt = value;
		}
	}

	public override IHasScriptProxy DestObj
	{
		get
		{
			if (mDestObjId != ObjectGuid.InvalidObjectGuid)
			{
				IScriptProxy proxy = Sims3.SimIFace.Simulator.GetProxy(mDestObjId);
				if (proxy != null)
				{
					return proxy.Target;
				}
			}
			return null;
		}
	}

	public override bool DestObjInvalid => mbDestObjInvalid;

	public override uint NumRouteFailReplans
	{
		get
		{
			return mNumRouteFailReplans;
		}
		set
		{
			mNumRouteFailReplans = value;
		}
	}

	public override bool IsActive => Route_IsActive(mHandleWrapper.Handle);

	public override List<RouteCallbackEntry> RouteCallbacks
	{
		get
		{
			if (mRouteCallbacks == null)
			{
				mRouteCallbacks = new List<RouteCallbackEntry>();
			}
			return mRouteCallbacks;
		}
	}

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_CreateRoute(ulong handle, uint ageGenderFlags);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_CreateRouteWithSameGoal(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_Clone(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_DestroyRoute(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_ClearRoutePaths(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_ResetCurrentPath(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetFollower(uint handle, ulong followerObjectId);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Route_IsPointObstructedBySim(uint handle, Vector3 point);

	[DllImport("Sims3Common.dll")]
	private static extern bool Route_AddPointDestination(uint handle, uint nTag, float fWeight, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] scoreFunctionWeights, Vector3 destination, Vector3 facingDirection);

	[DllImport("Sims3Common.dll")]
	private static extern bool Route_AddLotDestination(uint handle, uint nTag, float fWeight, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] scoreFunctionWeights, ulong lot);

	[DllImport("Sims3Common.dll")]
	private static extern bool Route_AddRadialRangeDestination(uint handle, uint nTag, float fWeight, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] scoreFunctionWeights, ulong targetObject, Vector3 centralPoint, Vector3 coneVector, uint facingPreference, float coneAngle, float preferredSpacing, float minRadius, float maxRadius, float preferredRadius, float rayCastVerticalOffsetY);

	[DllImport("Sims3Common.dll")]
	private static extern bool Route_AddSlotArrayDestination(uint handle, uint nTag, float fWeight, uint ageGenderSpecies, [MarshalAs(UnmanagedType.I1)] bool bOffsetForPortalsByAGS, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] scoreFunctionWeights, ulong targetObject, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)] uint[] slotNameHashes, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] slotWeights);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_ClearDestinationList(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetValidRooms(uint handle, ulong nLotId, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_I4)] int[] validRooms, int roomDefinition);

	[DllImport("Sims3Common.dll")]
	private static extern RoutePlanResult Route_Plan(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern RoutePlanResult Route_PlanFromPoint(uint handle, float x, float y, float z);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Route_GetDestinationObstruction(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Route_GetObstructionAtPoint(uint handle, float x, float y, float z);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Route_GetObstructionAtWorldOrLotPoint(uint handle, float x, float y, float z);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] Route_FindObstaclesForSimAlongRoute(ulong simHandle, uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_IsPointRoutable(uint handle, Vector3 worldPos);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_BeginFollowingRouteAnimationSpec(uint handle, RouteAnimationSpec rAnimSpec, uint routeStartFlags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_BeginFollowingRouteAnimationSpecMult(uint handle, RouteAnimationSpec rAnimSpec, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)] uint[] slaveAnimSpecsPacked, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] slaveObjectGuids, [MarshalAs(UnmanagedType.I1)] bool bSlavesRoute, uint routeStartFlags);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_StopFollowingRoute(uint handle, int stopMode);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_IsActive(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_SubstitutePathsFromRoute(uint handle, uint otherHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_UpdateRouteAnimationSpec(uint handle, ulong simObjId, RouteAnimationSpec rAnimSpec);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_UpdateRouteAnimationSpecMult(uint handle, ulong simObjId, RouteAnimationSpec rAnimSpec, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)] uint[] slaveAnimSpecsPacked, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] slaveObjectGuids);

	[DllImport("Sims3Common.dll")]
	private static extern RoutePlanResult Route_Replan(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern RoutePlanResult Route_ReplanFromPosition(uint handle, Vector3 position);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetNumPaths(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SmoothenSubPathConnections(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SubdividePathsWithSelfIntersections(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern bool Route_SelfIntersectionTest(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern PathData Route_GetPathData(uint handle, uint pathIndex);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetPathData(uint handle, ref PathData pathData);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_PopPath(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_InsertRouteSubPathsAtIndex(uint handle, uint pathIndex, uint handleToInsert);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_InsertCustomPathAtIndex(uint handle, uint pathIndex, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] ref float[] points, [MarshalAs(UnmanagedType.I1)] bool bCyclic, [MarshalAs(UnmanagedType.I1)] bool bSetRouteDestination, uint pathType);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_GetPathStartPoint(uint handle, uint pathIndex, ref Vector3 outPosition);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_GetPathEndPoint(uint handle, uint pathIndex, ref Vector3 outPosition);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_GetPathStartDirection(uint handle, uint pathIndex, ref Vector3 outDirection);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_GetPathEndDirection(uint handle, uint pathIndex, ref Vector3 outDirection);

	[DllImport("Sims3Common.dll")]
	private static extern float Route_GetPathLength(uint handle, uint pathIndex);

	[DllImport("Sims3Common.dll")]
	private static extern float Route_GetRouteLength(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetNumNodes(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_GetPointAtDistanceOnPathway(uint handle, float dist, ref Vector3 point, ref Vector3 returnTangent, ref int nodeIndex);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_GetPointAtDistanceOnRoute(uint handle, float dist, ref Vector3 point, ref Vector3 returnTangent, ref int nodeIndex);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetPathEndOrientation(uint handle, uint pathIndex, Matrix44 orientationMatrix);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetLoopStart(uint handle, int startPathIndex);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_IsLoop(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float Route_GetEstimatedTravelTime(uint handle, uint pathIndex, ulong simObjID, RouteAnimationSpec animSpec);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_GetOption(uint handle, long optionType, [MarshalAs(UnmanagedType.I1)] bool bOptions2);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_SetOption(uint handle, long optionType, [MarshalAs(UnmanagedType.I1)] bool value, [MarshalAs(UnmanagedType.I1)] bool bOptions2);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetRouteActionResult(uint handle, uint actionResult);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetRouteMetaType(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetRouteMetaType(uint handle, uint routeMetaType);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetLockKeys(uint handle, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] lockKeys);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_AddObjectToIgnoreForRoute(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_RemoveObjectToIgnoreForRoute(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_ClearObjectToIgnoreForRoute(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] Route_GetObjectsToIgnoreForRoute(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_AddObjectToIgnoreForRouteEndTurn(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_RemoveObjectToIgnoreForRouteEndTurn(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_ClearObjectToIgnoreForRouteEndTurn(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] Route_GetObjectsToIgnoreForRouteEndTurn(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_AddObjectToForbiddenPortalList(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_RemoveObjectFromForbiddenPortalList(uint handle, ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_ClearForbiddenPortalList(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetPreferredPortal(uint handle, ulong onbjectId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_GetDestPoint(uint handle, ref Vector3 position);

	[DllImport("Sims3Common.dll")]
	private static extern float Route_GetDistanceRemaining(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern float Route_GetPathDistanceRemaining(uint handle, uint pathIdx);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_PlaceSocialFootprint(uint handle, uint slotAName, Vector3 simBPos, uint slotBName, ulong footprintId);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetNumSegments(uint routeHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetSegmentIdAtIndex(uint routeHandle, uint segmentIndex);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_Split(uint routeHandle, uint segmentIndex);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_Append(uint routeHandle, uint routeHandleOther, [MarshalAs(UnmanagedType.I1)] bool preserveSegments);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_AppendSegment(uint routeHandle, Vector3 endSegment);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_Replace(uint routeHandle, uint segmentId, uint routeHandleOther);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_Merge(uint routeHandle, uint beginSegmentId, uint endSegmentId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_Truncate(uint routeHandle, uint beginSegmentId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_Tesselate(uint routeHandle, float maximumSegmentLength);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetSegmentAtDistanceBeforeEnd(uint routeHandle, float fDistance, [MarshalAs(UnmanagedType.I1)] bool bCreate);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_CreateSegmentAtDistanceBeforeEndOfRoute(uint routeHandle, float fDistance);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetSegmentAtDistanceBeforeSegment(uint routeHandle, uint beginSegmentId, float fDistance, [MarshalAs(UnmanagedType.I1)] bool bCreate);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_GetSegmentStartPoint(uint handle, uint segmentIndex, ref Vector3 position);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_GetSegmentEndPoint(uint handle, uint segmentIndex, ref Vector3 position);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_GetSegmentStartDirection(uint handle, uint segmentIndex, ref Vector3 direction);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Route_GetSegmentEndDirection(uint handle, uint segmentIndex, ref Vector3 direction);

	[DllImport("Sims3Common.dll")]
	private static extern float Route_GetDistanceBetweenSegments(uint handle, uint startSegmentId, uint endSegmentID);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetLastCompletedSegment(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint Route_GetNumInterestPoints(uint routeHandle);

	[DllImport("Sims3Common.dll")]
	private static extern RouteInterestPoint Route_GetInterestPointAtIndex(uint routeHandle, uint interestPointIndex);

	[DllImport("Sims3Common.dll")]
	private static extern bool Route_InsertPortalSubPathAtIndex(uint handle, uint pathIndex, ObjectGuid portalObjectId);

	[DllImport("Sims3Common.dll")]
	private static extern void Route_SetAGS(uint handle, uint ags);

	public Route()
	{
		mFollowerId.Value = 0uL;
		mCallback = new NonAbstractCallbackObject();
		mHandleWrapper = new RouteHandleWrapper(0u);
		mNumRouteFailReplans = 0u;
		mbAllowReplan = true;
		mbDoRouteFail = true;
	}

	public Route(IScriptProxy simObj, uint ageGenderFlags)
	{
		if (simObj != null)
		{
			mFollowerId = simObj.ObjectId;
		}
		else
		{
			mFollowerId.Value = 0uL;
		}
		mCallback = new NonAbstractCallbackObject();
		uint handle = Route_CreateRoute(simObj.ObjectId.Value, ageGenderFlags);
		mHandleWrapper = new RouteHandleWrapper(handle);
		mNumRouteFailReplans = 0u;
		mbAllowReplan = true;
		mbDoRouteFail = true;
		mAgeGenderSpeciesFlags = ageGenderFlags;
	}

	private Route(IScriptProxy simObj, uint handle, uint numRouteFailReplans)
	{
		if (simObj != null)
		{
			mFollowerId = simObj.ObjectId;
		}
		else
		{
			mFollowerId.Value = 0uL;
		}
		mCallback = new NonAbstractCallbackObject();
		mHandleWrapper = new RouteHandleWrapper(handle);
		mNumRouteFailReplans = numRouteFailReplans;
		mbAllowReplan = true;
		mbDoRouteFail = true;
	}

	~Route()
	{
		if (mHandleWrapper != null && mHandleWrapper.Handle != 0)
		{
			Route_DestroyRoute(mHandleWrapper.Handle);
		}
		mHandleWrapper = null;
	}

	public override GangwayRouteState GetGangwayRouteState()
	{
		return mCurrentGangwayRouteState;
	}

	public override ObjectGuid GetGangwayRouteObjectId()
	{
		return mCurrentGangwayRouteObjectId;
	}

	public override void SetGangwayRouteState(GangwayRouteState state, ObjectGuid gangwayObjectId)
	{
		mCurrentGangwayRouteState = state;
		mCurrentGangwayRouteObjectId = gangwayObjectId;
	}

	public override void ClearGangwayRouteState()
	{
		mCurrentGangwayRouteState = GangwayRouteState.None;
		mCurrentGangwayRouteObjectId = ObjectGuid.InvalidObjectGuid;
	}

	public override void Dispose()
	{
		if (mHandleWrapper != null && mHandleWrapper.Handle != 0)
		{
			Route_DestroyRoute(mHandleWrapper.Handle);
		}
		mHandleWrapper.Handle = 0u;
		GC.SuppressFinalize(this);
	}

	public override bool GetOption(RouteOption optionType)
	{
		return Route_GetOption(mHandleWrapper.Handle, (long)optionType, bOptions2: false);
	}

	public override void SetOption(RouteOption optionType, bool value)
	{
		Route_SetOption(mHandleWrapper.Handle, (long)optionType, value, bOptions2: false);
	}

	public override bool GetOption2(RouteOption2 optionType)
	{
		return Route_GetOption(mHandleWrapper.Handle, (long)optionType, bOptions2: true);
	}

	public override void SetOption2(RouteOption2 optionType, bool value)
	{
		Route_SetOption(mHandleWrapper.Handle, (long)optionType, value, bOptions2: true);
	}

	public override ObjectGuid IsPointObstructedBySim(Vector3 point)
	{
		return new ObjectGuid(Route_IsPointObstructedBySim(mHandleWrapper.Handle, point));
	}

	public override void SetRouteActionResult(uint actionResult)
	{
		Route_SetRouteActionResult(mHandleWrapper.Handle, actionResult);
	}

	public override RouteMetaType GetRouteMetaType()
	{
		return (RouteMetaType)Route_GetRouteMetaType(mHandleWrapper.Handle);
	}

	public override void SetRouteMetaType(RouteMetaType routeMetaType)
	{
		Route_SetRouteMetaType(mHandleWrapper.Handle, (uint)routeMetaType);
	}

	public override ObjectGuid GetDestinationObstruction()
	{
		return new ObjectGuid(Route_GetDestinationObstruction(mHandleWrapper.Handle));
	}

	public override ObjectGuid GetObstructionAtPoint(Vector3 pt)
	{
		return new ObjectGuid(Route_GetObstructionAtPoint(mHandleWrapper.Handle, pt.x, pt.y, pt.z));
	}

	public override ObjectGuid GetObstructionAtWorldOrLotPoint(Vector3 pt)
	{
		return new ObjectGuid(Route_GetObstructionAtWorldOrLotPoint(mHandleWrapper.Handle, pt.x, pt.y, pt.z));
	}

	public override bool GetDestPoint(out Vector3 pt)
	{
		pt = Vector3.Invalid;
		return Route_GetDestPoint(mHandleWrapper.Handle, ref pt);
	}

	public override float GetDistanceRemaining()
	{
		return Route_GetDistanceRemaining(mHandleWrapper.Handle);
	}

	public override float GetPathDistanceRemaining(uint pathIndex)
	{
		return Route_GetPathDistanceRemaining(mHandleWrapper.Handle, pathIndex);
	}

	public override Vector3 GetOriginalStartPoint()
	{
		return mOriginalStartPoint;
	}

	public override Vector3 GetCurrentStartPoint()
	{
		return mCurrentStartPoint;
	}

	public override Vector3 GetPlanStartPoint()
	{
		return mPlanStartPoint;
	}

	public override void SetLockKeys(params ulong[] lockKeys)
	{
		Route_SetLockKeys(mHandleWrapper.Handle, lockKeys);
	}

	public override void AddObjectToIgnoreForRoute(ObjectGuid objectId)
	{
		Route_AddObjectToIgnoreForRoute(mHandleWrapper.Handle, objectId.Value);
	}

	public override void RemoveObjectToIgnoreForRoute(ObjectGuid objectId)
	{
		Route_RemoveObjectToIgnoreForRoute(mHandleWrapper.Handle, objectId.Value);
	}

	public override void ClearObjectToIgnoreForRoute()
	{
		Route_ClearObjectToIgnoreForRoute(mHandleWrapper.Handle);
	}

	public override ObjectGuid[] GetObjectsToIgnoreForRoute()
	{
		ulong[] array = Route_GetObjectsToIgnoreForRoute(mHandleWrapper.Handle);
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

	public override void AddObjectToIgnoreForRouteEndTurn(ObjectGuid objectId)
	{
		Route_AddObjectToIgnoreForRouteEndTurn(mHandleWrapper.Handle, objectId.Value);
	}

	public override void RemoveObjectToIgnoreForRouteEndTurn(ObjectGuid objectId)
	{
		Route_RemoveObjectToIgnoreForRouteEndTurn(mHandleWrapper.Handle, objectId.Value);
	}

	public override void ClearObjectToIgnoreForRouteEndTurn()
	{
		Route_ClearObjectToIgnoreForRouteEndTurn(mHandleWrapper.Handle);
	}

	public override ObjectGuid[] GetObjectsToIgnoreForRouteEndTurn()
	{
		ulong[] array = Route_GetObjectsToIgnoreForRouteEndTurn(mHandleWrapper.Handle);
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

	public override void AddObjectToForbiddenPortalList(ObjectGuid objectId)
	{
		Route_AddObjectToForbiddenPortalList(mHandleWrapper.Handle, objectId.Value);
	}

	public override void RemoveObjectFromForbiddenPortalList(ObjectGuid objectId)
	{
		Route_RemoveObjectFromForbiddenPortalList(mHandleWrapper.Handle, objectId.Value);
	}

	public override void ClearForbiddenPortalList()
	{
		Route_ClearForbiddenPortalList(mHandleWrapper.Handle);
	}

	public override void SetPreferredPortal(ObjectGuid objectId)
	{
		Route_SetPreferredPortal(mHandleWrapper.Handle, objectId.Value);
	}

	public override bool PlaceSocialFootprint(Slot slotAName, Vector3 simBPos, Slot slotBName, ObjectGuid footprintId)
	{
		return Route_PlaceSocialFootprint(mHandleWrapper.Handle, (uint)slotAName, simBPos, (uint)slotBName, footprintId.Value);
	}

	public override Sims3.SimIFace.Route ShallowCopy()
	{
		if (mHandleWrapper != null && mHandleWrapper.Handle != 0)
		{
			uint handle = Route_CreateRouteWithSameGoal(mHandleWrapper.Handle);
			return new Route(Follower, handle, 0u);
		}
		return null;
	}

	public override Sims3.SimIFace.Route Clone()
	{
		if (mHandleWrapper != null && mHandleWrapper.Handle != 0)
		{
			uint handle = Route_Clone(mHandleWrapper.Handle);
			return new Route(Follower, handle, 0u);
		}
		return null;
	}

	public override void ClearDestinationList()
	{
		Route_ClearDestinationList(mHandleWrapper.Handle);
	}

	private static uint GetNumPointsForZeroToDiameterApprox(float diameter, float spacing)
	{
		float num = 1.262586f;
		if (spacing <= 0f)
		{
			return 1u;
		}
		uint num2 = (uint)(diameter * diameter / (num * spacing * spacing));
		if (num2 == 0)
		{
			num2++;
		}
		return num2;
	}

	private static uint GetNumPointsForRadialRangeApprox(float minRadius, float maxRadius, float angleRange, float spacing)
	{
		float num = angleRange / ((float)Math.PI * 2f);
		if (maxRadius > minRadius)
		{
			return (uint)(num * ((float)GetNumPointsForZeroToDiameterApprox(maxRadius * 2f, spacing) - (float)GetNumPointsForZeroToDiameterApprox(minRadius * 2f, spacing)));
		}
		return (uint)(num * (float)GetNumPointsForZeroToDiameterApprox(minRadius * 2f, spacing));
	}

	private static float GetSpacingToGenerateNPoints(float minRadius, float maxRadius, float angleRange, float originalSpacing)
	{
		float num = GetNumPointsForRadialRangeApprox(minRadius, maxRadius, angleRange, originalSpacing);
		if (num <= 100f || num <= 0f || originalSpacing <= 0f)
		{
			return originalSpacing;
		}
		float num2 = originalSpacing * originalSpacing;
		float num3 = num2 * num / 100f;
		return (float)Math.Sqrt(num3);
	}

	public override void AddDestination(RouteDestination destination)
	{
		ObjectGuid objectGuid = mDestObjId;
		Vector3 vector = mDestinationPoint;
		if (destination is PointDestination)
		{
			PointDestination pointDestination = destination as PointDestination;
			Route_AddPointDestination(mHandleWrapper.Handle, pointDestination.Tag, pointDestination.Weight, pointDestination.ScoreFunctionWeights, pointDestination.mPoint, pointDestination.mFacingDirection);
			mDestinationPoint = pointDestination.mPoint;
		}
		else if (destination is LotDestination)
		{
			LotDestination lotDestination = destination as LotDestination;
			Route_AddLotDestination(mHandleWrapper.Handle, lotDestination.Tag, lotDestination.Weight, lotDestination.ScoreFunctionWeights, lotDestination.mLotId);
			mDestinationPoint = Sims3.SimIFace.World.LotGetPtInside(lotDestination.mLotId);
		}
		else if (destination is RadialRangeDestination)
		{
			RadialRangeDestination radialRangeDestination = destination as RadialRangeDestination;
			radialRangeDestination.mfPreferredSpacing = GetSpacingToGenerateNPoints(radialRangeDestination.mfMinRadius, radialRangeDestination.mfMaxRadius, radialRangeDestination.mfConeAngle, radialRangeDestination.mfPreferredSpacing);
			ObjectGuid objectGuid2 = ObjectGuid.InvalidObjectGuid;
			if (radialRangeDestination.mTargetObject != null && radialRangeDestination.mTargetObject.Proxy != null)
			{
				objectGuid2 = radialRangeDestination.mTargetObject.Proxy.ObjectId;
			}
			mDestObjId = objectGuid2;
			Route_AddRadialRangeDestination(mHandleWrapper.Handle, radialRangeDestination.Tag, radialRangeDestination.Weight, radialRangeDestination.ScoreFunctionWeights, objectGuid2.Value, radialRangeDestination.mCenterPoint, radialRangeDestination.mConeVector, (uint)radialRangeDestination.mFacingPreference, radialRangeDestination.mfConeAngle, radialRangeDestination.mfPreferredSpacing, radialRangeDestination.mfMinRadius, radialRangeDestination.mfMaxRadius, radialRangeDestination.mfPreferredRadius, radialRangeDestination.mfRayCastVerticalOffset);
			mDestinationPoint = radialRangeDestination.mCenterPoint;
		}
		else if (destination is SlotArrayDestination)
		{
			SlotArrayDestination slotArrayDestination = destination as SlotArrayDestination;
			ObjectGuid id = ObjectGuid.InvalidObjectGuid;
			if (slotArrayDestination.mTargetObject != null && slotArrayDestination.mTargetObject.Proxy != null)
			{
				id = slotArrayDestination.mTargetObject.Proxy.ObjectId;
				mDestinationPoint = Sims3.SimIFace.Objects.GetPosition(id);
			}
			mDestObjId = id;
			int num = slotArrayDestination.mSlotTargets.Length;
			if (num > 0 && slotArrayDestination.mTargetObject != null && slotArrayDestination.mTargetObject.Proxy != null)
			{
				uint[] array = new uint[num];
				float[] array2 = new float[num];
				for (int i = 0; i < num; i++)
				{
					array[i] = (uint)slotArrayDestination.mSlotTargets[i].mSlot;
					array2[i] = slotArrayDestination.mSlotTargets[i].mWeight;
				}
				Route_AddSlotArrayDestination(mHandleWrapper.Handle, slotArrayDestination.Tag, slotArrayDestination.Weight, slotArrayDestination.mAgeGenderSpecies, slotArrayDestination.mbOffsetForPortalsByAGS, slotArrayDestination.ScoreFunctionWeights, slotArrayDestination.mTargetObject.Proxy.ObjectId.mValue, array, array2);
			}
		}
		if (objectGuid != mDestObjId)
		{
			Sims3.SimIFace.Route.InvokeAddDestinationCallback(mDestObjId, this, destination);
		}
		if (vector != mDestinationPoint)
		{
			Sims3.SimIFace.Route.InvokeAddDestinationCallback(mDestinationPoint, this, destination);
		}
	}

	public override void SetValidRooms(ulong nLotId, int[] validRooms)
	{
		Route_SetValidRooms(mHandleWrapper.Handle, nLotId, validRooms, 2);
	}

	private void IssuePerformanceWarnings()
	{
	}

	private bool IsDestObjectInvalid()
	{
		if (mDestObjId == ObjectGuid.InvalidObjectGuid)
		{
			return false;
		}
		Vector3 position = Sims3.SimIFace.Objects.GetPosition(mDestObjId);
		if (position == Vector3.OutOfWorld || position == Vector3.Invalid || position == Vector3.Origin)
		{
			mRoutePlanResult = default;
			mRoutePlanResult.mType = RoutePlanResultType.FailedBecausePlannerAborted;
			mbDestObjInvalid = true;
			return true;
		}
		return false;
	}

	public override RoutePlanResult Plan()
	{
		if (IsDestObjectInvalid())
		{
			return mRoutePlanResult;
		}
		if (Sims3.SimIFace.Route.AboutToPlanCallback != null)
		{
			Sims3.SimIFace.Route.AboutToPlanCallback(this, "Plan", mDestinationPoint);
		}
		mRoutePlanResult = Route_Plan(mHandleWrapper.Handle);
		if (mRoutePlanResult.Succeeded())
		{
			GetPathStartPoint(0u, ref mOriginalStartPoint);
		}
		else
		{
			mOriginalStartPoint = Vector3.Invalid;
		}
		mCurrentStartPoint = mOriginalStartPoint;
		mPlanStartPoint = mOriginalStartPoint;
		if (Sims3.SimIFace.Route.PostPlanCallback != null)
		{
			Sims3.SimIFace.Route.PostPlanCallback(this, "Plan", mRoutePlanResult.ToString());
		}
		return mRoutePlanResult;
	}

	public override RoutePlanResult PlanFromPoint(Vector3 startPosition)
	{
		if (IsDestObjectInvalid())
		{
			return mRoutePlanResult;
		}
		if (Sims3.SimIFace.Route.AboutToPlanCallback != null)
		{
			Sims3.SimIFace.Route.AboutToPlanCallback(this, "Plan", mDestinationPoint);
		}
		mRoutePlanResult = Route_PlanFromPoint(mHandleWrapper.Handle, startPosition.x, startPosition.y, startPosition.z);
		if (mRoutePlanResult.Succeeded())
		{
			GetPathStartPoint(0u, ref mOriginalStartPoint);
			mPlanStartPoint = mOriginalStartPoint;
		}
		else
		{
			mOriginalStartPoint = Vector3.Invalid;
			mPlanStartPoint = startPosition;
		}
		mCurrentStartPoint = mOriginalStartPoint;
		if (Sims3.SimIFace.Route.PostPlanCallback != null)
		{
			Sims3.SimIFace.Route.PostPlanCallback(this, "Plan", mRoutePlanResult.ToString());
		}
		return mRoutePlanResult;
	}

	public override RoutePlanResult Replan()
	{
		if (IsDestObjectInvalid())
		{
			return mRoutePlanResult;
		}
		if (Sims3.SimIFace.Route.AboutToPlanCallback != null)
		{
			Sims3.SimIFace.Route.AboutToPlanCallback(this, "Replan", PlanResult.mDestination);
		}
		mRoutePlanResult = Route_Replan(mHandleWrapper.Handle);
		if (mRoutePlanResult.Succeeded())
		{
			GetPathStartPoint(0u, ref mCurrentStartPoint);
		}
		else
		{
			mCurrentStartPoint = Vector3.Invalid;
		}
		mPlanStartPoint = mCurrentStartPoint;
		if (Sims3.SimIFace.Route.PostPlanCallback != null)
		{
			Sims3.SimIFace.Route.PostPlanCallback(this, "Replan", mRoutePlanResult.ToString());
		}
		return mRoutePlanResult;
	}

	public override RoutePlanResult ReplanFromPoint(Vector3 fromPt)
	{
		if (IsDestObjectInvalid())
		{
			return mRoutePlanResult;
		}
		if (Sims3.SimIFace.Route.AboutToPlanCallback != null)
		{
			Sims3.SimIFace.Route.AboutToPlanCallback(this, "ReplanFromPoint", PlanResult.mDestination);
		}
		mRoutePlanResult = Route_ReplanFromPosition(mHandleWrapper.Handle, fromPt);
		if (mRoutePlanResult.Succeeded())
		{
			GetPathStartPoint(0u, ref mCurrentStartPoint);
			mPlanStartPoint = mCurrentStartPoint;
		}
		else
		{
			mCurrentStartPoint = Vector3.Invalid;
			mPlanStartPoint = fromPt;
		}
		if (Sims3.SimIFace.Route.PostPlanCallback != null)
		{
			Sims3.SimIFace.Route.PostPlanCallback(this, "ReplanFromPoint", mRoutePlanResult.ToString());
		}
		return mRoutePlanResult;
	}

	public override bool IsPointRoutable(Vector3 worldPos)
	{
		return Route_IsPointRoutable(mHandleWrapper.Handle, worldPos);
	}

	public override uint GetNumSegments()
	{
		return Route_GetNumSegments(mHandleWrapper.Handle);
	}

	public override uint GetSegmentIdAtIndex(uint segmentIndex)
	{
		return Route_GetSegmentIdAtIndex(mHandleWrapper.Handle, segmentIndex);
	}

	public override uint Split(uint segmentIndex)
	{
		return Route_Split(mHandleWrapper.Handle, segmentIndex);
	}

	public override uint Append(Sims3.SimIFace.Route routeOther)
	{
		return Append(routeOther, preserveSegments: true);
	}

	public override uint Append(Sims3.SimIFace.Route routeOther, bool preserveSegments)
	{
		routeOther.TransferCallbacksTo(this);
		MergeInPlanResult(routeOther.PlanResult);
		return Route_Append(mHandleWrapper.Handle, ((Route)routeOther).mHandleWrapper.Handle, preserveSegments);
	}

	public override uint Append(Vector3 endSegment)
	{
		return Route_AppendSegment(mHandleWrapper.Handle, endSegment);
	}

	public override void Replace(uint segmentId, Sims3.SimIFace.Route routeOther)
	{
		routeOther.TransferCallbacksTo(this);
		Route_Replace(mHandleWrapper.Handle, segmentId, ((Route)routeOther).mHandleWrapper.Handle);
	}

	public override void Merge(uint beginSegmentId, uint endSegmentId)
	{
		Route_Merge(mHandleWrapper.Handle, beginSegmentId, endSegmentId);
	}

	public override void Truncate(uint beginSegmentId)
	{
		Route_Truncate(mHandleWrapper.Handle, beginSegmentId);
	}

	public override void Tesselate(float maximumSegmentLength)
	{
		Route_Tesselate(mHandleWrapper.Handle, maximumSegmentLength);
	}

	public override uint GetSegmentAtDistanceBeforeEnd(float fDistance, bool bCreate)
	{
		return Route_GetSegmentAtDistanceBeforeEnd(mHandleWrapper.Handle, fDistance, bCreate);
	}

	public override void CreateSegmentAtDistanceBeforeEndOfRoute(float fDistance)
	{
		Route_CreateSegmentAtDistanceBeforeEndOfRoute(mHandleWrapper.Handle, fDistance);
	}

	public override uint GetSegmentAtDistanceBeforeSegment(uint beginSegmentId, float fDistance, bool bCreate)
	{
		return Route_GetSegmentAtDistanceBeforeSegment(mHandleWrapper.Handle, beginSegmentId, fDistance, bCreate);
	}

	public override bool GetSegmentStartPoint(uint segment, out Vector3 pt)
	{
		pt = Vector3.Invalid;
		return Route_GetSegmentStartPoint(mHandleWrapper.Handle, segment, ref pt);
	}

	public override bool GetSegmentEndPoint(uint segment, out Vector3 pt)
	{
		pt = Vector3.Invalid;
		return Route_GetSegmentEndPoint(mHandleWrapper.Handle, segment, ref pt);
	}

	public override bool GetSegmentStartDirection(uint segment, out Vector3 dir)
	{
		dir = Vector3.Invalid;
		return Route_GetSegmentStartDirection(mHandleWrapper.Handle, segment, ref dir);
	}

	public override bool GetSegmentEndDirection(uint segment, out Vector3 dir)
	{
		dir = Vector3.Invalid;
		return Route_GetSegmentEndDirection(mHandleWrapper.Handle, segment, ref dir);
	}

	public override float GetDistanceBetweenSegments(uint startSegmentId, uint endSegmentID)
	{
		return Route_GetDistanceBetweenSegments(mHandleWrapper.Handle, startSegmentId, endSegmentID);
	}

	public override uint GetLastCompletedSegment()
	{
		return Route_GetLastCompletedSegment(mHandleWrapper.Handle);
	}

	public override uint GetCurrentSegment()
	{
		uint num = GetLastCompletedSegment() + 1;
		uint numSegments = GetNumSegments();
		if (num >= numSegments)
		{
			num = numSegments - 1;
		}
		return num;
	}

	public override uint GetNumInterestPoints()
	{
		return Route_GetNumInterestPoints(mHandleWrapper.Handle);
	}

	public override RouteInterestPoint GetInterestPointAtIndex(uint interestPointIndex)
	{
		return Route_GetInterestPointAtIndex(mHandleWrapper.Handle, interestPointIndex);
	}

	public override ObjectGuid[] FindObstaclesForSim(IScriptProxy simObj)
	{
		ulong[] array = Route_FindObstaclesForSimAlongRoute(simObj.ObjectId.Value, mHandleWrapper.Handle);
		ObjectGuid[] array2;
		if (array != null)
		{
			int num = array.Length;
			array2 = new ObjectGuid[num];
			for (int i = 0; i < num; i++)
			{
				array2[i].Value = array[i];
			}
		}
		else
		{
			array2 = new ObjectGuid[0];
		}
		return array2;
	}

	public override bool Start(RouteAnimationSpec animSpec, RouteStartFlags routeStartFlags)
	{
		return Route_BeginFollowingRouteAnimationSpec(mHandleWrapper.Handle, animSpec, (uint)routeStartFlags);
	}

	public override bool Start(RouteAnimationSpec animSpec, uint[] slaveAnimSpecsPacked, ulong[] slaveRoutingObjects, bool bSlavesRoute, RouteStartFlags routeStartFlags)
	{
		return Route_BeginFollowingRouteAnimationSpecMult(mHandleWrapper.Handle, animSpec, slaveAnimSpecsPacked, slaveRoutingObjects, bSlavesRoute, (uint)routeStartFlags);
	}

	public override bool SubstitutePathsFromRoute(Sims3.SimIFace.Route r)
	{
		if (!(r is Route route))
		{
			return false;
		}
		bool flag = Route_SubstitutePathsFromRoute(mHandleWrapper.Handle, route.mHandleWrapper.Handle);
		if (flag)
		{
			mDestObjId = route.mDestObjId;
			mDestinationPoint = route.mDestinationPoint;
			mbDestObjInvalid = route.mbDestObjInvalid;
		}
		return flag;
	}

	public override bool Stop(StopMode stopMode)
	{
		return Route_StopFollowingRoute(mHandleWrapper.Handle, (int)stopMode);
	}

	public override void UpdateRouteAnimationSpec(ObjectGuid simObjId, RouteAnimationSpec rSpec)
	{
		Route_UpdateRouteAnimationSpec(mHandleWrapper.Handle, simObjId.Value, rSpec);
	}

	public override void UpdateRouteAnimationSpec(ObjectGuid simObjId, RouteAnimationSpec rSpec, uint[] slaveAnimSpecsPacked, ulong[] slaveRoutingObjects)
	{
		Route_UpdateRouteAnimationSpecMult(mHandleWrapper.Handle, simObjId.Value, rSpec, slaveAnimSpecsPacked, slaveRoutingObjects);
	}

	public override uint GetNumPaths()
	{
		return Route_GetNumPaths(mHandleWrapper.Handle);
	}

	public override void SmoothenSubPathConnections()
	{
		Route_SmoothenSubPathConnections(mHandleWrapper.Handle);
	}

	public override void SubdividePathsWithSelfIntersections()
	{
		Route_SubdividePathsWithSelfIntersections(mHandleWrapper.Handle);
	}

	public override bool SelfIntersectionTest()
	{
		return Route_SelfIntersectionTest(mHandleWrapper.Handle);
	}

	public override PathData GetPathData(uint pathIndex)
	{
		return Route_GetPathData(mHandleWrapper.Handle, pathIndex);
	}

	public override void SetPathData(ref PathData pathData)
	{
		Route_SetPathData(mHandleWrapper.Handle, ref pathData);
	}

	public override void PopPath()
	{
		Route_PopPath(mHandleWrapper.Handle);
	}

	public override void ClearPaths()
	{
		Route_ClearRoutePaths(mHandleWrapper.Handle);
	}

	public override void ResetCurrentPath()
	{
		Route_ResetCurrentPath(mHandleWrapper.Handle);
	}

	public override void InsertRouteSubPathsAtIndex(uint pathIndex, Sims3.SimIFace.Route r)
	{
		Route_InsertRouteSubPathsAtIndex(mHandleWrapper.Handle, pathIndex, r.RouteHandle);
	}

	public override bool InsertCustomPathAtIndex(uint pathIndex, Vector3[] points, bool bCyclic, bool bSetRouteDestination, PathType pathType)
	{
		float[] points2 = new float[3 * points.Length];
		for (uint num = 0u; num < points.Length; num++)
		{
			points2[3 * num] = points[num].x;
			points2[3 * num + 1] = points[num].y;
			points2[3 * num + 2] = points[num].z;
		}
		return Route_InsertCustomPathAtIndex(mHandleWrapper.Handle, pathIndex, ref points2, bCyclic, bSetRouteDestination, (uint)pathType);
	}

	public override void GetPathStartPoint(uint pathIndex, ref Vector3 outPosition)
	{
		Route_GetPathStartPoint(mHandleWrapper.Handle, pathIndex, ref outPosition);
	}

	public override void GetPathEndPoint(uint pathIndex, ref Vector3 outPosition)
	{
		Route_GetPathEndPoint(mHandleWrapper.Handle, pathIndex, ref outPosition);
	}

	public override void GetPathStartDirection(uint pathIndex, ref Vector3 outDirection)
	{
		Route_GetPathStartDirection(mHandleWrapper.Handle, pathIndex, ref outDirection);
	}

	public override void GetPathEndDirection(uint pathIndex, ref Vector3 outDirection)
	{
		Route_GetPathEndDirection(mHandleWrapper.Handle, pathIndex, ref outDirection);
	}

	public override float GetPathLength(uint pathIndex)
	{
		return Route_GetPathLength(mHandleWrapper.Handle, pathIndex);
	}

	public override float GetRouteLength()
	{
		return Route_GetRouteLength(mHandleWrapper.Handle);
	}

	public override uint GetNumNodes()
	{
		return Route_GetNumNodes(mHandleWrapper.Handle);
	}

	public override Vector3 GetPointAtDistanceOnPathway(float dist, ref Vector3 returnTangent, ref int nodeIndex)
	{
		Vector3 point = Vector3.Zero;
		Route_GetPointAtDistanceOnPathway(mHandleWrapper.Handle, dist, ref point, ref returnTangent, ref nodeIndex);
		return point;
	}

	public override Vector3 GetPointAtDistanceOnRoute(float dist, ref Vector3 returnTangent, ref int nodeIndex)
	{
		Vector3 point = Vector3.Zero;
		Route_GetPointAtDistanceOnRoute(mHandleWrapper.Handle, dist, ref point, ref returnTangent, ref nodeIndex);
		return point;
	}

	public override void SetPathEndOrientation(uint pathIndex, Matrix44 orientationMatrix)
	{
		Route_SetPathEndOrientation(mHandleWrapper.Handle, pathIndex, orientationMatrix);
	}

	public override void SetLoopStart(int startPathIndex)
	{
		Route_SetLoopStart(mHandleWrapper.Handle, startPathIndex);
	}

	public override bool IsLoop()
	{
		return Route_IsLoop(mHandleWrapper.Handle);
	}

	public override float GetEstimatedTravelTime(uint pathIndex, ObjectGuid simObjID, RouteAnimationSpec animSpec)
	{
		return Route_GetEstimatedTravelTime(mHandleWrapper.Handle, pathIndex, simObjID.Value, animSpec);
	}

	public override Vector3 GetApproximateOriginalDestination()
	{
		return mDestinationPoint;
	}

	public override void MergeInPlanResult(RoutePlanResult planResult)
	{
		mRoutePlanResult.MergeIn(planResult);
	}

	public override void RegisterCallback(RouteCallback callback, RouteCallbackType type, RouteCallbackCondition cond)
	{
		if (callback != null)
		{
			RouteCallbacks.Add(new RouteCallbackEntry(callback, type, cond));
		}
	}

	public override void UnregisterCallback(RouteCallback callback)
	{
		List<RouteCallbackEntry> routeCallbacks = RouteCallbacks;
		int num = 0;
		while (num < routeCallbacks.Count)
		{
			if (routeCallbacks[num].Callback == callback)
			{
				routeCallbacks.RemoveAt(num);
			}
			else
			{
				num++;
			}
		}
	}

	public override void TransferCallbacksTo(Sims3.SimIFace.Route routeOther)
	{
		List<RouteCallbackEntry> routeCallbacks = RouteCallbacks;
		List<RouteCallbackEntry> routeCallbacks2 = routeOther.RouteCallbacks;
		foreach (RouteCallbackEntry item in routeCallbacks)
		{
			routeCallbacks2.Add(item);
		}
	}

	public override bool InsertPortalSubPathAtIndex(uint pathIndex, ObjectGuid portalObjectId)
	{
		return Route_InsertPortalSubPathAtIndex(mHandleWrapper.Handle, pathIndex, portalObjectId);
	}
}
