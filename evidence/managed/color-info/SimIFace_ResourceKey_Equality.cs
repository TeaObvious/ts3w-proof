// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
public static bool operator ==(ResourceKey lhs, ResourceKey rhs)
{
	if (lhs.TypeId == rhs.TypeId && lhs.GroupId == rhs.GroupId)
	{
		return lhs.InstanceId == rhs.InstanceId;
	}
	return false;
}
