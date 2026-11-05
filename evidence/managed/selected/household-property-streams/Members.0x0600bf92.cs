// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.CAS.Household.Members.
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
{
	writer.WriteInt32(3921240069u, Count);
	uint num = 0u;
	foreach (SimDescription allSimDescription in AllSimDescriptionList)
	{
		IPropertyStreamWriter writer2 = writer.CreateChild(num++);
		allSimDescription.ExportContent(resKeyTable, objIdTable, writer2);
		writer.CommitChild();
		writer2 = null;
	}
	return true;
}
