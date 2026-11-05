using System;
using System.Runtime.InteropServices;
using Sims3.Math;

namespace Sims3.CSHost;

public class Camera : IDisposable
{
	public enum CameraType
	{
		Perspective,
		Orthographic
	}

	public enum CameraControllerType
	{
		WorldEdit,
		InGame
	}

	private IntPtr mNativeObj = IntPtr.Zero;

	private bool mbOwned;

	public Matrix44 ProjectionMatrix
	{
		get
		{
			CameraWrap_Finalize(mNativeObj);
			return CameraWrap_GetViewToClipSpaceMatrix(mNativeObj);
		}
	}

	public Matrix44 ViewMatrix
	{
		get
		{
			CameraWrap_Finalize(mNativeObj);
			return CameraWrap_GetWorldToViewSpaceMatrix(mNativeObj);
		}
	}

	public Matrix44 WorldProjection
	{
		get
		{
			CameraWrap_Finalize(mNativeObj);
			return CameraWrap_GetWorldToClipSpaceMatrix(mNativeObj);
		}
	}

	public Matrix44 Transform
	{
		get
		{
			return CameraWrap_GetTransform(mNativeObj);
		}
		set
		{
			CameraWrap_SetTransform(mNativeObj, ref value);
		}
	}

	public float NearClip
	{
		get
		{
			return CameraWrap_GetNearClip(mNativeObj);
		}
		set
		{
			CameraWrap_SetNearClip(mNativeObj, value);
		}
	}

	public float FarClip
	{
		get
		{
			return CameraWrap_GetFarClip(mNativeObj);
		}
		set
		{
			CameraWrap_SetFarClip(mNativeObj, value);
		}
	}

	public float AspectRatio
	{
		get
		{
			return CameraWrap_GetAspectRatio(mNativeObj);
		}
		set
		{
			CameraWrap_SetAspectRatio(mNativeObj, value);
		}
	}

	public float Width
	{
		get
		{
			return CameraWrap_GetWidth(mNativeObj);
		}
		set
		{
			CameraWrap_SetWidth(mNativeObj, value);
		}
	}

	public float FOV
	{
		get
		{
			return CameraWrap_GetFOVDegrees(mNativeObj);
		}
		set
		{
			CameraWrap_SetFOVDegrees(mNativeObj, value);
		}
	}

	public CameraControllerType ControlStyle
	{
		get
		{
			return WorldWrap_GetCameraControllerType();
		}
		set
		{
			WorldWrap_SetCameraControllerType(value);
		}
	}

	[DllImport("Sims3Common.dll")]
	private static extern IntPtr CameraWrap_Create();

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_Destroy(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern CameraControllerType WorldWrap_GetCameraControllerType();

	[DllImport("Sims3Common.dll")]
	private static extern void WorldWrap_SetCameraControllerType(CameraControllerType type);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_LookDirection(IntPtr pThis, ref Vector3 vEye, ref Vector3 vUp, ref Vector3 vDir);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_LookAt(IntPtr pThis, ref Vector3 vEye, ref Vector3 vUp, ref Vector3 vTarget);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_Finalize(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_SetWidth(IntPtr pThis, float w);

	[DllImport("Sims3Common.dll")]
	private static extern float CameraWrap_GetWidth(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_SetAspectRatio(IntPtr pThis, float a);

	[DllImport("Sims3Common.dll")]
	private static extern float CameraWrap_GetAspectRatio(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_SetNearClip(IntPtr pThis, float c);

	[DllImport("Sims3Common.dll")]
	private static extern float CameraWrap_GetNearClip(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_SetFarClip(IntPtr pThis, float c);

	[DllImport("Sims3Common.dll")]
	private static extern float CameraWrap_GetFarClip(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_SetFOVDegrees(IntPtr pThis, float c);

	[DllImport("Sims3Common.dll")]
	private static extern float CameraWrap_GetFOVDegrees(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_SetCameraType(IntPtr pThis, CameraType type);

	[DllImport("Sims3Common.dll")]
	private static extern CameraType CameraWrap_GetCameraType(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern void CameraWrap_SetTransform(IntPtr pThis, ref Matrix44 xf);

	[DllImport("Sims3Common.dll")]
	private static extern Matrix44 CameraWrap_GetTransform(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern Matrix44 CameraWrap_GetViewToClipSpaceMatrix(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern Matrix44 CameraWrap_GetWorldToViewSpaceMatrix(IntPtr pThis);

	[DllImport("Sims3Common.dll")]
	private static extern Matrix44 CameraWrap_GetWorldToClipSpaceMatrix(IntPtr pThis);

	[DllImport("Sims3Common")]
	private static extern void Camera_LoadTuning(uint type, [MarshalAs(UnmanagedType.SafeArray)] float[] vars, [MarshalAs(UnmanagedType.I1)] bool b);

	public IntPtr GetNativeObjectPtr()
	{
		return mNativeObj;
	}

	public Camera()
	{
		mNativeObj = CameraWrap_Create();
		mbOwned = true;
	}

	public Camera(IntPtr ptr)
	{
		mNativeObj = ptr;
		mbOwned = false;
	}

	public void Dispose()
	{
		if (mNativeObj != IntPtr.Zero && mbOwned)
		{
			CameraWrap_Destroy(mNativeObj);
		}
		mNativeObj = IntPtr.Zero;
		mbOwned = false;
	}

	public void LookDirection(ref Vector3 vEye, ref Vector3 vUp, ref Vector3 vDir)
	{
		CameraWrap_LookDirection(mNativeObj, ref vEye, ref vUp, ref vDir);
	}

	public void LookAt(ref Vector3 vEye, ref Vector3 vUp, ref Vector3 vTarget)
	{
		CameraWrap_LookAt(mNativeObj, ref vEye, ref vUp, ref vTarget);
	}

	public void UpdateMatrices()
	{
		CameraWrap_Finalize(mNativeObj);
	}

	public static void LoadTuning(uint type, float[] vars, bool b)
	{
		Camera_LoadTuning(type, vars, b);
	}
}
