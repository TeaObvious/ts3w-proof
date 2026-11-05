using System;
using System.Runtime.InteropServices;

namespace Sims3.CSHost;

public class SeaWrap
{
	private IntPtr mNativeObj = IntPtr.Zero;

	private WorldWrap mWorld;

	[DllImport("Sims3Common.dll")]
	private static extern void SeaWrap_SetSeaLevel(IntPtr pSeaAsVoid, float level);

	[DllImport("Sims3Common.dll")]
	private static extern float SeaWrap_GetSeaLevel(IntPtr pSeaAsVoid);

	[DllImport("Sims3Common.dll")]
	private static extern void SeaWrap_BeginEditMode(IntPtr pSeaAsVoid);

	[DllImport("Sims3Common.dll")]
	private static extern void SeaWrap_EndEditMode(IntPtr pSeaAsVoid, uint bWholeWorldUpdated, int updateRectLeft, int updateRectTop, int updateRectRight, int updateRectBottom);

	[DllImport("Sims3Common.dll")]
	private static extern void SeaWrap_RebuildWaterGeometry(IntPtr pSeaAsVoid, int updateRectLeft, int updateRectTop, int updateRectRight, int updateRectBottom);

	public SeaWrap(WorldWrap worldObj, IntPtr nativeSeaObj)
	{
		mWorld = worldObj;
		mNativeObj = nativeSeaObj;
	}

	public void SetSeaLevel(float level)
	{
		SeaWrap_SetSeaLevel(mNativeObj, level);
	}

	public float GetSeaLevel()
	{
		return SeaWrap_GetSeaLevel(mNativeObj);
	}

	public void BeginEditMode()
	{
		SeaWrap_BeginEditMode(mNativeObj);
	}

	public void EndEditMode(bool bWholeWorldUpdated, int updateRectLeft, int updateRectTop, int updateRectRight, int updateRectBottom)
	{
		uint bWholeWorldUpdated2 = (bWholeWorldUpdated ? 1u : 0u);
		SeaWrap_EndEditMode(mNativeObj, bWholeWorldUpdated2, updateRectLeft, updateRectTop, updateRectRight, updateRectBottom);
	}

	public void RebuildWaterGeometry(int updateRectLeft, int updateRectTop, int updateRectRight, int updateRectBottom)
	{
		SeaWrap_RebuildWaterGeometry(mNativeObj, updateRectLeft, updateRectTop, updateRectRight, updateRectBottom);
	}
}
