// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.CAS.Household.
using System;
using System.Collections.Generic;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
{
	string name = mName;
	string bioText = mBioText;
	if (!DownloadContent.IsDevBuild())
	{
		name = Name;
		bioText = BioText;
	}
	writer.WriteString(1357107804u, name);
	writer.WriteInt32(867787827u, mFamilyFunds);
	writer.WriteString(3647669240u, bioText);
	writer.WriteInt64(1669643236u, DateTime.Now.ToBinary());
	writer.WriteBool(571722353u, mbLifetimeHappinessNotificationShown);
	writer.WriteInt32(145720536u, mUnpaidBills);
	if (LotHome != null)
	{
		writer.WriteInt32(3338514733u, LotHome.Cost);
	}
	IPropertyStreamWriter writer2 = writer.CreateChild(2449095374u);
	mMembers.ExportContent(resKeyTable, objIdTable, writer2);
	writer.CommitChild();
	writer2 = null;
	writer2 = writer.CreateChild(2706303414u);
	ExportRelationships(resKeyTable, objIdTable, writer2);
	writer.CommitChild();
	writer2 = null;
	writer.WriteInt32(141731785u, mAncientCoinCount);
	writer.WriteUint64(1193523264u, (ulong)UniqueObjectsObtained);
	int count = mKeystonePanelsUsed.Count;
	writer.WriteInt32(129814813u, count);
	uint num = 0u;
	foreach (WorldName key in mKeystonePanelsUsed.Keys)
	{
		writer.WriteInt32(146578516 + num, (int)key);
		List<string> list = new List<string>(mKeystonePanelsUsed[key]);
		writer.WriteString(163369191 + num, list.ToArray());
		num++;
	}
	ulong[] array = new ulong[mCompletedHouseholdOpportunities.Count];
	mCompletedHouseholdOpportunities.Keys.CopyTo(array, 0);
	writer.WriteUint64(149611345u, array);
	writer.WriteUint32(149611346u, mMoneySaved);
	ulong[] array2 = new ulong[mWardrobeCasParts.Count];
	mWardrobeCasParts.CopyTo(array2, 0);
	writer.WriteUint64(153835052u, array2);
	writer.WriteUint64(156333552u, (ulong)mServiceUniforms);
	return true;
}
