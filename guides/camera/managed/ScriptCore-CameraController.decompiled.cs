// Decompiled from original ScriptCore.dll PC 1.67
// Diagnostic reference only; not source code for contribution.
using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class CameraController : ICameraController
{
	[DllImport("Sims3Common")]
	private static extern void Camera_RegisterCallbackMethod(uint cameraEvent, [MarshalAs(UnmanagedType.LPWStr)] string typeName, [MarshalAs(UnmanagedType.LPWStr)] string methodName);

	[DllImport("Sims3Common")]
	private static extern uint Camera_GetControllerType();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Camera_SetControllerType(uint type);

	[DllImport("Sims3Common")]
	private static extern Vector3 Camera_GetPosition();

	[DllImport("Sims3Common")]
	private static extern Vector3 Camera_GetTarget();

	[DllImport("Sims3Common")]
	private static extern Vector3 Camera_GetLODInterestPosition();

	[DllImport("Sims3Common")]
	private static extern void Camera_SetPositionAndTarget(Vector3 pos, Vector3 target);

	[DllImport("Sims3Common")]
	private static extern float Camera_GetZoom();

	[DllImport("Sims3Common")]
	private static extern void Camera_GetRegularZoomLimits(out float minZoom, out float maxZoom);

	[DllImport("Sims3Common")]
	private static extern float Camera_GetPitchDegrees();

	[DllImport("Sims3Common")]
	private static extern float Camera_GetYawDegrees();

	[DllImport("Sims3Common")]
	private static extern void Camera_LoadTuning(uint type, [MarshalAs(UnmanagedType.SafeArray)] float[] vars, [MarshalAs(UnmanagedType.I1)] bool b);

	[DllImport("Sims3Common")]
	private static extern void Camera_Shake(float lifespan, [MarshalAs(UnmanagedType.SafeArray)] float[] freqX, [MarshalAs(UnmanagedType.SafeArray)] float[] freqY, [MarshalAs(UnmanagedType.SafeArray)] float[] ampX, [MarshalAs(UnmanagedType.SafeArray)] float[] ampY);

	[DllImport("Sims3Common")]
	private static extern void Camera_RequestLerpToTarget(Vector3 target, float timeDuration, [MarshalAs(UnmanagedType.I1)] bool swingToTarget);

	[DllImport("Sims3Common")]
	private static extern void Camera_RequestLerpToPositionAndTarget(Vector3 position, Vector3 target, float timeDuration, [MarshalAs(UnmanagedType.I1)] bool swingToTarget);

	[DllImport("Sims3Common")]
	private static extern void Camera_RequestLerpToZoomAndRotation(float zoom, float pitchDegrees, float yawDegrees, float timeDuration);

	[DllImport("Sims3Common")]
	private static extern void Camera_FocusOnLot(ulong lotId, float zoom, float pitchDegrees, float lerpDuration);

	[DllImport("Sims3Common")]
	private static extern void Camera_FocusOnLotForBuildBuy(ulong lotId, float zoom, float pitchDegrees, float lerpDuration, float boundaryTolerance);

	[DllImport("Sims3Common")]
	private static extern void Camera_SetOnStairs([MarshalAs(UnmanagedType.I1)] bool onStairs);

	[DllImport("Sims3Common")]
	private static extern void Camera_EnableObjectFollow(ulong objId, Vector3 targetOffset);

	[DllImport("Sims3Common")]
	private static extern void Camera_DisableObjectFollow();

	[DllImport("Sims3Common")]
	private static extern ulong Camera_GetObjectFollowId();

	[DllImport("Sims3Common")]
	private static extern float Camera_GetDistanceFromTargetToObject(ulong scriptHandle);

	[DllImport("Sims3Common")]
	private static extern void Camera_TetherToLot(ulong lotId, [MarshalAs(UnmanagedType.I1)] bool forceImmediate);

	[DllImport("Sims3Common")]
	private static extern void Camera_FinishTimeLerp();

	[DllImport("Sims3Common")]
	private static extern void Camera_TetherToObject(ulong objId);

	[DllImport("Sims3Common")]
	private static extern void Camera_Untether();

	[DllImport("Sims3Common")]
	private static extern void Camera_Lock(ulong objectId, Vector3 targetOffset, float defaultZoom, float defaultPitchDegrees, float defaultYawDegrees, float lerpToTargetDuration);

	[DllImport("Sims3Common")]
	private static extern void Camera_Unlock();

	[DllImport("Sims3Common")]
	private static extern void Camera_SetMotion(uint flags, [MarshalAs(UnmanagedType.I1)] bool bSet);

	[DllImport("Sims3Common")]
	private static extern void Camera_SetRotating([MarshalAs(UnmanagedType.I1)] bool bSet);

	[DllImport("Sims3Common")]
	private static extern void Camera_EnableMapViewMode(float lerpTime);

	[DllImport("Sims3Common")]
	private static extern void Camera_DisableMapViewMode(float desiredZoom, float desiredPitchDegrees, float lerpTime);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Camera_IsMapViewModeEnabled();

	[DllImport("Sims3Common")]
	private static extern void Camera_EnableNHoodPlopMode();

	[DllImport("Sims3Common")]
	private static extern void Camera_DisableNHoodPlopMode();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Camera_IsHorizontalRotationInverted();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Camera_IsVerticalRotationInverted();

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Camera_SetGameEntryMode([MarshalAs(UnmanagedType.I1)] bool enable);

	[DllImport("Sims3Common")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool Camera_SetTutorialMode([MarshalAs(UnmanagedType.I1)] bool enable);

	[DllImport("Sims3Common")]
	private static extern void Camera_ActivatePhotographMode(ulong photographerId, [MarshalAs(UnmanagedType.I1)] bool activate, float minZoom, float maxZoom, uint cameraQuality);

	[DllImport("Sims3Common")]
	private static extern void Camera_StartFlyThrough(uint pathIndex, [MarshalAs(UnmanagedType.I1)] bool startFromCameraPosition);

	[DllImport("Sims3Common")]
	private static extern uint Camera_GetCustomFlyThroughIndex();

	[DllImport("Sims3Common")]
	private static extern void Camera_EnableHouseboatFollow(ulong lotId);

	public CameraController()
	{
		AppDomain.CurrentDomain.SetData("CameraController", this);
	}

	public void RegisterCallbackMethod(CameraEvent cameraEvent, string typeName, string methodName)
	{
		Camera_RegisterCallbackMethod((uint)cameraEvent, typeName, methodName);
	}

	public CameraControllerType GetControllerType()
	{
		return (CameraControllerType)Camera_GetControllerType();
	}

	public bool SetControllerType(CameraControllerType type)
	{
		return Camera_SetControllerType((uint)type);
	}

	public Vector3 GetPosition()
	{
		return Camera_GetPosition();
	}

	public Vector3 GetTarget()
	{
		return Camera_GetTarget();
	}

	public Vector3 GetLODInterestPosition()
	{
		return Camera_GetLODInterestPosition();
	}

	public void SetPositionAndTarget(Vector3 pos, Vector3 target)
	{
		Camera_SetPositionAndTarget(pos, target);
	}

	public float GetZoom()
	{
		return Camera_GetZoom();
	}

	public void GetRegularZoomLimits(out float minZoom, out float maxZoom)
	{
		Camera_GetRegularZoomLimits(out minZoom, out maxZoom);
	}

	public float GetPitchDegrees()
	{
		return Camera_GetPitchDegrees();
	}

	public float GetYawDegrees()
	{
		return Camera_GetYawDegrees();
	}

	public void LoadTuning(uint type, float[] vars, bool b)
	{
		Camera_LoadTuning(type, vars, b);
	}

	public void Shake(float lifespan, float[] freqX, float[] freqY, float[] ampX, float[] ampY)
	{
		Camera_Shake(lifespan, freqX, freqY, ampX, ampY);
	}

	public void RequestLerpToTarget(Vector3 target, float timeDuration, bool swingToTarget)
	{
		Camera_RequestLerpToTarget(target, timeDuration, swingToTarget);
	}

	public void RequestLerpToPositionAndTarget(Vector3 position, Vector3 target, float timeDuration, bool swingToTarget)
	{
		Camera_RequestLerpToPositionAndTarget(position, target, timeDuration, swingToTarget);
	}

	public void RequestLerpToZoomAndRotation(float zoom, float pitchDegrees, float yawDegrees, float timeDuration)
	{
		Camera_RequestLerpToZoomAndRotation(zoom, pitchDegrees, yawDegrees, timeDuration);
	}

	public void FocusOnLot(ulong lotId, float zoom, float pitchDegrees, float lerpDuration)
	{
		Camera_FocusOnLot(lotId, zoom, pitchDegrees, lerpDuration);
	}

	public void FocusOnLotForBuildBuy(ulong lotId, float zoom, float pitchDegrees, float lerpDuration, float boundaryTolerance)
	{
		Camera_FocusOnLotForBuildBuy(lotId, zoom, pitchDegrees, lerpDuration, boundaryTolerance);
	}

	public void SetOnStairs(bool onStairs)
	{
		Camera_SetOnStairs(onStairs);
	}

	public void EnableObjectFollow(ulong objId, Vector3 targetOffset)
	{
		Camera_EnableObjectFollow(objId, targetOffset);
	}

	public void DisableObjectFollow()
	{
		Camera_DisableObjectFollow();
	}

	public ulong GetObjectFollowId()
	{
		return Camera_GetObjectFollowId();
	}

	public float GetDistanceFromTargetToObject(ObjectGuid scriptHandle)
	{
		return Camera_GetDistanceFromTargetToObject(scriptHandle.mValue);
	}

	public void TetherToLot(ulong lotId, bool forceImmediate)
	{
		Camera_TetherToLot(lotId, forceImmediate);
	}

	public void FinishTimeLerp()
	{
		Camera_FinishTimeLerp();
	}

	public void TetherToObject(ObjectGuid objId)
	{
		Camera_TetherToObject(objId.mValue);
	}

	public void Untether()
	{
		Camera_Untether();
	}

	public void Lock(ObjectGuid objectId, Vector3 targetOffset, float defaultZoom, float defaultPitchDegrees, float defaultYawDegrees, float lerpToTargetDuration)
	{
		Camera_Lock(objectId.mValue, targetOffset, defaultZoom, defaultPitchDegrees, defaultYawDegrees, lerpToTargetDuration);
	}

	public void Unlock()
	{
		Camera_Unlock();
	}

	public void SetMotion(uint flags, bool bSet)
	{
		Camera_SetMotion(flags, bSet);
	}

	public void SetCameraRotating(bool bSet)
	{
		Camera_SetRotating(bSet);
	}

	public void EnableMapViewMode(float lerpTime)
	{
		Camera_EnableMapViewMode(lerpTime);
	}

	public void DisableMapViewMode(float desiredZoom, float desiredPitchDegrees, float lerpTime)
	{
		Camera_DisableMapViewMode(desiredZoom, desiredPitchDegrees, lerpTime);
	}

	public bool IsMapViewModeEnabled()
	{
		return Camera_IsMapViewModeEnabled();
	}

	public void EnableNHoodPlopMode()
	{
		Camera_EnableNHoodPlopMode();
	}

	public void DisableNHoodPlopMode()
	{
		Camera_DisableNHoodPlopMode();
	}

	public bool IsHorizontalRotationInverted()
	{
		return Camera_IsHorizontalRotationInverted();
	}

	public bool IsVerticalRotationInverted()
	{
		return Camera_IsVerticalRotationInverted();
	}

	public void SetGameEntryMode(bool enable)
	{
		Camera_SetGameEntryMode(enable);
	}

	public void SetTutorialMode(bool enable)
	{
		Camera_SetTutorialMode(enable);
	}

	public void ActivatePhotographMode(ObjectGuid photographerId, bool activate, float minZoom, float maxZoom, uint cameraQuality)
	{
		Camera_ActivatePhotographMode(photographerId.mValue, activate, minZoom, maxZoom, cameraQuality);
	}

	public void StartFlyThrough(uint pathIndex, bool startFromCameraPosition)
	{
		Camera_StartFlyThrough(pathIndex, startFromCameraPosition);
	}

	public uint GetCustomFlyThroughIndex()
	{
		return Camera_GetCustomFlyThroughIndex();
	}

	public void EnableHouseboatFollow(ulong lotId)
	{
		Camera_EnableHouseboatFollow(lotId);
	}
}
