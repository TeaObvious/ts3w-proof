// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.Core.HouseholdContents.
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
{
	IPropertyStreamWriter writer2 = writer.CreateChild(2221750924u);
	mHousehold.ExportContent(resKeyTable, objIdTable, writer2);
	writer.CommitChild();
	writer2 = null;
	writer.WriteInt32(1758660904u, mInventories.Length);
	int[] array = new int[mInventories.Length];
	int num = 0;
	ulong[] array2 = mInventories;
	foreach (ulong num2 in array2)
	{
		uint type = ((num2 != 0) ? 3034411371u : 0u);
		ResourceKey newKey = new ResourceKey(num2, type, 0u);
		array[num++] = resKeyTable.AddKey(newKey);
	}
	writer.WriteInt32(2746246615u, array);
	return true;
}
