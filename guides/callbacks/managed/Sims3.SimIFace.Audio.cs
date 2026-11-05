using System;
using System.Runtime.InteropServices;

namespace Sims3.SimIFace;

[ComVisible(false)]
public sealed class Audio
{
	public enum StopReason
	{
		StopReasonCompleted,
		StopReasonAborted,
		StopReasonRequested,
		StopReasonRequestedInternal,
		StopReasonError,
		StopReasonMax
	}

	public enum StartFlags
	{
		kFlagNone,
		kFlagLooped,
		kFlagIgnoreMaxDistance
	}

	public const uint kPropertyGain = 635371784u;

	public const uint kPropertyPan = 1249339706u;

	public const uint kPropertyPanDistance = 1857529623u;

	public const uint kPropertyPanSize = 3464025749u;

	public const uint kPropertyPanTwist = 2765231627u;

	public const uint kPropertyPitch = 1908158473u;

	public const uint kPropertyPositionX = 84696423u;

	public const uint kPropertyPositionY = 84696422u;

	public const uint kPropertyPositionZ = 84696421u;

	public const uint kPropertyMinDistance = 258042738u;

	public const uint kPropertyMaxDistance = 56178448u;

	public const uint kPropertyRolloff = 604414023u;

	public const uint kPropertyStreamBufferSize = 1009471140u;

	public const uint kPropertyStreamBufferReadSize = 2956616964u;

	public const uint kPropertyIs3d = 315794644u;

	public const uint kPropertyIsLooped = 1842381336u;

	public const uint kPropertyIsVirtual = 3121824146u;

	public const uint kPropertyWetLevel = 1240164571u;

	public const uint kPropertyTimeInvariantPitch = 2193534944u;

	public const uint kPropertyLowPass = 1685747766u;

	public const uint kPropertyHighPass = 2724886111u;

	public const uint kPropertyFadeIn = 2561444246u;

	public const uint kPropertyFadeOut = 3903560121u;

	public const uint kPropertyPriority = 960462717u;

	public const uint kPropertyProbability = 2412327054u;

	public const uint kPropertyStartDelay = 703117816u;

	public const uint kPropertyDuration = 2985567545u;

	public const uint kPropertyPolyphony = 3136812281u;

	public const uint kPropertyPolyphonyMode = 133335756u;

	public const uint kPropertyRandomPitch = 1458029122u;

	public const uint kPropertyWetLevelCurve = 389818128u;

	public const uint kPropertyAttenuation = 508408299u;

	public const uint kPropertyAttenuationCurve = 1849500384u;

	public const uint kPropertyAtmosphericCurve = 3184102629u;

	public const uint kPropertyAtmosphericHiPassCurve = 2329731631u;

	public const uint kPropertyNoteNumber = 1726978746u;

	public const uint kPropertyNoteVelocity = 3839694872u;

	public const uint kPropertyNoteDuration = 215558313u;

	public const uint kPropertyHardStop = 573276166u;

	public const uint kPropertyGroups = 2092440117u;

	public const uint kPropertyAddGroups = 4119634110u;

	public const uint kPropertyRemoveGroups = 335820105u;

	public const uint kPropertySend = 803249283u;

	public const uint kPropertySeekTime = 351911414u;

	public const uint kPropertyPerformanceLevel = 1844806189u;

	public const uint kPropertySampleLength = 3528280831u;

	public const uint kPropertyEffectiveGain = 3268539769u;

	public const uint kPropertyAttenuatedGain = 1663420809u;

	public const uint kPropertyDacOutputSampleRate = 111374816u;

	public const uint kPropertyEmitterType = 1712374461u;

	public const uint kPropertyPickupIndex = 3978245845u;

	public const uint kPropertySamples = 1881069854u;

	public const uint kPropertyAggregate = 1513267406u;

	public const uint kPropertySymbols = 1261057060u;

	public const uint kPropertyCodec = 3120812237u;

	public const uint kPropertyIgnorePauseGain = 3520786242u;

	public const uint kPropertyPreFade = 1649929002u;

	public const uint kPropertyLoopPlaylist = 1007732665u;

	public const uint kPropertySamplePosition = 2302641270u;

	public const uint kPropertyPause = 3092587493u;

	public const uint kPropertyPrimitiveHashes = 3818827905u;

	public const uint kPropertyPrimitives = 1033938727u;

	public const uint kPropertyDopplerCurve = 2616997804u;

	public const uint kPropertySurroundOn = 4265367676u;

	public const uint kPropertyMuteAll = 2308878679u;

	public const uint kPropertyMinPerformanceLevel = 2991917395u;

	public const uint kPropertyDefaultToMaster = 1796648509u;

	public const uint kPropertyMaxGainChange = 3343044280u;

	public const uint kPropertyAge = 1218197346u;

	public const uint kPropertyPitchShiftModifier = 2006605812u;

	public const uint kPropertySkip = 822292684u;

	public const uint kPropertyRingModFreq = 1883072555u;

	public const uint kPropertyDelay = 357718954u;

	public const uint kPropertyFeedback = 4228153068u;

	public const uint kPropertyRequiresSeason = 3650521082u;

	public const uint kPropertyRequiresPrecipitation = 1247585054u;

	public const uint kPropertyRequiresWind = 3760220479u;

	private static IAudio gAudio;

	static Audio()
	{
		gAudio = (IAudio)AppDomain.CurrentDomain.GetData("Audio");
	}

	public static bool InitWorld()
	{
		return gAudio.InitWorld();
	}

	public static void ShutdownWorld()
	{
		gAudio.ShutdownWorld();
	}

	public static uint StartSound(string name)
	{
		return gAudio.StartSound(name);
	}

	public static uint StartSoundMP3(string name)
	{
		return gAudio.StartSoundMP3(name);
	}

	public static uint CreateSound(string name)
	{
		return gAudio.CreateSound(name);
	}

	public static bool StartSoundById(uint handle)
	{
		return gAudio.StartSoundById(handle);
	}

	public static bool StartSoundById(uint handle, Delegate finishedCallback)
	{
		return gAudio.StartSoundById(handle, finishedCallback);
	}

	public static uint StartSound(string name, Delegate finishedCallback)
	{
		return gAudio.StartSound(name, finishedCallback);
	}

	public static uint StartSound(string name, Vector3 position)
	{
		return gAudio.StartSound(name, position);
	}

	public static bool StopSound(uint handle)
	{
		return gAudio.StopSound(handle);
	}

	public static bool SetSoundProperty(uint handle, uint key, float val)
	{
		return gAudio.SetSoundProperty(handle, key, val);
	}

	public static void MuteAllSounds(ObjectGuid objectHandle, bool bMute)
	{
		gAudio.MuteAllObjectSounds(objectHandle, bMute);
	}

	public static uint StartObjectSound(ObjectGuid objectHandle, string name, bool loop)
	{
		return gAudio.StartObjectSound(objectHandle, name, loop);
	}

	public static uint StartObjectSound(ObjectGuid objectHandle, string name, Delegate finishedCallback)
	{
		return gAudio.StartObjectSound(objectHandle, name, finishedCallback);
	}

	public static uint StartObjectSoundWithFlags(ObjectGuid objectHandle, string name, uint flags)
	{
		return gAudio.StartObjectSoundWithFlags(objectHandle, name, flags);
	}

	public static uint StartObjectSoundWithFlags(ObjectGuid objectHandle, string name, uint flags, Delegate finishedCallback)
	{
		return gAudio.StartObjectSoundWithFlags(objectHandle, name, flags, finishedCallback);
	}

	public static void StopObjectSound(ObjectGuid objectHandle, uint soundHandle)
	{
		gAudio.StopObjectSound(objectHandle, soundHandle);
	}

	public static void StopAllObjectSound(ObjectGuid objectHandle)
	{
		gAudio.StopAllObjectSound(objectHandle);
	}

	public static void SetEventModifiers(Delegate simModifier, Delegate skillModifier, Delegate qualityModifier, Delegate materialModifier)
	{
		gAudio.SetEventModifiers(simModifier, skillModifier, qualityModifier, materialModifier);
	}

	public static void PauseGroup(uint group, bool pause)
	{
		gAudio.PauseGroup(group, pause);
	}

	public static void StopGroup(uint group, bool hardStop)
	{
		gAudio.StopGroup(group, hardStop);
	}

	public static void EnableGroup(uint group, bool enable)
	{
		gAudio.EnableGroup(group, enable);
	}

	public static uint PlayObjectPutSound(ObjectGuid srcObjectHandle, ObjectGuid targetObjectHandle)
	{
		return gAudio.PlayObjectPutSound(srcObjectHandle, targetObjectHandle);
	}

	public static uint PlayObjectGetSound(ObjectGuid srcObjectHandle, ObjectGuid targetObjectHandle)
	{
		return gAudio.PlayObjectGetSound(srcObjectHandle, targetObjectHandle);
	}

	public static uint PlayObjectPutOnFloorSound(ObjectGuid srcObjectHandle)
	{
		return gAudio.PlayObjectPutOnFloorSound(srcObjectHandle);
	}

	public static uint PlayObjectGetFromFloorSound(ObjectGuid srcObjectHandle)
	{
		return gAudio.PlayObjectGetFromFloorSound(srcObjectHandle);
	}

	public static uint StartSoundArray(string soundName, SoundSpec[] children)
	{
		return gAudio.StartSoundArray(soundName, children);
	}

	public static bool UpdateSoundArray(uint instanceId, SoundSpec[] children)
	{
		return gAudio.UpdateSoundArray(instanceId, children);
	}

	public static bool StopSoundArray(uint instanceId)
	{
		return gAudio.StopSoundArray(instanceId);
	}

	public static bool SetSoundArrayGain(uint instanceId, float val)
	{
		return gAudio.SetSoundArrayGain(instanceId, val);
	}
}
