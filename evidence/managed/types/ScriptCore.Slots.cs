using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class Slots : ISlots
{
	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U1)]
	private static extern bool Slots_EnableSlotImpl(ulong handle, uint slotNameHash, bool enable);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U1)]
	private static extern bool Slots_IsSlotEnabledImpl(ulong handle, uint slotNameHash);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 Slots_GetPositionOfSlotImpl(ulong scriptHandle, uint slotNameHash, uint ageGenderSpecies, [MarshalAs(UnmanagedType.U1)] bool isExitSlot);

	[DllImport("Sims3Common.dll")]
	private static extern Matrix44 Slots_GetMatrixOfSlotImpl(ulong scriptHandle, uint slotNameHash);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)]
	private static extern uint[] Slots_GetContainmentSlotNamesImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	private static extern int Slots_AttachToSlotImpl(ulong objectId, ulong parentId, uint slotNameHash, [MarshalAs(UnmanagedType.U1)] bool occupySlot, [MarshalAs(UnmanagedType.U1)] bool forceBindPose);

	[DllImport("Sims3Common.dll")]
	private static extern int Slots_AttachToSlotWithOffsetImpl(ulong objectId, ulong parentId, uint slotNameHash, [MarshalAs(UnmanagedType.U1)] bool occupySlot, [MarshalAs(UnmanagedType.U1)] bool forceBindPose, ref Vector3 trans, ref Vector3 axis, float angle);

	[DllImport("Sims3Common.dll")]
	private static extern int Slots_AttachToBoneWithOffsetImpl(ulong objectId, ulong parentId, uint boneNameHash, [MarshalAs(UnmanagedType.U1)] bool occupySlot, [MarshalAs(UnmanagedType.U1)] bool forceBindPose, ref Vector3 trans, ref Vector3 axis, float angle);

	[DllImport("Sims3Common.dll")]
	private static extern int Slots_CanAttachToSlotImpl(ulong objectId, ulong parentId, uint slotNameHash, [MarshalAs(UnmanagedType.U1)] bool occupySlot, [MarshalAs(UnmanagedType.U1)] bool forceBindPose);

	[DllImport("Sims3Common.dll")]
	private static extern int Slots_CanAttachToSlotWithOffsetImpl(ulong objectId, ulong parentId, uint slotNameHash, [MarshalAs(UnmanagedType.U1)] bool occupySlot, [MarshalAs(UnmanagedType.U1)] bool forceBindPose, ref Vector3 trans, ref Vector3 axis, float angle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U1)]
	private static extern bool Slots_DetachFromParentImpl(ulong objectId);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Slots_GetParentIdImpl(ulong handle);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Slots_GetContainedObjectImpl(ulong handle, uint slotNameHash);

	[DllImport("Sims3Common.dll")]
	private static extern uint Slots_GetParentSlotImpl(ulong handle, [In][Out][MarshalAs(UnmanagedType.I1)] ref bool connectToBone);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI4)]
	private static extern uint[] Slots_GetRoutingSlotNamesImpl(ulong scriptHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)]
	private static extern ulong[] Slots_GetChildrenImpl(ulong scriptHandle, uint slotNameHash);

	public Slots()
	{
		AppDomain.CurrentDomain.SetData("Slots", this);
	}

	public bool EnableSlot(ObjectGuid handle, uint slotNameHash)
	{
		return Slots_EnableSlotImpl(handle.mValue, slotNameHash, enable: true);
	}

	public bool DisableSlot(ObjectGuid handle, uint slotNameHash)
	{
		return Slots_EnableSlotImpl(handle.mValue, slotNameHash, enable: false);
	}

	public bool IsSlotEnabled(ObjectGuid handle, uint slotNameHash)
	{
		return Slots_IsSlotEnabledImpl(handle.mValue, slotNameHash);
	}

	public Vector3 GetPositionOfSlot(ObjectGuid handle, uint slotNameHash, uint ageGenderSpecies, bool isExitSlot)
	{
		return Slots_GetPositionOfSlotImpl(handle.mValue, slotNameHash, ageGenderSpecies, isExitSlot);
	}

	public Matrix44 GetMatrixOfSlot(ObjectGuid handle, uint slotNameHash)
	{
		return Slots_GetMatrixOfSlotImpl(handle.mValue, slotNameHash);
	}

	public TransformParentingReturnCode AttachToSlot(ObjectGuid objectId, ObjectGuid parentId, uint slotNameHash, bool occupySlot, bool forceBindPose)
	{
		return (TransformParentingReturnCode)Slots_AttachToSlotImpl(objectId.Value, parentId.Value, slotNameHash, occupySlot, forceBindPose);
	}

	public TransformParentingReturnCode AttachToSlot(ObjectGuid objectId, ObjectGuid parentId, uint slotNameHash, bool occupySlot, bool forceBindPose, ref Vector3 trans, ref Vector3 axis, float angle)
	{
		return (TransformParentingReturnCode)Slots_AttachToSlotWithOffsetImpl(objectId.Value, parentId.Value, slotNameHash, occupySlot, forceBindPose, ref trans, ref axis, angle);
	}

	public TransformParentingReturnCode AttachToBone(ObjectGuid objectId, ObjectGuid parentId, uint boneNameHash, bool occupySlot, bool forceBindPose, ref Vector3 trans, ref Vector3 axis, float angle)
	{
		return (TransformParentingReturnCode)Slots_AttachToBoneWithOffsetImpl(objectId.Value, parentId.Value, boneNameHash, occupySlot, forceBindPose, ref trans, ref axis, angle);
	}

	public TransformParentingReturnCode CanAttachToSlot(ObjectGuid objectId, ObjectGuid parentId, uint slotNameHash, bool occupySlot, bool forceBindPose)
	{
		return (TransformParentingReturnCode)Slots_CanAttachToSlotImpl(objectId.Value, parentId.Value, slotNameHash, occupySlot, forceBindPose);
	}

	public TransformParentingReturnCode CanAttachToSlot(ObjectGuid objectId, ObjectGuid parentId, uint slotNameHash, bool occupySlot, bool forceBindPose, ref Vector3 trans, ref Vector3 axis, float angle)
	{
		return (TransformParentingReturnCode)Slots_CanAttachToSlotWithOffsetImpl(objectId.Value, parentId.Value, slotNameHash, occupySlot, forceBindPose, ref trans, ref axis, angle);
	}

	public bool DetachFromSlot(ObjectGuid objectId)
	{
		return Slots_DetachFromParentImpl(objectId.Value);
	}

	public ObjectGuid GetParentId(ObjectGuid handle)
	{
		return new ObjectGuid(Slots_GetParentIdImpl(handle.mValue));
	}

	public ObjectGuid GetContainedObject(ObjectGuid handle, uint slotNameHash)
	{
		return new ObjectGuid(Slots_GetContainedObjectImpl(handle.mValue, slotNameHash));
	}

	public Slot GetParentSlot(ObjectGuid handle, ref bool connectToBone)
	{
		return (Slot)Slots_GetParentSlotImpl(handle.mValue, ref connectToBone);
	}

	public uint[] GetContainmentSlotNames(ObjectGuid scriptHandle)
	{
		return Slots_GetContainmentSlotNamesImpl(scriptHandle.mValue);
	}

	public uint[] GetRoutingSlotNames(ObjectGuid scriptHandle)
	{
		return Slots_GetRoutingSlotNamesImpl(scriptHandle.mValue);
	}

	public ulong[] GetChildren(ObjectGuid scriptHandle, uint slotNameHash)
	{
		return Slots_GetChildrenImpl(scriptHandle.mValue, slotNameHash);
	}
}
