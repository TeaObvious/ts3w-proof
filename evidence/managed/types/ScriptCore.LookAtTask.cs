using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public class LookAtTask : ILookAtTask, IDisposable
{
	private uint mHandle = uint.MaxValue;

	private Delegate mHandleEventDelegate;

	public ulong TargetObjectId
	{
		get
		{
			return LookAt_GetTargetObjectIdImpl(HostHandle);
		}
		set
		{
			LookAt_SetTargetObjectIdImpl(HostHandle, value);
		}
	}

	public uint TargetSlotNameHash
	{
		get
		{
			return LookAt_GetTargetSlotNameHashImpl(HostHandle);
		}
		set
		{
			LookAt_SetTargetSlotNameHashImpl(HostHandle, value);
		}
	}

	public Vector3 TargetOffsetVector
	{
		get
		{
			return LookAt_GetTargetOffsetVectorImpl(HostHandle);
		}
		set
		{
			LookAt_SetTargetOffsetVectorImpl(HostHandle, value);
		}
	}

	public float LookTowardsSpeed
	{
		get
		{
			return MathUtils.Radian2Degree(LookAt_GetLookTowardsSpeedImpl(HostHandle));
		}
		set
		{
			LookAt_SetLookTowardsSpeedImpl(HostHandle, MathUtils.Degree2Radian(value));
		}
	}

	public float LookAwaySpeed
	{
		get
		{
			return MathUtils.Radian2Degree(LookAt_GetLookAwaySpeedImpl(HostHandle));
		}
		set
		{
			LookAt_SetLookAwaySpeedImpl(HostHandle, MathUtils.Degree2Radian(value));
		}
	}

	public bool IgnoreFrustum
	{
		get
		{
			return LookAt_GetIgnoreFrustumImpl(HostHandle);
		}
		set
		{
			LookAt_SetIgnoreFrustumImpl(HostHandle, value);
		}
	}

	public bool HoldAtJointLimits
	{
		get
		{
			return LookAt_GetHoldJointLimitsImpl(HostHandle);
		}
		set
		{
			LookAt_SetHoldJointLimitsImpl(HostHandle, value);
		}
	}

	public uint BlendInFrames
	{
		set
		{
			LookAt_SetBlendInFramesImpl(HostHandle, value);
		}
	}

	public Delegate EventHandler
	{
		set
		{
			LookAt_SetEventHandlerImpl(HostHandle, value);
			mHandleEventDelegate = value;
		}
	}

	public float RightTiltness
	{
		get
		{
			return MathUtils.Radian2Degree(LookAt_GetRightTiltnessImpl(HostHandle));
		}
		set
		{
			LookAt_SetRightTiltnessImpl(HostHandle, MathUtils.Degree2Radian(value));
		}
	}

	public float TorsoThreshold
	{
		get
		{
			return MathUtils.Radian2Degree(LookAt_GetTorsoThresholdImpl(HostHandle));
		}
		set
		{
			LookAt_SetTorsoThresholdImpl(HostHandle, MathUtils.Degree2Radian(value));
		}
	}

	public float TorsoPercent
	{
		get
		{
			return LookAt_GetTorsoPercentImpl(HostHandle);
		}
		set
		{
			LookAt_SetTorsoPercentImpl(HostHandle, value);
		}
	}

	public float AttenuatorPitch
	{
		get
		{
			return LookAt_GetAttenuatorPitchImpl(HostHandle);
		}
		set
		{
			LookAt_SetAttenuatorPitchImpl(HostHandle, value);
		}
	}

	public float AttenuatorYaw
	{
		get
		{
			return LookAt_GetAttenuatorYawImpl(HostHandle);
		}
		set
		{
			LookAt_SetAttenuatorYawImpl(HostHandle, value);
		}
	}

	public float LookTowardsCurveRate
	{
		get
		{
			return MathUtils.Radian2Degree(LookAt_GetLookTowardsCurveRateImpl(HostHandle));
		}
		set
		{
			LookAt_SetLookTowardsCurveRateImpl(HostHandle, MathUtils.Degree2Radian(value));
		}
	}

	private uint HostHandle
	{
		get
		{
			return mHandle;
		}
		set
		{
			mHandle = value;
		}
	}

	private bool IsHostHandleBad => mHandle == uint.MaxValue;

	[DllImport("Sims3Common.dll")]
	private static extern uint LookAt_CreateLookAtTaskImpl(ulong handle, int priority, int jointFilter);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_DestroyLookAtTaskImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool LookAt_EnableLookAtTaskImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_StopLookAtTaskImpl(uint handle, bool hardStop);

	[DllImport("Sims3Common.dll")]
	private static extern ulong LookAt_GetTargetObjectIdImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetTargetObjectIdImpl(uint handle, ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern uint LookAt_GetTargetSlotNameHashImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetTargetSlotNameHashImpl(uint handle, uint slotNameHash);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 LookAt_GetTargetOffsetVectorImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetTargetOffsetVectorImpl(uint handle, Vector3 offset);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetLookTowardsSpeedImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetLookTowardsSpeedImpl(uint handle, float speed);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetLookAwaySpeedImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetLookAwaySpeedImpl(uint handle, float speed);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool LookAt_GetIgnoreFrustumImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetIgnoreFrustumImpl(uint handle, bool ignoreFrustum);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool LookAt_GetHoldJointLimitsImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetHoldJointLimitsImpl(uint handle, bool holdJointLimits);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetBlendInFramesImpl(uint handle, uint blendInFrames);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetEventHandlerImpl(uint handle, [MarshalAs(UnmanagedType.Interface)] Delegate eventHandler);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetRightTiltnessImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetRightTiltnessImpl(uint handle, float tiltness);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetTorsoThresholdImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetTorsoThresholdImpl(uint handle, float torsoThreshold);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetTorsoPercentImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetTorsoPercentImpl(uint handle, float torsoPercent);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetAttenuatorPitchImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetAttenuatorPitchImpl(uint handle, float attenuatorPitch);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetAttenuatorYawImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetAttenuatorYawImpl(uint handle, float attenuatorYaw);

	[DllImport("Sims3Common.dll")]
	private static extern float LookAt_GetLookTowardsCurveRateImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern void LookAt_SetLookTowardsCurveRateImpl(uint handle, float lookTowardsCurveRate);

	public LookAtTask(IScriptProxy simObj, int priority, LookAtJointFilter jointFilter)
	{
		HostHandle = LookAt_CreateLookAtTaskImpl(simObj.ObjectId.Value, priority, (int)jointFilter);
	}

	~LookAtTask()
	{
		if (!IsHostHandleBad)
		{
			LookAt_DestroyLookAtTaskImpl(HostHandle);
			InvalidateHostHandle();
		}
	}

	public void Dispose()
	{
		if (!IsHostHandleBad)
		{
			LookAt_DestroyLookAtTaskImpl(HostHandle);
			InvalidateHostHandle();
		}
		GC.SuppressFinalize(this);
	}

	public bool EnableIt()
	{
		return LookAt_EnableLookAtTaskImpl(HostHandle);
	}

	public void StopIt(bool hardStop)
	{
		LookAt_StopLookAtTaskImpl(HostHandle, hardStop);
	}

	private void InvalidateHostHandle()
	{
		mHandle = uint.MaxValue;
	}
}
