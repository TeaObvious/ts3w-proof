using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class DebugDraw : IDebugDraw
{
	[DllImport("Sims3Common.dll")]
	private static extern void DebugDraw_DrawLine(Vector3 p0, Vector3 p1, uint color);

	[DllImport("Sims3Common.dll")]
	private static extern void DebugDraw_DrawCircle(Vector3 center, float radius, uint color);

	[DllImport("Sims3Common.dll")]
	private static extern ulong DebugDraw_DrawLineTimed(Vector3 p0, Vector3 p1, uint color, float duration);

	[DllImport("Sims3Common.dll")]
	private static extern ulong DebugDraw_DrawCircleTimed(Vector3 center, float radius, uint color, float duration);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool DebugDraw_RemoveTimedDebugDraw(ulong debugDrawId);

	public DebugDraw()
	{
		AppDomain.CurrentDomain.SetData("DebugDraw", this);
	}

	public void DrawLine(Vector3 p0, Vector3 p1, Color color)
	{
		DebugDraw_DrawLine(p0, p1, color.ARGB);
	}

	public void DrawCircle(Vector3 center, float radius, Color color)
	{
		DebugDraw_DrawCircle(center, radius, color.ARGB);
	}

	public ulong DrawLineTimed(Vector3 p0, Vector3 p1, Color color, float duration)
	{
		return DebugDraw_DrawLineTimed(p0, p1, color.ARGB, duration);
	}

	public ulong DrawCircleTimed(Vector3 center, float radius, Color color, float duration)
	{
		return DebugDraw_DrawCircleTimed(center, radius, color.ARGB, duration);
	}

	public bool RemoveTimedDebugDraw(ulong debugDrawId)
	{
		return DebugDraw_RemoveTimedDebugDraw(debugDrawId);
	}
}
