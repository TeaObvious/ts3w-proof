// Annotated selected managed readability excerpts; not an executable replacement.
// The adjacent SimIFace.selected.il.txt controls MethodDef identity, exact branches, operands and complete bodies.
// Retained existing Proof C# view; no new decompiler run. Selected flow checked against authenticated PC1.67 CIL.
// Excerpts omit unrelated type members; they make no full-type or native-layout claim.

// 0x06000405 Sims3.SimIFace.PondInfo::.cctor; complete selected CIL 12 bytes.
// Retained field-initializer syntax matches ldsflda Invalid; initobj PondInfo; ret. No native packing or field offsets inferred.
// Sims3.SimIFace.PondInfo static initializer representation:
public static readonly PondInfo Invalid = default(PondInfo);

// 0x06000617 Sims3.SimIFace.World::GetSeaLevel; complete selected CIL 11 bytes.
// Dereferences gWorld without a null fallback in this body.
	public static float GetSeaLevel()
	{
		return gWorld.GetSeaLevel();
	}

// 0x06000618 Sims3.SimIFace.World::GetPondLevel; complete selected CIL 14 bytes.
// Dereferences gWorld; existing Single by-reference output is forwarded.
	public static bool GetPondLevel(float x, float z, out float waterLevel)
	{
		return gWorld.GetPondLevel(x, z, out waterLevel);
	}

// 0x06000681 Sims3.SimIFace.World::FindPondRepresentativePositions; complete selected CIL 124 bytes.
// Allocates float[3], clears caller Vector3[] before admission, then copies complete triples on success. See IL for repeated reads and bounds.
	public static bool FindPondRepresentativePositions(ulong lotId, out Vector3[] posResults)
	{
		float[] posArray = new float[3];
		posResults = null;
		if (gWorld != null && gWorld.FindPondRepresentativePositions(lotId, ref posArray))
		{
			posResults = new Vector3[posArray.Length / 3];
			for (int i = 0; 3 * i + 2 < posArray.Length; i++)
			{
				posResults[i].x = posArray[3 * i];
				posResults[i].y = posArray[3 * i + 1];
				posResults[i].z = posArray[3 * i + 2];
			}
			return true;
		}
		return false;
	}

// 0x06000682 Sims3.SimIFace.World::GetAllPondIds; complete selected CIL 22 bytes.
// Null gWorld returns false without clearing the caller array.
	public static bool GetAllPondIds(ulong lotId, ref uint[] idArray)
	{
		if (gWorld != null)
		{
			return gWorld.GetAllPondIds(lotId, ref idArray);
		}
		return false;
	}

// 0x06000683 Sims3.SimIFace.World::GetPondInfo; complete selected CIL 23 bytes.
// Null gWorld returns false without clearing the caller structure.
	public static bool GetPondInfo(uint pondId, ulong lotId, ref PondInfo pondInfo)
	{
		if (gWorld != null)
		{
			return gWorld.GetPondInfo(pondId, lotId, ref pondInfo);
		}
		return false;
	}

// 0x06000684 Sims3.SimIFace.World::GetPondAtPoint; complete selected CIL 22 bytes.
// Null gWorld returns UInt32 zero.
	public static uint GetPondAtPoint(ulong lotId, Vector3 worldPos)
	{
		if (gWorld != null)
		{
			return gWorld.GetPondAtPoint(lotId, worldPos);
		}
		return 0u;
	}

// 0x06000685 Sims3.SimIFace.World::GetNumPonds; complete selected CIL 21 bytes.
// Null gWorld returns UInt32 zero.
	public static uint GetNumPonds(ulong lotId)
	{
		if (gWorld != null)
		{
			return gWorld.GetNumPonds(lotId);
		}
		return 0u;
	}
