// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.CAS.Household.Members.
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
{
	mAllSimDescriptions.Clear();
	try
	{
		sRemapSimDescriptionIdsOnImport = !IsTravelImport;
		reader.ReadInt32(3921240069u, out var value, 0);
		for (uint num = 0u; num < value; num++)
		{
			IPropertyStreamReader child = reader.GetChild(num);
			SimDescription simDescription = new SimDescription();
			if (simDescription.ImportContent(resKeyTable, objIdTable, child))
			{
				Add(simDescription, simDescription.CreatedSim);
			}
		}
	}
	finally
	{
		sRemapSimDescriptionIdsOnImport = false;
	}
	return true;
}
