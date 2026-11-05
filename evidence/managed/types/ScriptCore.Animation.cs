using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class Animation : IAnimation
{
	[DllImport("Sims3Common.dll")]
	private static extern void Animation_SetLookAtsHidden(ulong id, [MarshalAs(UnmanagedType.I1)] bool bHidden);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_SetBonePosition(ulong objId, uint boneId, Vector3 pos, float interpTime);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_CreateTransformController(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_SetBoneTimeRotation(ulong objId, uint boneId, float timeScale);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_CreateTimeController(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_PlayAnimation(ulong objId, uint track, ResourceKey clipInstanceId, float timeScale, bool yield);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_PlayPose(ulong objId, uint track, ResourceKey clipInstanceId);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_StopAllAnimation(ulong objId);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_ForceAnimation(ulong objId, bool force);

	[DllImport("Sims3Common.dll")]
	private static extern uint Animation_StartRandomClipController(ulong objId, uint track, float blendTime, ResourceKey trackMaskKey, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI8)] ulong[] resourceIds, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] weights, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_R4)] float[] repeats);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_StopRandomClipController(ulong objId, uint track, uint id);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U1)]
	private static extern bool Animation_ClipExists(ulong clipId, uint groupId);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.U1)]
	private static extern bool Animation_HasAnimation(ulong objId, uint track);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Animation_GetClipInstanceId([MarshalAs(UnmanagedType.LPWStr)] string clipName);

	[DllImport("Sims3Common.dll")]
	private static extern ulong Animation_GetClipInstanceIdForAges([MarshalAs(UnmanagedType.LPWStr)] string clipName, uint ageHashX, uint ageHashY);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_PlayProcedurallyMotionAccumulatedAnimation(ulong id, uint track, ResourceKey clipInstanceId, Vector3 startPos, Vector3 endPos);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_SetPMAAnimationFinishedCallback([MarshalAs(UnmanagedType.Interface)] Delegate pPMAAnimationFinishedCallback);

	[DllImport("Sims3Common.dll")]
	private static extern Vector3 Animation_MeasureControllerDistanceTravelled(ulong id, ResourceKey clipKey);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_EnableDisableForceDiscontinuousOnParenting(ulong id, [MarshalAs(UnmanagedType.I1)] bool bEnable);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_EnableDisableLargeAnimalEvalNode(ulong id, [MarshalAs(UnmanagedType.I1)] bool bEnable);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_EnableDisableScubaDivingMode(ulong id, [MarshalAs(UnmanagedType.I1)] bool bEnable, [MarshalAs(UnmanagedType.I1)] bool bMermaid);

	[DllImport("Sims3Common.dll")]
	private static extern void Animation_SetMissingAnimationCallback([MarshalAs(UnmanagedType.Interface)] Delegate pMissingAnimationCallback);

	public Animation()
	{
		AppDomain.CurrentDomain.SetData("Animation", this);
	}

	public void SetLookAtsHidden(ObjectGuid id, bool bHidden)
	{
		Animation_SetLookAtsHidden(id.Value, bHidden);
	}

	public void SetBonePosition(ObjectGuid objId, uint boneId, Vector3 pos, float interpTime)
	{
		Animation_SetBonePosition(objId.mValue, boneId, pos, interpTime);
	}

	public void CreateTransformController(ObjectGuid id)
	{
		Animation_CreateTransformController(id.Value);
	}

	public void SetBoneTimeRotation(ObjectGuid objId, uint boneId, float timeScale)
	{
		Animation_SetBoneTimeRotation(objId.mValue, boneId, timeScale);
	}

	public void CreateTimeController(ObjectGuid id)
	{
		Animation_CreateTimeController(id.Value);
	}

	public void PlayAnimation(ObjectGuid id, uint track, ResourceKey clipKey, float timeScale, bool yield)
	{
		Animation_PlayAnimation(id.Value, track, clipKey, timeScale, yield);
	}

	public void StartPose(ObjectGuid id, uint track, ResourceKey clipKey)
	{
		Animation_PlayPose(id.Value, track, clipKey);
	}

	public void StopAllAnimation(ObjectGuid id)
	{
		Animation_StopAllAnimation(id.Value);
	}

	public void ForceAnimation(ObjectGuid id, bool force)
	{
		Animation_ForceAnimation(id.Value, force);
	}

	public uint StartRandomClipController(ObjectGuid id, uint track, float blendTime, ResourceKey trackMaskKey, ResourceKey[] resourceKeys, float[] weights, float[] repeats)
	{
		ulong[] array = new ulong[resourceKeys.Length];
		for (int i = 0; i < resourceKeys.Length; i++)
		{
			array[i] = resourceKeys[i].InstanceId;
		}
		return Animation_StartRandomClipController(id.Value, track, blendTime, trackMaskKey, array, weights, repeats);
	}

	public void StopRandomClipController(ObjectGuid objectId, uint track, uint controllerId)
	{
		Animation_StopRandomClipController(objectId.Value, track, controllerId);
	}

	public bool ClipExists(ulong clipId, uint groupId)
	{
		return Animation_ClipExists(clipId, groupId);
	}

	public bool HasAnimation(ObjectGuid id, uint track)
	{
		return Animation_HasAnimation(id.Value, track);
	}

	public ulong GetClipInstanceId(string clipName)
	{
		return Animation_GetClipInstanceId(clipName);
	}

	public ulong GetClipInstanceIdForAges(string clipName, uint ageHashX, uint ageHashY)
	{
		return Animation_GetClipInstanceIdForAges(clipName, ageHashX, ageHashY);
	}

	public void PlayProcedurallyMotionAccumulatedAnimation(ObjectGuid id, uint track, ResourceKey clipKey, Vector3 startPos, Vector3 endPos)
	{
		Animation_PlayProcedurallyMotionAccumulatedAnimation(id.Value, track, clipKey, startPos, endPos);
	}

	public void SetPMAAnimationFinishedCallback(PMAAnimationFinishedCallback pmaAnimationFinishedCallback)
	{
		Animation_SetPMAAnimationFinishedCallback(pmaAnimationFinishedCallback);
	}

	public Vector3 MeasureControllerDistanceTravelled(ObjectGuid id, ResourceKey clipKey)
	{
		return Animation_MeasureControllerDistanceTravelled(id.Value, clipKey);
	}

	public void EnableDisableForceDiscontinuousOnParenting(ObjectGuid id, bool bEnable)
	{
		Animation_EnableDisableForceDiscontinuousOnParenting(id.Value, bEnable);
	}

	public void EnableDisableLargeAnimalEvalNode(ObjectGuid id, bool bEnable)
	{
		Animation_EnableDisableLargeAnimalEvalNode(id.Value, bEnable);
	}

	public void EnableDisableScubaDivingMode(ObjectGuid id, bool bEnable, bool bMermaid)
	{
		Animation_EnableDisableScubaDivingMode(id.Value, bEnable, bMermaid);
	}
}
