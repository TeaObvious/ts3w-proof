// Original PC 1.67 SimIFace.dll; actual ILSpy type decompilation.
// Analyst: use the paired original IL for exact arithmetic, option constants and method identity.
using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
public struct RoutePlanResult
{
	public RoutePlanResultType mType;

	public uint mStartSlotNameHash;

	public uint mDestinationTag;

	public uint mDestSlotNameHash;

	public Vector3 mDestination;

	public float mDistanceTotal;

	public ulong mBlockerObjectId;

	public RouteBlockerType mBlockerType;

	public Vector3 mBlockerLocation;

	public uint mNumCandidatePointsGenerated;

	public uint mNumAcceptedPoints;

	public uint mNumRejectedPoints;

	public void MergeIn(RoutePlanResult appendPlanResult)
	{
		mBlockerLocation = appendPlanResult.mBlockerLocation;
		mBlockerObjectId = appendPlanResult.mBlockerObjectId;
		mBlockerType = appendPlanResult.mBlockerType;
		mDestination = appendPlanResult.mDestination;
		mDestSlotNameHash = appendPlanResult.mDestSlotNameHash;
		mDistanceTotal += appendPlanResult.mDistanceTotal;
		if (mType == RoutePlanResultType.Succeeded)
		{
			mType = appendPlanResult.mType;
		}
	}

	public override string ToString()
	{
		return mType.ToString();
	}

	public bool Succeeded()
	{
		return mType == RoutePlanResultType.Succeeded;
	}
}
