using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;
using Sims3.SimIFace.BuildBuy;
using Sims3.SimIFace.CustomContent;

namespace ScriptCore;

public sealed class CTProductModularObject : IModularObject
{
	[DllImport("Sims3Common")]
	private static extern uint CTProductModularObject_LoadImpl(ResourceKey key);

	[DllImport("Sims3Common")]
	private static extern void CTProductModularObject_FreeImpl(uint handle);

	[DllImport("Sims3Common.dll")]
	[return: MarshalAs(UnmanagedType.I1)]
	private static extern bool CTProductModularObject_GetResourceKeysImpl(uint handle, [MarshalAs(UnmanagedType.SafeArray, SafeArraySubType = VarEnum.VT_UI1)] ref byte[] pKeyTable);

	[DllImport("Sims3Common.dll")]
	private static extern ushort CTProductModularObject_GetModularObjectTypeImpl(uint handle);

	public CTProductModularObject()
	{
		AppDomain.CurrentDomain.SetData("CTProductModularObject", this);
	}

	public uint LoadModularObject(ResourceKey key)
	{
		return CTProductModularObject_LoadImpl(key);
	}

	public void FreeModularObject(uint handle)
	{
		CTProductModularObject_FreeImpl(handle);
	}

	public ResKeyTable GetResourceKeys(uint handle)
	{
		byte[] pKeyTable = null;
		CTProductModularObject_GetResourceKeysImpl(handle, ref pKeyTable);
		return new ResKeyTable(pKeyTable);
	}

	public ushort GetModularObjectType(uint handle)
	{
		return CTProductModularObject_GetModularObjectTypeImpl(handle);
	}
}
