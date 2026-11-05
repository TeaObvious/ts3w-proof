using System;

namespace Sims3.SimIFace;

public sealed class CameraController
{
	public delegate void CameraFollowEnabledHandler(object sender, CameraFollowEnabledEventArgs eventArgs);

	public class CameraFollowEnabledEventArgs : EventArgs
	{
		private ObjectGuid mObjectId;

		private bool mbEnabled;

		public ObjectGuid ObjectId => mObjectId;

		public bool Enabled => mbEnabled;

		public CameraFollowEnabledEventArgs(ulong objectId, bool enabled)
		{
			mObjectId = new ObjectGuid(objectId);
			mbEnabled = enabled;
		}
	}

	public delegate void CameraFlyThroughFinishedHandler(uint pathIndex);

	public delegate void CameraControllerSwitchHandler(CameraControllerType mode);

	public delegate void CameraMapViewEnabledHandler(bool enabled);

	public delegate void CameraAtMaxZoomHandler(bool atMaxZoom);

	private const string kTypeName = "Sims3.SimIFace.CameraController, SimIFace";

	public const float kUseCurrentCameraValue = -100f;

	public const float kToggleMapViewTime = 1f;

	private static ICameraController Instance;

	public static CameraFollowEnabledHandler OnCameraFollowEnabledCallback;

	public static CameraFlyThroughFinishedHandler OnCameraFlyThroughFinishedCallback;

	public static event CameraControllerSwitchHandler OnCameraControllerSwitchCallback;

	public static event CameraMapViewEnabledHandler OnCameraMapViewEnabledCallback;

	public static event CameraAtMaxZoomHandler OnCameraAtMaxZoomCallback;

	static CameraController()
	{
		Instance = AppDomain.CurrentDomain.GetData("CameraController") as ICameraController;
	}

	private static void RegisterCallbackMethod(CameraEvent cameraEvent)
	{
		Instance.RegisterCallbackMethod(cameraEvent, "Sims3.SimIFace.CameraController, SimIFace", cameraEvent.ToString());
	}

	public static void RegisterAllCallbacks()
	{
		RegisterCallbackMethod(CameraEvent.OnCameraFollowEnabled);
		RegisterCallbackMethod(CameraEvent.OnCameraFlyThroughFinished);
		RegisterCallbackMethod(CameraEvent.OnCameraControllerSwitch);
		RegisterCallbackMethod(CameraEvent.OnCameraMapViewEnabled);
		RegisterCallbackMethod(CameraEvent.OnCameraAtMaxZoom);
	}

	public static void EnableCameraMapView(bool enabled)
	{
		if (OnCameraMapViewEnabledCallback != null)
		{
			OnCameraMapViewEnabledCallback(enabled);
		}
	}

	private static void OnCameraFollowEnabled(ulong objectId, bool enabled)
	{
		if (OnCameraFollowEnabledCallback != null)
		{
			OnCameraFollowEnabledCallback(null, new CameraFollowEnabledEventArgs(objectId, enabled));
		}
	}

	private static void OnCameraFlyThroughFinished(uint pathIndex)
	{
		if (OnCameraFlyThroughFinishedCallback != null)
		{
			OnCameraFlyThroughFinishedCallback(pathIndex);
		}
	}

	private static void OnCameraControllerSwitch(uint type)
	{
		if (OnCameraControllerSwitchCallback != null)
		{
			OnCameraControllerSwitchCallback((CameraControllerType)type);
		}
	}

	private static void OnCameraMapViewEnabled(bool enabled)
	{
		if (OnCameraMapViewEnabledCallback != null)
		{
			OnCameraMapViewEnabledCallback(enabled);
		}
	}

	private static void OnCameraAtMaxZoom(bool atMaxZoom)
	{
		if (OnCameraAtMaxZoomCallback != null)
		{
			OnCameraAtMaxZoomCallback(atMaxZoom);
		}
	}

	public static CameraControllerType GetControllerType()
	{
		return Instance.GetControllerType();
	}

	public static bool SetControllerType(CameraControllerType type)
	{
		return Instance.SetControllerType(type);
	}

	public static Vector3 GetPosition()
	{
		return Instance.GetPosition();
	}

	public static Vector3 GetTarget()
	{
		return Instance.GetTarget();
	}

	public static Vector3 GetLODInterestPosition()
	{
		return Instance.GetLODInterestPosition();
	}

	public static void SetPositionAndTarget(Vector3 pos, Vector3 target)
	{
		Instance.SetPositionAndTarget(pos, target);
	}

	public static float GetZoom()
	{
		return Instance.GetZoom();
	}

	public static void GetRegularZoomLimits(out float minZoom, out float maxZoom)
	{
		Instance.GetRegularZoomLimits(out minZoom, out maxZoom);
	}

	public static float GetPitchDegrees()
	{
		return Instance.GetPitchDegrees();
	}

	public static float GetYawDegrees()
	{
		return Instance.GetYawDegrees();
	}

	public static void LoadTuning(uint type, float[] vars, bool b)
	{
		Instance.LoadTuning(type, vars, b);
	}

	public static void Shake()
	{
		Shake(1f, 4f);
	}

	public static void Shake(float intensity)
	{
		Shake(intensity, 4f);
	}

	public static void Shake(float intensity, float duration)
	{
		float[] array = new float[5] { 40f, 40f, 60f, 40f, 40f };
		float[] array2 = new float[5] { 25f, 25f, 50f, 25f, 25f };
		float[] array3 = new float[5] { 0.01f, 0.01f, 0.05f, 0.01f, 0.01f };
		float[] array4 = new float[5] { 0.005f, 0.01f, 0.01f, 0.01f, 0.005f };
		for (int i = 0; i < 5; i++)
		{
			array[i] *= intensity;
			array2[i] *= intensity;
			array3[i] *= intensity;
			array4[i] *= intensity;
		}
		Instance.Shake(duration, array, array2, array3, array4);
	}

	public static void RequestLerpToTarget(Vector3 target, float timeDuration, bool swingToTarget)
	{
		Instance.RequestLerpToTarget(target, timeDuration, swingToTarget);
	}

	public static void RequestLerpToPositionAndTarget(Vector3 position, Vector3 target, float timeDuration, bool swingToTarget)
	{
		Instance.RequestLerpToPositionAndTarget(position, target, timeDuration, swingToTarget);
	}

	public static void RequestLerpToZoomAndRotation(float zoom, float pitchDegrees, float yawDegrees, float timeDuration)
	{
		Instance.RequestLerpToZoomAndRotation(zoom, pitchDegrees, yawDegrees, timeDuration);
	}

	public static void FocusOnLot(ulong lotId, float zoom, float pitchDegrees, float lerpDuration)
	{
		Instance.FocusOnLot(lotId, zoom, pitchDegrees, lerpDuration);
	}

	public static void FocusOnLotForBuildBuy(ulong lotId, float zoom, float pitchDegrees, float lerpDuration, float boundaryTolerance)
	{
		Instance.FocusOnLotForBuildBuy(lotId, zoom, pitchDegrees, lerpDuration, boundaryTolerance);
	}

	public static void SetOnStairs(bool onStairs)
	{
		Instance.SetOnStairs(onStairs);
	}

	public static void EnableObjectFollow(ulong objId, Vector3 targetOffset)
	{
		Instance.EnableObjectFollow(objId, targetOffset);
	}

	public static void DisableObjectFollow()
	{
		Instance.DisableObjectFollow();
	}

	public static ulong GetObjectFollowId()
	{
		return Instance.GetObjectFollowId();
	}

	public static float GetDistanceFromTargetToObject(ObjectGuid scriptHandle)
	{
		return Instance.GetDistanceFromTargetToObject(scriptHandle);
	}

	public static void TetherToLot(ulong lotId)
	{
		Instance.TetherToLot(lotId, forceImmediate: false);
	}

	public static void TetherToLot(ulong lotId, bool forceImmediate)
	{
		Instance.TetherToLot(lotId, forceImmediate);
	}

	public static void TetherToObject(ObjectGuid objId)
	{
		Instance.TetherToObject(objId);
	}

	public static void Untether()
	{
		Instance.Untether();
	}

	public static void FinishTimeLerp()
	{
		Instance.FinishTimeLerp();
	}

	public static void Lock(ObjectGuid objectId, Vector3 targetOffset, float defaultZoom, float defaultPitchDegrees, float defaultYawDegrees, float lerpToTargetDuration)
	{
		Instance.Lock(objectId, targetOffset, defaultZoom, defaultPitchDegrees, defaultYawDegrees, lerpToTargetDuration);
	}

	public static void Unlock()
	{
		Instance.Unlock();
	}

	public static void SetMotion(uint flags, bool bSet)
	{
		Instance.SetMotion(flags, bSet);
	}

	public static void SetRotating(bool bSet)
	{
		Instance.SetCameraRotating(bSet);
	}

	public static void EnableMapViewMode()
	{
		Instance.EnableMapViewMode(1f);
	}

	public static void DisableMapViewMode(float desiredZoom, float desiredPitchDegrees)
	{
		Instance.DisableMapViewMode(desiredZoom, desiredPitchDegrees, 1f);
	}

	public static void DisableMapViewMode()
	{
		Instance.DisableMapViewMode(-100f, -100f, 1f);
	}

	public static bool IsMapViewModeEnabled()
	{
		return Instance.IsMapViewModeEnabled();
	}

	public static void EnableNHoodPlopMode()
	{
		Instance.EnableNHoodPlopMode();
	}

	public static void DisableNHoodPlopMode()
	{
		Instance.DisableNHoodPlopMode();
	}

	public static bool IsHorizontalRotationInverted()
	{
		return Instance.IsHorizontalRotationInverted();
	}

	public static bool IsVerticalRotationInverted()
	{
		return Instance.IsVerticalRotationInverted();
	}

	public static void SetGameEntryMode(bool enable)
	{
		Instance.SetGameEntryMode(enable);
	}

	public static void SetTutorialMode(bool enable)
	{
		Instance.SetTutorialMode(enable);
	}

	public static void ActivatePhotographMode(ObjectGuid photographerId, bool activate)
	{
		ActivatePhotographMode(photographerId, activate, -1f, -1f, uint.MaxValue);
	}

	public static void ActivatePhotographMode(ObjectGuid photographerId, bool activate, float minZoom, float maxZoom, uint cameraQuality)
	{
		Instance.ActivatePhotographMode(photographerId, activate, minZoom, maxZoom, cameraQuality);
	}

	public static void StartFlyThrough(uint pathIndex, bool startFromCameraPosition)
	{
		Instance.StartFlyThrough(pathIndex, startFromCameraPosition);
	}

	public static uint GetCustomFlyThroughIndex()
	{
		return Instance.GetCustomFlyThroughIndex();
	}

	public static void EnableHouseboatFollow(ulong lotId)
	{
		Instance.EnableHouseboatFollow(lotId);
	}
}
