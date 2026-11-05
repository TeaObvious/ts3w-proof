// Original PC 1.67 SimIFace.dll; complete type Sims3.SimIFace.PortalRoutingSpec.
// Analyst annotations describe static contracts; IL remains authoritative for decompiler artifacts.

using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
public struct PortalRoutingSpec(ObjectGuid stairId, uint laneNdx, uint slotBegin, uint slotEnd, Vector3 posBegin, Quaternion orientBegin, Vector3 posEnd, Quaternion orientEnd, uint updown)
{
	public ulong mPortalObjID = stairId.Value;

	public uint mnDirection = updown;

	public uint mPortalLaneIndex = laneNdx;

	public uint mPortalSlotBegin = slotBegin;

	public uint mPortalSlotEnd = slotEnd;

	public Quaternion mBeginOrient = orientBegin;

	public Quaternion mEndOrient = orientEnd;

	public Vector3 mBeginPosition = posBegin;

	public Vector3 mEndPosition = posEnd;
}
