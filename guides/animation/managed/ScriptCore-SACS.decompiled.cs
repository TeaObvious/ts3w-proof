// Decompiled from original ScriptCore.dll PC 1.67
// Diagnostic reference only; not source code for contribution.
using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.SACS;

namespace ScriptCore;

[Persistable(FormatterType = typeof(SACSFormatter))]
public sealed class SACS : CallbackObject, ISacsProxy
{
	internal static SACS Instance => (SACS)AppDomain.CurrentDomain.GetData("SacsProxy");

	[Persistable(false)]
	public event VoidEventHandler PreSave;

	[DllImport("Sims3Common.dll")]
	private static extern uint SACS_AcquireDriverImpl(ulong hostScriptObjectId, ulong instanceId, uint groupId, uint typeId, int priority, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	private static extern uint SACS_AcquireDriverNoYieldImpl(ulong hostScriptObjectId, ulong instanceId, uint groupId, uint typeId, int priority);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_ReleaseDriverImpl(uint driverHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SACS_IsEventQueueValidImpl(uint driverHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_SetEventQueueImpl(uint driverHandle, uint queueHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_SetActorImpl(uint driverHandle, uint actorHash, ulong actorObjectId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SACS_HasActorImpl(uint driverHandle, uint actorHash);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_SetParamImpl(uint driverHandle, uint paramHash, uint valueHash);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_SetParamStringImpl(uint driverHandle, uint paramHash, [MarshalAs(UnmanagedType.LPWStr)] string val);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_SetParamCompositeImpl(uint driverHandle, [MarshalAs(UnmanagedType.LPWStr)] string paramPrefix, [MarshalAs(UnmanagedType.LPWStr)] string paramName, uint valueHash);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_SetParamCompositeStringValImpl(uint driverHandle, [MarshalAs(UnmanagedType.LPWStr)] string paramPrefix, [MarshalAs(UnmanagedType.LPWStr)] string paramName, [MarshalAs(UnmanagedType.LPWStr)] string value);

	[DllImport("Sims3Common.dll")]
	private static extern uint SACS_GetParamImpl(uint driverHandle, uint paramHash);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SACS_GetParamStringImpl(uint driverHandle, uint paramHash);

	[DllImport("Sims3Common.dll")]
	private static extern uint SACS_GetNumParamsImpl(uint driverHandle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SACS_GetParamNameImpl(uint driverHandle, uint index);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SACS_GetDebugStringImpl(ulong scriptObjectId);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_EnterStateImpl(uint driverHandle, uint actorHash, uint stateHash);

	[DllImport("Sims3Common.dll")]
	private static extern ResultCodes SACS_RequestStateImpl(uint driverHandle, uint actorHash, uint stateHash, DriverRequestFlags flags, uint simTickTimeout, uint bridgeDriverHandle, uint bridgeActorHash);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SACS_CanPauseImpl(uint driverHandle, uint actorHash);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool SACS_PauseImpl(uint driverHandle, uint actorHash);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_ContinueImpl(uint driverHandle, uint actorHash);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_UpdateEventFilterImpl(uint driverHandle, uint eventType, uint eventSubType, uint eventId, uint operation);

	[DllImport("Sims3Common.dll")]
	private static extern int SACS_GetActiveClipCountImpl(ulong objHandle, [MarshalAs(UnmanagedType.Interface)] Delegate callback);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.CustomMarshaler, MarshalType = "ScriptCore.StringFromVariantMarshaler")]
	private static extern string SACS_GetActiveClipInfoImpl(IntPtr clipInfoHandle, uint index, ref uint priority);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_DestroyClipInfoHandleImpl(IntPtr clipInfoHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint SACS_GetDefaultPriorityImpl(uint driverHandle);

	[DllImport("Sims3Common.dll")]
	private static extern int SACS_StopAllAnimationImpl(ObjectGuid objGuid);

	[DllImport("Sims3Common.dll")]
	private static extern int SACS_SetRigImpl(ObjectGuid objGuid, ResourceKey rigKey);

	[DllImport("Sims3Common.dll")]
	private static extern void SACS_SetClipInterruptibleImpl(ObjectGuid objGuid, uint priority, [MarshalAs(UnmanagedType.I1)] bool bInterruptible);

	public SACS()
	{
		AppDomain.CurrentDomain.SetData("SacsProxy", this);
		LoadSaveManager.Instance.ObjectGroupSaving += ObjectGroupSaving;
	}

	private void ObjectGroupSaving(IScriptObjectGroup group)
	{
		if (PreSave != null)
		{
			Delegate[] invocationList = PreSave.GetInvocationList();
			for (int i = 0; i < invocationList.Length; i++)
			{
				VoidEventHandler voidEventHandler = (VoidEventHandler)invocationList[i];
				voidEventHandler();
			}
		}
	}

	internal void OnPersistFormatterRead()
	{
		Init();
	}

	public uint AcquireDriver(bool allowYeild, ObjectGuid hostScriptObjectId, ResourceKey stateMachineKey, int priority)
	{
		uint num;
		if (allowYeild)
		{
			try
			{
				num = SACS_AcquireDriverImpl(hostScriptObjectId.Value, stateMachineKey.InstanceId, stateMachineKey.GroupId, stateMachineKey.TypeId, priority, CallbackDelegate);
			}
			catch
			{
				AbortCallbackResult();
				throw;
			}
			if (num == 4294967285u)
			{
				object callbackResult = GetCallbackResult();
				num = ((callbackResult != null) ? ((uint)callbackResult) : 4294967283u);
			}
		}
		else
		{
			num = SACS_AcquireDriverNoYieldImpl(hostScriptObjectId.Value, stateMachineKey.InstanceId, stateMachineKey.GroupId, stateMachineKey.TypeId, priority);
		}
		return num;
	}

	public void ReleaseDriver(uint driverHandle)
	{
		SACS_ReleaseDriverImpl(driverHandle);
	}

	public bool IsEventQueueValid(uint driverHandle)
	{
		return SACS_IsEventQueueValidImpl(driverHandle);
	}

	public void SetEventQueue(uint driverHandle, uint queueHandle)
	{
		SACS_SetEventQueueImpl(driverHandle, queueHandle);
	}

	public void SetActor(uint driverHandle, uint actorHash, ObjectGuid actorObjectId)
	{
		SACS_SetActorImpl(driverHandle, actorHash, actorObjectId.Value);
	}

	public bool HasActor(uint driverHandle, uint actorHash)
	{
		return SACS_HasActorImpl(driverHandle, actorHash);
	}

	public void SetParam(uint driverHandle, uint paramHash, uint valueHash)
	{
		SACS_SetParamImpl(driverHandle, paramHash, valueHash);
	}

	public void SetParam(uint driverHandle, uint paramHash, string value)
	{
		SACS_SetParamStringImpl(driverHandle, paramHash, value);
	}

	public void SetParam(uint driverHandle, string paramPrefix, string paramName, string value)
	{
		SACS_SetParamCompositeStringValImpl(driverHandle, paramPrefix, paramName, value);
	}

	public void SetParam(uint driverHandle, string paramPrefix, string paramName, uint valueHash)
	{
		SACS_SetParamCompositeImpl(driverHandle, paramPrefix, paramName, valueHash);
	}

	public uint GetParam(uint driverHandle, uint paramHash)
	{
		return SACS_GetParamImpl(driverHandle, paramHash);
	}

	public string GetParamString(uint driverHandle, uint paramHash)
	{
		return SACS_GetParamStringImpl(driverHandle, paramHash);
	}

	public uint GetNumParams(uint driverHandle)
	{
		return SACS_GetNumParamsImpl(driverHandle);
	}

	public string GetParamNameByIndex(uint driverHandle, uint paramIndex)
	{
		return SACS_GetParamNameImpl(driverHandle, paramIndex);
	}

	public string GetDebugString(ulong scriptObjectId)
	{
		return SACS_GetDebugStringImpl(scriptObjectId);
	}

	public void EnterState(uint driverHandle, uint actorHash, uint stateHash)
	{
		SACS_EnterStateImpl(driverHandle, actorHash, stateHash);
	}

	public ResultCodes RequestState(bool yield, uint driverHandle, uint actorHash, uint stateHash, DriverRequestFlags flags, float wakeupTimeOffset, uint simTickTimeout, uint bridgeDriverHandle, uint bridgeActorHash)
	{
		ResultCodes result = SACS_RequestStateImpl(driverHandle, actorHash, stateHash, flags, simTickTimeout, bridgeDriverHandle, bridgeActorHash);
		if (yield)
		{
			object callbackResult = GetCallbackResult();
			if (callbackResult == null)
			{
				return ResultCodes.kGenericFailure;
			}
			return (ResultCodes)callbackResult;
		}
		return result;
	}

	public void Interrupt(uint driverHandle, uint actorHash)
	{
		throw new Exception("The method or operation is not implemented.");
	}

	public bool CanPause(uint driverHandle, uint actorHash)
	{
		return SACS_CanPauseImpl(driverHandle, actorHash);
	}

	public bool Pause(uint driverHandle, uint actorHash)
	{
		return SACS_PauseImpl(driverHandle, actorHash);
	}

	public void Continue(uint driverHandle, uint actorHash)
	{
		SACS_ContinueImpl(driverHandle, actorHash);
	}

	public void UpdateEventFilter(uint driverHandle, uint eventType, uint eventSubType, uint eventId, EventKeyOperation operation)
	{
		SACS_UpdateEventFilterImpl(driverHandle, eventType, eventSubType, eventId, (uint)operation);
	}

	public int GetActiveClipCount(ObjectGuid handle, out IntPtr clipsHandle)
	{
		clipsHandle = IntPtr.Zero;
		return 0;
	}

	public ClipInfo GetActiveClipInfo(IntPtr clipsHandle, uint clipIndex)
	{
		return null;
	}

	public void DestroyClipInfoHandle(IntPtr clipsHandle)
	{
	}

	public uint GetDefaultPriority(uint driverHandle)
	{
		return SACS_GetDefaultPriorityImpl(driverHandle);
	}

	public int StopAllAnimation(ObjectGuid objGuid)
	{
		return SACS_StopAllAnimationImpl(objGuid);
	}

	public int SetRig(ObjectGuid objGuid, ResourceKey rigKey)
	{
		return SACS_SetRigImpl(objGuid, rigKey);
	}

	public void SetClipInterruptible(ObjectGuid objGuid, AnimationPriority priority, bool bInterruptible)
	{
		SACS_SetClipInterruptibleImpl(objGuid, (uint)priority, bInterruptible);
	}

	protected override void OnAbortCallbackResult(object value)
	{
		if (value is uint num && num > 2 && num < 4294967283u)
		{
			ReleaseDriver(num);
		}
	}
}
