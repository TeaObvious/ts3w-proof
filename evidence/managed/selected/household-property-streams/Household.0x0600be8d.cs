// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.CAS.Household.
using System;
using System.Collections.Generic;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Services;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
{
	reader.ReadString(1357107804u, out mName, "");
	reader.ReadInt32(867787827u, out mFamilyFunds, 0);
	reader.ReadString(3647669240u, out mBioText, "");
	reader.ReadInt32(145720536u, out mUnpaidBills, 0);
	reader.ReadInt32(3338514733u, out mLotHomeWorth, 0);
	long value = DateTime.Now.ToBinary();
	reader.ReadInt64(1669643236u, out value, DateTime.Now.ToBinary());
	mExportTime = DateTime.FromBinary(value);
	reader.ReadBool(571722353u, out mbLifetimeHappinessNotificationShown, defaultValue: false);
	IPropertyStreamReader child = reader.GetChild(2449095374u);
	if (child != null)
	{
		mMembers.ImportContent(resKeyTable, objIdTable, child);
	}
	foreach (SimDescription allSimDescription in mMembers.AllSimDescriptionList)
	{
		allSimDescription.OnHouseholdChanged(this, bUpdateHome: true);
		allSimDescription.CareerManager.OnLoadFixup();
		allSimDescription.CareerManager.Occupation?.RepairLocation();
	}
	foreach (SimDescription allSimDescription2 in mMembers.AllSimDescriptionList)
	{
		if (allSimDescription2.Pregnancy != null)
		{
			if (sOldIdToNewSimDescriptionMap != null && sOldIdToNewSimDescriptionMap.TryGetValue(allSimDescription2.Pregnancy.DadDescriptionId, out var value2))
			{
				allSimDescription2.Pregnancy.DadDescriptionId = value2.SimDescriptionId;
			}
			else if (!IsTravelImport && mMembers.GetSimDescriptionFromId(allSimDescription2.Pregnancy.DadDescriptionId) == null)
			{
				allSimDescription2.Pregnancy.DadDescriptionId = 0uL;
			}
		}
	}
	child = reader.GetChild(2706303414u);
	if (child != null)
	{
		ImportRelationships(resKeyTable, objIdTable, child);
	}
	reader.ReadInt32(141731785u, out mAncientCoinCount, 0);
	reader.ReadUint64(1193523264u, out var value3, 0uL);
	UniqueObjectsObtained = (UniqueObjectKey)value3;
	mKeystonePanelsUsed = new PairedListDictionary<WorldName, List<string>>();
	reader.ReadInt32(129814813u, out var value4, 0);
	for (uint num = 0u; num < value4; num++)
	{
		reader.ReadInt32(146578516 + num, out var value5, -1);
		WorldName key = (WorldName)value5;
		reader.ReadString(163369191 + num, out var value6);
		mKeystonePanelsUsed[key] = new List<string>(value6);
	}
	mCompletedHouseholdOpportunities.Clear();
	reader.ReadUint64(149611345u, out var values);
	ulong[] array = values;
	foreach (ulong key2 in array)
	{
		mCompletedHouseholdOpportunities.Add(key2, value: true);
	}
	reader.ReadUint32(149611346u, out mMoneySaved);
	if (mMoneySaved == null || mMoneySaved.Length != 3)
	{
		mMoneySaved = new uint[3];
	}
	reader.ReadUint64(153835052u, out var values2);
	ulong[] array2 = values2;
	foreach (ulong item in array2)
	{
		mWardrobeCasParts.Add(item);
	}
	reader.ReadUint64(156333552u, out var value7, 0uL);
	AddServiceUniforms((ServiceType)value7);
	return true;
}
