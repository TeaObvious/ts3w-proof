// Original PC1.67 package assembly; actual ILSpy selected-member output.
// Analyst: original managed pose/layout/outfit policy remains in game assemblies.
// MethodDef/RVA and complete typed CIL are indexed beside this file.
using Sims3.SimIFace;

private bool ThumbnailManager_OnPrepareObject(ulong templateId, ulong targetId, int index, uint uintVal1, uint uintVal2, int size, uint prepareType, uint uintVal3)
{
	ObjectGuid templateId2 = new ObjectGuid(templateId);
	ObjectGuid targetId2 = new ObjectGuid(targetId);
	PrepareThumbnailObject onPrepareObject = OnPrepareObject;
	if (onPrepareObject != null)
	{
		if (prepareType == 4)
		{
			return onPrepareObject(templateId2, targetId2, index, uintVal1, uintVal2, (ThumbnailSize)size, prepareType, uintVal3);
		}
		Sims3.SimIFace.Simulator.AddObject(new PrepareTask(templateId, targetId, index, uintVal1, uintVal2, (ThumbnailSize)size, prepareType, uintVal3, onPrepareObject));
		return true;
	}
	return false;
}
