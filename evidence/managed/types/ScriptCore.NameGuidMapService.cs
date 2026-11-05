using System;
using System.Runtime.InteropServices;
using Sims3.SimIFace;

namespace ScriptCore;

public sealed class NameGuidMapService : INameGuidMap
{
	[DllImport("Sims3Common.dll")]
	private static extern ulong NameGuidMapService_GetGuidByNameHash(ulong nameHash);

	[DllImport("Sims3Common.dll")]
	private static extern ulong NameGuidMapService_GetGuidByName([MarshalAs(UnmanagedType.LPWStr)] string name);

	public NameGuidMapService()
	{
		AppDomain.CurrentDomain.SetData("NameGuidMapService", this);
	}

	public ulong GetGuidByNameHash(ulong nameHash)
	{
		return NameGuidMapService_GetGuidByNameHash(nameHash);
	}

	public ulong GetGuidByName(string name)
	{
		return NameGuidMapService_GetGuidByName(name);
	}
}
