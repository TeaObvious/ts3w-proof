using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class Objects : IObjects
{
	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Objects_IsValid(ulong id);

	[DllImport("Sims3Common")]
	private static extern Matrix44 Objects_GetTransform(ulong id);

	[DllImport("Sims3Common")]
	private static extern void Objects_SetTransform(ulong id, Matrix44 transform);

	[DllImport("Sims3Common")]
	private static extern BoundingBox Objects_GetBoundingBox(ulong id);

	[DllImport("Sims3Common")]
	private static extern Vector3 Objects_GetDisplayPosition(ulong id);

	[DllImport("Sims3Common")]
	private static extern Vector3 Objects_GetPosition(ulong id);

	[DllImport("Sims3Common")]
	private static extern void Objects_SetPosition(ulong id, Vector3 position);

	[DllImport("Sims3Common")]
	private static extern void Objects_SetRotation(ulong id, float angle);

	[DllImport("Sims3Common")]
	private static extern Vector3 Objects_GetForward(ulong id);

	[DllImport("Sims3Common")]
	private static extern void Objects_SetForward(ulong id, Vector3 forward);

	[DllImport("Sims3Common")]
	private static extern void Objects_DoPreLeavingValidSpatialConfiguration(ulong id);

	[DllImport("Sims3Common")]
	private static extern void Objects_DoPostReachingValidSpatialConfiguration(ulong id);

	[DllImport("Sims3Common")]
	private static extern float Objects_GetHeightAboveFloor(ulong id);

	[DllImport("Sims3Common")]
	private static extern int Objects_GetLevel(ulong id);

	[DllImport("Sims3Common")]
	private static extern int Objects_GetRoomId(ulong id);

	[DllImport("Sims3Common")]
	private static extern ulong Objects_GetLotId(ulong id);

	[DllImport("Sims3Common")]
	private static extern void Objects_GetLocation(ulong id, out ulong lotId, out int level, out int roomId);

	[DllImport("Sims3Common")]
	private static extern void Objects_EnableDropShadow(ulong id, bool bEnable);

	[DllImport("Sims3Common")]
	private static extern ulong Objects_Clone(ulong id);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Objects_IsVisibleForLOS(ulong objId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Objects_SetVisibleForLOS(ulong objId, bool visible);

	public Objects()
	{
		AppDomain.CurrentDomain.SetData("Objects", this);
	}

	public bool IsValid(ObjectGuid id)
	{
		return Objects_IsValid(id.Value);
	}

	public Matrix44 GetTransform(ObjectGuid id)
	{
		return Objects_GetTransform(id.Value);
	}

	public void SetTransform(ObjectGuid id, Matrix44 transform)
	{
		Objects_SetTransform(id.Value, transform);
	}

	public BoundingBox GetBoundingBox(ObjectGuid id)
	{
		return Objects_GetBoundingBox(id.Value);
	}

	public Vector3 GetDisplayPosition(ObjectGuid id)
	{
		return Objects_GetDisplayPosition(id.Value);
	}

	public Vector3 GetPosition(ObjectGuid id)
	{
		return Objects_GetPosition(id.Value);
	}

	public void SetPosition(ObjectGuid id, Vector3 position)
	{
		Objects_SetPosition(id.Value, position);
	}

	public void SetRotation(ObjectGuid id, float angle)
	{
		Objects_SetRotation(id.Value, angle);
	}

	public Vector3 GetForward(ObjectGuid id)
	{
		return Objects_GetForward(id.Value);
	}

	public void SetForward(ObjectGuid id, Vector3 forward)
	{
		Objects_SetForward(id.Value, forward);
	}

	public void DoPreLeavingValidSpatialConfiguration(ObjectGuid id)
	{
		Objects_DoPreLeavingValidSpatialConfiguration(id.Value);
	}

	public void DoPostReachingValidSpatialConfiguration(ObjectGuid id)
	{
		Objects_DoPostReachingValidSpatialConfiguration(id.Value);
	}

	public float GetHeightAboveFloor(ObjectGuid id)
	{
		return Objects_GetHeightAboveFloor(id.Value);
	}

	public int GetLevel(ObjectGuid id)
	{
		return Objects_GetLevel(id.Value);
	}

	public int GetRoomId(ObjectGuid id)
	{
		return Objects_GetRoomId(id.Value);
	}

	public ulong GetLotId(ObjectGuid id)
	{
		return Objects_GetLotId(id.Value);
	}

	public void GetLocation(ObjectGuid id, out ulong lotId, out int level, out int roomId)
	{
		Objects_GetLocation(id.Value, out lotId, out level, out roomId);
	}

	public void EnableDropShadow(ObjectGuid id, bool bEnable)
	{
		Objects_EnableDropShadow(id.Value, bEnable);
	}

	public ObjectGuid Clone(ObjectGuid id)
	{
		return new ObjectGuid(Objects_Clone(id.Value));
	}

	public bool IsVisibleForLOS(ObjectGuid objId)
	{
		return Objects_IsVisibleForLOS(objId.mValue);
	}

	public bool SetVisibleForLOS(ObjectGuid objId, bool visible)
	{
		return Objects_SetVisibleForLOS(objId.mValue, visible);
	}
}
