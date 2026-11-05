// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.Core.HouseholdContents.
using Sims3.Gameplay.CAS;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
{
	IPropertyStreamReader child = reader.GetChild(2221750924u);
	if (child != null)
	{
		mHousehold = Household.Create();
		if (!mHousehold.ImportContent(resKeyTable, objIdTable, child))
		{
			return false;
		}
	}
	reader.ReadInt32(1758660904u, out var value, 2);
	mInventories = new ulong[value];
	int[] values = new int[value];
	reader.ReadInt32(2746246615u, out values);
	for (int i = 0; i < values.Length; i++)
	{
		ResourceKey resourceKey = resKeyTable[values[i]];
		mInventories[i] = resourceKey.InstanceId;
	}
	return true;
}
