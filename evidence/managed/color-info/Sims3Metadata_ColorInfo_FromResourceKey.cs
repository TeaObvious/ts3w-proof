// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
using Sims3.SimIFace;

public static ColorInfo FromResourceKey(ResourceKey key)
{
	if (sCASUtils == null)
	{
		return null;
	}
	byte[] colorInfoBytes = sCASUtils.GetColorInfoBytes(key);
	if (colorInfoBytes == null || colorInfoBytes.Length == 0)
	{
		return null;
	}
	return new ColorInfo(key, colorInfoBytes);
}
