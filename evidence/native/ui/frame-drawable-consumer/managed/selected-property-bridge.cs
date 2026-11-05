// Selected original PC1.67 UI/ScriptCore bridge excerpts, not a rebuilt assembly or replacement implementation.
// Original assembly provenance: ../../frame-drawable/managed/provenance.json.
// Each method excerpt below is retained exactly as independently verified ILSpy output.
// C# diagnostics and unresolved references are preserved; original IL governs operands and tokens.
// Interface call sites do not establish which implementation was selected at runtime.

// ---- Sims3.UI.UIManager.GetRectProperty ----
using Sims3.SimIFace;

internal static Rect GetRectProperty(uint handle, uint propID)
{
	//IL_0007: Unknown result type (might be due to invalid IL or missing references)
	return gUIMgr.GetRectFloatProperty(handle, propID);
}

// ---- Sims3.UI.UIManager.SetRectProperty ----
using Sims3.SimIFace;

internal static void SetRectProperty(uint handle, uint propID, Rect value)
{
	//IL_0007: Unknown result type (might be due to invalid IL or missing references)
	gUIMgr.SetRectFloatProperty(handle, propID, value);
}

// ---- Sims3.UI.UIManager.GetColorProperty ----
using Sims3.SimIFace;

internal static Color GetColorProperty(uint handle, uint propID)
{
	//IL_000c: Unknown result type (might be due to invalid IL or missing references)
	return new Color(gUIMgr.GetUInt32Property(handle, propID));
}

// ---- Sims3.UI.UIManager.SetColorProperty ----
using Sims3.SimIFace;

internal static void SetColorProperty(uint handle, uint propID, Color value)
{
	gUIMgr.SetUInt32Property(handle, propID, value.ARGB);
}

// ---- ScriptCore.UIManager.GetRectFloatProperty ----
using Sims3.SimIFace;

public Rect GetRectFloatProperty(uint winHandle, uint propID)
{
	//IL_0016: Unknown result type (might be due to invalid IL or missing references)
	//IL_001b: Unknown result type (might be due to invalid IL or missing references)
	//IL_0029: Unknown result type (might be due to invalid IL or missing references)
	Rect outValue = new Rect(0f, 0f, 0f, 0f);
	UIManager_GetRectFloatPropertyImpl(winHandle, propID, ref outValue);
	return outValue;
}

// ---- ScriptCore.UIManager.SetRectFloatProperty ----
using Sims3.SimIFace;

public void SetRectFloatProperty(uint winHandle, uint propID, Rect value)
{
	UIManager_SetRectFloatPropertyImpl(winHandle, propID, ref value);
}

// ---- ScriptCore.UIManager.GetUInt32Property ----
public uint GetUInt32Property(uint winHandle, uint propID)
{
	return UIManager_GetUInt32PropertyImpl(winHandle, propID);
}

// ---- ScriptCore.UIManager.SetUInt32Property ----
public void SetUInt32Property(uint winHandle, uint propID, uint value)
{
	UIManager_SetUInt32PropertyImpl(winHandle, propID, value);
}

// ---- ScriptCore.UIManager.UIManager_GetRectFloatPropertyImpl ----
using System.Runtime.InteropServices;
using Sims3.SimIFace;

[DllImport("Sims3Common.dll")]
private static extern void UIManager_GetRectFloatPropertyImpl(uint winHandle, uint propID, ref Rect outValue);

// ---- ScriptCore.UIManager.UIManager_SetRectFloatPropertyImpl ----
using System.Runtime.InteropServices;
using Sims3.SimIFace;

[DllImport("Sims3Common.dll")]
private static extern void UIManager_SetRectFloatPropertyImpl(uint winHandle, uint propID, ref Rect value);

// ---- ScriptCore.UIManager.UIManager_GetUInt32PropertyImpl ----
using System.Runtime.InteropServices;

[DllImport("Sims3Common.dll")]
private static extern uint UIManager_GetUInt32PropertyImpl(uint winHandle, uint propID);

// ---- ScriptCore.UIManager.UIManager_SetUInt32PropertyImpl ----
using System.Runtime.InteropServices;

[DllImport("Sims3Common.dll")]
private static extern void UIManager_SetUInt32PropertyImpl(uint winHandle, uint propID, uint value);

