using System;
using System.Runtime.InteropServices;
using System.Text;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class Audio : IAudio
{
	private const string kSoundArrayDelimiter = ",";

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Audio_InitWorldImpl();

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_ShutdownWorldImpl();

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_StartSoundImpl([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_StartSoundMP3Impl([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_StartSoundAtPositionImpl([MarshalAs(UnmanagedType.LPWStr)] string name, Vector3 position);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_CreateSoundImpl([MarshalAs(UnmanagedType.LPWStr)] string name);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Audio_StartSoundByIdImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Audio_SetSoundPropertyImpl(uint handle, uint key, float val);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_MuteAllObjectSoundsImpl(ulong objectHandle, bool bMute);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Audio_StopSoundImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_StartObjectSoundImpl(ulong objectHandle, [MarshalAs(UnmanagedType.LPWStr)] string name, bool loop);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_StartObjectSoundWithFlagsImpl(ulong objectHandle, [MarshalAs(UnmanagedType.LPWStr)] string name, uint flags);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_SoundFinishedCallbackImpl(uint soundId, [MarshalAs(UnmanagedType.Interface)] Delegate finishedCallback);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_StopObjectSoundImpl(ulong objectHandle, uint soundHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_StopAllObjectSoundImpl(ulong objectHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_PlayObjectPutSoundImpl(ulong objectHandle, ulong objectTargetHandle);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_PlayObjectGetSoundImpl(ulong objectHandle, ulong objectTargetHandle);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_SetEventModifiersImpl([MarshalAs(UnmanagedType.Interface)] Delegate simModifier, [MarshalAs(UnmanagedType.Interface)] Delegate skillModifier, [MarshalAs(UnmanagedType.Interface)] Delegate qualityModifier, [MarshalAs(UnmanagedType.Interface)] Delegate materialModifier);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_PauseGroupImpl(uint groupId, bool pause);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_StopGroupImpl(uint groupId, bool hardStop);

	[DllImport("Sims3Common.dll")]
	private static extern void Audio_EnableGroupImpl(uint groupId, bool enable);

	[DllImport("Sims3Common.dll")]
	private static extern uint Audio_StartSoundArrayImpl([MarshalAs(UnmanagedType.LPWStr)] string name, [MarshalAs(UnmanagedType.LPWStr)] string soundNames, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIds);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Audio_UpdateSoundArrayImpl(uint instanceId, [MarshalAs(UnmanagedType.LPWStr)] string soundNames, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] objIds);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Audio_StopSoundArrayImpl(uint instanceId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Audio_SetSoundArrayGainImpl(uint instanceId, float val);

	public Audio()
	{
		AppDomain.CurrentDomain.SetData("Audio", this);
	}

	public bool InitWorld()
	{
		return Audio_InitWorldImpl();
	}

	public void ShutdownWorld()
	{
		Audio_ShutdownWorldImpl();
	}

	public uint StartSound(string name)
	{
		return Audio_StartSoundImpl(name);
	}

	public uint StartSoundMP3(string name)
	{
		return Audio_StartSoundMP3Impl(name);
	}

	public uint CreateSound(string name)
	{
		return Audio_CreateSoundImpl(name);
	}

	public bool StartSoundById(uint handle)
	{
		return Audio_StartSoundByIdImpl(handle);
	}

	public bool StartSoundById(uint handle, Delegate finishedCallback)
	{
		if (handle != 0)
		{
			Audio_SoundFinishedCallbackImpl(handle, finishedCallback);
		}
		return Audio_StartSoundByIdImpl(handle);
	}

	public uint StartSound(string name, Delegate finishedCallback)
	{
		uint num = Audio_StartSoundImpl(name);
		if (num != 0)
		{
			Audio_SoundFinishedCallbackImpl(num, finishedCallback);
		}
		return num;
	}

	public uint StartSound(string name, Vector3 position)
	{
		return Audio_StartSoundAtPositionImpl(name, position);
	}

	public bool StopSound(uint handle)
	{
		if (handle == 0)
		{
			return true;
		}
		return Audio_StopSoundImpl(handle);
	}

	public bool SetSoundProperty(uint handle, uint key, float val)
	{
		return Audio_SetSoundPropertyImpl(handle, key, val);
	}

	public void MuteAllObjectSounds(ObjectGuid objectHandle, bool bMute)
	{
		Audio_MuteAllObjectSoundsImpl(objectHandle.Value, bMute);
	}

	public uint StartObjectSound(ObjectGuid objectHandle, string name, bool loop)
	{
		return Audio_StartObjectSoundImpl(objectHandle.Value, name, loop);
	}

	public uint StartObjectSound(ObjectGuid objectHandle, string name, Delegate finishedCallback)
	{
		uint num = Audio_StartObjectSoundImpl(objectHandle.Value, name, loop: false);
		if (num != 0)
		{
			Audio_SoundFinishedCallbackImpl(num, finishedCallback);
		}
		return num;
	}

	public uint StartObjectSoundWithFlags(ObjectGuid objectHandle, string name, uint flags)
	{
		return Audio_StartObjectSoundWithFlagsImpl(objectHandle.Value, name, flags);
	}

	public uint StartObjectSoundWithFlags(ObjectGuid objectHandle, string name, uint flags, Delegate finishedCallback)
	{
		uint num = Audio_StartObjectSoundWithFlagsImpl(objectHandle.Value, name, flags);
		if (num != 0)
		{
			Audio_SoundFinishedCallbackImpl(num, finishedCallback);
		}
		return num;
	}

	public void StopObjectSound(ObjectGuid objectHandle, uint soundHandle)
	{
		Audio_StopObjectSoundImpl(objectHandle.Value, soundHandle);
	}

	public void StopAllObjectSound(ObjectGuid objectHandle)
	{
		Audio_StopAllObjectSoundImpl(objectHandle.Value);
	}

	public void SetEventModifiers(Delegate simModifier, Delegate skillModifier, Delegate qualityModifier, Delegate materialModifier)
	{
		Audio_SetEventModifiersImpl(simModifier, skillModifier, qualityModifier, materialModifier);
	}

	public void PauseGroup(uint group, bool pause)
	{
		Audio_PauseGroupImpl(group, pause);
	}

	public void StopGroup(uint group, bool hardStop)
	{
		Audio_StopGroupImpl(group, hardStop);
	}

	public void EnableGroup(uint group, bool enable)
	{
		Audio_EnableGroupImpl(group, enable);
	}

	public uint PlayObjectPutSound(ObjectGuid srcObjectHandle, ObjectGuid targetObjectHandle)
	{
		return Audio_PlayObjectPutSoundImpl(srcObjectHandle.Value, targetObjectHandle.Value);
	}

	public uint PlayObjectGetSound(ObjectGuid srcObjectHandle, ObjectGuid targetObjectHandle)
	{
		return Audio_PlayObjectGetSoundImpl(srcObjectHandle.Value, targetObjectHandle.Value);
	}

	public uint PlayObjectPutOnFloorSound(ObjectGuid srcObjectHandle)
	{
		return Audio_PlayObjectPutSoundImpl(srcObjectHandle.Value, 0uL);
	}

	public uint PlayObjectGetFromFloorSound(ObjectGuid srcObjectHandle)
	{
		return Audio_PlayObjectGetSoundImpl(srcObjectHandle.Value, 0uL);
	}

	public uint StartSoundArray(string soundName, SoundSpec[] children)
	{
		StringBuilder soundNames = null;
		ulong[] objIds = null;
		if (!GetSoundSpecNameAndIds(children, out soundNames, out objIds))
		{
			return 0u;
		}
		return Audio_StartSoundArrayImpl(soundName, soundNames.ToString(), objIds);
	}

	public bool UpdateSoundArray(uint instanceId, SoundSpec[] children)
	{
		StringBuilder soundNames = null;
		ulong[] objIds = null;
		if (!GetSoundSpecNameAndIds(children, out soundNames, out objIds))
		{
			return false;
		}
		return Audio_UpdateSoundArrayImpl(instanceId, soundNames.ToString(), objIds);
	}

	public bool StopSoundArray(uint instanceId)
	{
		return Audio_StopSoundArrayImpl(instanceId);
	}

	public bool SetSoundArrayGain(uint instanceId, float val)
	{
		return Audio_SetSoundArrayGainImpl(instanceId, val);
	}

	private static bool GetSoundSpecNameAndIds(SoundSpec[] sounds, out StringBuilder soundNames, out ulong[] objIds)
	{
		if (sounds == null || sounds.Length == 0)
		{
			soundNames = null;
			objIds = null;
			return false;
		}
		soundNames = new StringBuilder();
		objIds = new ulong[sounds.Length];
		for (int i = 0; i < sounds.Length; i++)
		{
			soundNames.Append(sounds[i].Name);
			if (i < sounds.Length - 1)
			{
				soundNames.Append(",");
			}
			objIds[i] = sounds[i].ObjectId;
		}
		return true;
	}
}
