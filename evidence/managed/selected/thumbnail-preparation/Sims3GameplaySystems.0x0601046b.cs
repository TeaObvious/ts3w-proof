// Original PC1.67 package assembly; actual ILSpy selected-member output.
// Analyst: original managed pose/layout/outfit policy remains in game assemblies.
// MethodDef/RVA and complete typed CIL are indexed beside this file.
using Sims3.Gameplay.CAS;

private static bool PrepareHouseholdForThumbnail(ulong householdId)
{
	Household household = null;
	foreach (Household sHousehold in Household.sHouseholdList)
	{
		if (sHousehold.HouseholdId == householdId)
		{
			household = sHousehold;
			break;
		}
	}
	if (household != null)
	{
		return PrepareCASHouseholdForThumbnail(household);
	}
	return false;
}
