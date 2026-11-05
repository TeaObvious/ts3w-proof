using System;
using System.Collections.Generic;

namespace Sims3.SimIFace;

public sealed class Animation
{
	private static IAnimation Instance;

	private static PMAAnimationFinishedCallback sPMAAnimationFinishedCallbackDelegate;

	[PersistableStatic]
	private static List<ulong> sPMASleepingTasks;

	static Animation()
	{
		sPMASleepingTasks = new List<ulong>();
		Instance = AppDomain.CurrentDomain.GetData("Animation") as IAnimation;
		sPMAAnimationFinishedCallbackDelegate = PMAAnimationFinishedCallback;
		Instance.SetPMAAnimationFinishedCallback(sPMAAnimationFinishedCallbackDelegate);
	}

	public static void PreWorldLoadShutdown()
	{
		sPMASleepingTasks.Clear();
	}

	public static void SetLookAtsHidden(ObjectGuid id, bool bHidden)
	{
		Instance.SetLookAtsHidden(id, bHidden);
	}

	public static void CreateTransformController(ObjectGuid id)
	{
		Instance.CreateTransformController(id);
	}

	public static void SetBonePosition(ObjectGuid objId, string boneName, Vector3 pos, float interpTime)
	{
		Instance.SetBonePosition(objId, ResourceUtils.HashString32(boneName), pos, interpTime);
	}

	public static void CreateTimeController(ObjectGuid id)
	{
		Instance.CreateTimeController(id);
	}

	public static void PlayAnimation(ObjectGuid id, uint track, ResourceKey clipKey)
	{
		PlayAnimation(id, track, clipKey, 1f);
	}

	public static void PlayAnimation(ObjectGuid id, uint track, ResourceKey clipKey, float timeScale)
	{
		Instance.PlayAnimation(id, track, clipKey, timeScale, yield: false);
	}

	public static void PlayAnimation(ObjectGuid id, uint track, ResourceKey clipKey, float timeScale, bool yield)
	{
		Instance.PlayAnimation(id, track, clipKey, timeScale, yield);
		if (yield && Simulator.CheckYieldingContext(shouldThrowException: false) && id == Simulator.CurrentTask)
		{
			sPMASleepingTasks.Add(id.Value);
			try
			{
				Simulator.Sleep(uint.MaxValue);
			}
			finally
			{
				sPMASleepingTasks.Remove(id.Value);
			}
		}
	}

	public static void StartPose(ObjectGuid id, uint track, ResourceKey clipKey)
	{
		Instance.StartPose(id, track, clipKey);
	}

	public static void StopAllAnimation(ObjectGuid id)
	{
		Instance.StopAllAnimation(id);
	}

	public static void ForceAnimation(ObjectGuid id, bool force)
	{
		Instance.ForceAnimation(id, force);
	}

	public static void SetBoneTimeRotation(ObjectGuid objId, string boneName, float timeScale)
	{
		Instance.SetBoneTimeRotation(objId, ResourceUtils.HashString32(boneName), timeScale);
	}

	public static uint StartRandomClipController(ObjectGuid objectId, uint track, float blendTime, ResourceKey trackMaskKey, ResourceKey[] resourceKeys, float[] weights, float[] repeats)
	{
		return Instance.StartRandomClipController(objectId, track, blendTime, trackMaskKey, resourceKeys, weights, repeats);
	}

	public static void StopRandomClipController(ObjectGuid objectId, uint track, uint controllerId)
	{
		Instance.StopRandomClipController(objectId, track, controllerId);
	}

	public static bool ClipExists(string clipName, ProductVersion productVersion)
	{
		if (string.IsNullOrEmpty(clipName))
		{
			return false;
		}
		uint groupId = ResourceUtils.ProductVersionToGroupId(productVersion);
		return ClipExists(GetClipInstanceId(clipName), groupId);
	}

	public static bool ClipExists(ulong clipId)
	{
		return ClipExists(clipId, 0u);
	}

	public static bool ClipExists(ulong clipId, uint groupId)
	{
		return Instance.ClipExists(clipId, groupId);
	}

	public static bool HasAnimation(ObjectGuid id, uint track)
	{
		return Instance.HasAnimation(id, track);
	}

	public static ulong GetClipInstanceId(string clipName)
	{
		return Instance.GetClipInstanceId(clipName);
	}

	public static ulong GetClipInstanceIdForAges(string clipName, uint ageHashX, uint ageHashY)
	{
		return Instance.GetClipInstanceIdForAges(clipName, ageHashX, ageHashY);
	}

	public static void PlayProcedurallyMotionAccumulatedAnimation(ObjectGuid id, uint track, ResourceKey clipKey, Vector3 startPos, Vector3 endPos)
	{
		Instance.PlayProcedurallyMotionAccumulatedAnimation(id, track, clipKey, startPos, endPos);
		if (Simulator.CheckYieldingContext(shouldThrowException: false) && id == Simulator.CurrentTask)
		{
			sPMASleepingTasks.Add(id.Value);
			try
			{
				Simulator.Sleep(uint.MaxValue);
			}
			finally
			{
				sPMASleepingTasks.Remove(id.Value);
			}
		}
	}

	public static void PMAAnimationFinishedCallback(ulong taskId)
	{
		if (sPMASleepingTasks.Remove(taskId))
		{
			Simulator.Wake(new ObjectGuid(taskId), assertIfNotSleeping: false);
		}
	}

	public static Vector3 MeasureControllerDistanceTravelled(ObjectGuid id, ResourceKey clipKey)
	{
		return Instance.MeasureControllerDistanceTravelled(id, clipKey);
	}

	public static void EnableForceDiscontinuousOnParenting(ObjectGuid id)
	{
		Instance.EnableDisableForceDiscontinuousOnParenting(id, bEnable: true);
	}

	public static void DisableForceDiscontinuousOnParenting(ObjectGuid id)
	{
		Instance.EnableDisableForceDiscontinuousOnParenting(id, bEnable: false);
	}

	public static void EnableLargeAnimalEvalNode(ObjectGuid id)
	{
		Instance.EnableDisableLargeAnimalEvalNode(id, bEnable: true);
	}

	public static void DisableLargeAnimalEvalNode(ObjectGuid id)
	{
		Instance.EnableDisableLargeAnimalEvalNode(id, bEnable: false);
	}

	public static void EnableScubaDivingMode(ObjectGuid id, bool bMermaid)
	{
		Instance.EnableDisableScubaDivingMode(id, bEnable: true, bMermaid);
	}

	public static void DisableScubaDivingMode(ObjectGuid id, bool bMermaid)
	{
		Instance.EnableDisableScubaDivingMode(id, bEnable: false, bMermaid);
	}
}
