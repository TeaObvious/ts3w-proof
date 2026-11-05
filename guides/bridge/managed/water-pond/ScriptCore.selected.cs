// Annotated selected managed readability excerpts; not an executable replacement.
// The adjacent ScriptCore.selected.il.txt controls MethodDef identity, exact branches, operands and complete bodies.
// Retained existing Proof C# view; no new decompiler run. Selected flow checked against authenticated PC1.67 CIL.
// Excerpts omit unrelated type members; they make no full-type or native-layout claim.

// 0x060008bb ScriptCore.World::GetSeaLevel; complete selected CIL 6 bytes.
// Direct static native forwarding; no world-null fallback or cache.
	public float GetSeaLevel()
	{
		return World_GetSeaLevelImpl();
	}

// 0x060008bc ScriptCore.World::GetPondLevel; complete selected CIL 9 bytes.
// Direct coordinates and by-reference output forwarding; no failure clearing.
	public bool GetPondLevel(float x, float z, out float waterLevel)
	{
		return World_GetPondLevelImpl(x, z, out waterLevel);
	}

// 0x06000926 ScriptCore.World::FindPondRepresentativePositions; complete selected CIL 8 bytes.
// UInt64 lot and Single[] by-reference native boundary; no Vector3 codec here.
	public bool FindPondRepresentativePositions(ulong lotId, ref float[] posArray)
	{
		return World_FindPondRepresentativePositions(lotId, ref posArray);
	}

// 0x06000927 ScriptCore.World::GetAllPondIds; complete selected CIL 8 bytes.
// UInt64 lot and UInt32[] by-reference forwarding.
	public bool GetAllPondIds(ulong lotId, ref uint[] idArray)
	{
		return World_GetAllPondIds(lotId, ref idArray);
	}

// 0x06000928 ScriptCore.World::GetPondInfo; complete selected CIL 9 bytes.
// UInt32 pond ID, UInt64 lot ID, existing PondInfo passed by reference.
	public bool GetPondInfo(uint pondId, ulong lotId, ref PondInfo pondInfo)
	{
		return World_GetPondInfo(pondId, lotId, ref pondInfo);
	}

// 0x06000929 ScriptCore.World::GetPondAtPoint; complete selected CIL 8 bytes.
// UInt32 return; Vector3 remains a value argument.
	public uint GetPondAtPoint(ulong lotId, Vector3 worldPos)
	{
		return World_GetPondAtPoint(lotId, worldPos);
	}

// 0x0600092a ScriptCore.World::GetNumPonds; complete selected CIL 7 bytes.
// UInt32 return and UInt64 lot argument.
	public uint GetNumPonds(ulong lotId)
	{
		return World_GetNumPonds(lotId);
	}
