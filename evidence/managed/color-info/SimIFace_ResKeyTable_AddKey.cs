// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
public int AddKey(ResourceKey newKey)
{
	int i;
	for (i = 0; i < mResKeys.Count; i++)
	{
		if (newKey == mResKeys[i])
		{
			return i;
		}
	}
	i = mResKeys.Count;
	mResKeys.Add(newKey);
	return i;
}
