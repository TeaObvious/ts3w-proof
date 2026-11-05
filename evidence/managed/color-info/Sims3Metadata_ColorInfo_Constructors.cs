// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
using Sims3.SimIFace;

public ColorInfo()
{
	mColors = new Color[0];
	mFabrics = new FabricInfo[0];
	base..ctor();
}
public ColorInfo(ResourceKey key, byte[] bytes)
{
	mColors = new Color[0];
	mFabrics = new FabricInfo[0];
	base..ctor();
	switch (key.TypeId)
	{
	case 103965146u:
		mUse = PreferredUse.Hair;
		break;
	case 103965168u:
		mUse = PreferredUse.CAS;
		break;
	case 103965203u:
		mUse = PreferredUse.Object;
		break;
	case 979742505u:
		mUse = PreferredUse.Makeup;
		break;
	}
	Load(bytes);
}
