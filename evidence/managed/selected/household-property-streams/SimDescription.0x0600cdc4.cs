// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.CAS.SimDescription.
using System.Collections.Generic;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.DreamsAndPromises;
using Sims3.Gameplay.Objects;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public bool ExportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamWriter writer)
{
	//IL_087d: Unknown result type (might be due to invalid IL or missing references)
	//IL_0887: Expected I4, but got Unknown
	writer.WriteUint64(1752637606u, SimDescriptionId);
	writer.WriteUint32(1758328370u, (uint)mSimFlags);
	writer.WriteFloat(3391843422u, AgingYearsSinceLastAgeTransition);
	writer.WriteInt32(183048852u, UserDaysInCurrentAge);
	writer.WriteInt32(2625491639u, resKeyTable.AddKey(mSkinToneKey));
	writer.WriteFloat(3647343526u, mSkinToneIndex);
	writer.WriteFloat(2843729478u, mSecondaryNormalMapWeights[0]);
	writer.WriteFloat(3384101496u, mSecondaryNormalMapWeights[1]);
	writer.WriteInt32(4180891374u, resKeyTable.AddKey(mDefaultOutfitKey));
	writer.WriteUint32(1343616996u, new uint[3]
	{
		HairColors[0].Genetic.ARGB,
		HairColors[0].Dye.ARGB,
		HairColors[0].UseDye ? 1u : 0u
	});
	writer.WriteUint32(4135393849u, new uint[3]
	{
		HairColors[1].Genetic.ARGB,
		HairColors[1].Dye.ARGB,
		HairColors[1].UseDye ? 1u : 0u
	});
	writer.WriteUint32(2471843458u, new uint[3]
	{
		HairColors[2].Genetic.ARGB,
		HairColors[2].Dye.ARGB,
		HairColors[2].UseDye ? 1u : 0u
	});
	writer.WriteUint32(1055971375u, new uint[3]
	{
		HairColors[3].Genetic.ARGB,
		HairColors[3].Dye.ARGB,
		HairColors[3].UseDye ? 1u : 0u
	});
	writer.WriteUint32(1836098543u, new uint[3]
	{
		EyebrowColor.Genetic.ARGB,
		EyebrowColor.Dye.ARGB,
		EyebrowColor.UseDye ? 1u : 0u
	});
	writer.WriteUint32(1836098544u, new uint[3]
	{
		BodyHairColor.Genetic.ARGB,
		BodyHairColor.Dye.ARGB,
		BodyHairColor.UseDye ? 1u : 0u
	});
	writer.WriteUint32(4209090540u, new uint[3]
	{
		FacialHairColors[0].Genetic.ARGB,
		FacialHairColors[0].Dye.ARGB,
		FacialHairColors[0].UseDye ? 1u : 0u
	});
	writer.WriteUint32(2711019873u, new uint[3]
	{
		FacialHairColors[1].Genetic.ARGB,
		FacialHairColors[1].Dye.ARGB,
		FacialHairColors[1].UseDye ? 1u : 0u
	});
	writer.WriteUint32(4258326570u, new uint[3]
	{
		FacialHairColors[2].Genetic.ARGB,
		FacialHairColors[2].Dye.ARGB,
		FacialHairColors[2].UseDye ? 1u : 0u
	});
	writer.WriteUint32(3921444919u, new uint[3]
	{
		FacialHairColors[3].Genetic.ARGB,
		FacialHairColors[3].Dye.ARGB,
		FacialHairColors[3].UseDye ? 1u : 0u
	});
	writer.WriteUint32(125685374u, BeardUsesHairColor ? 1u : 0u);
	writer.WriteUint32(3390394279u, EyebrowsUseHairColor ? 1u : 0u);
	writer.WriteUint32(3390394280u, BodyHairUsesHairColor ? 1u : 0u);
	writer.WriteUint32(992007321u, PropagateHairStyle ? 1u : 0u);
	if (mHousehold != null)
	{
		writer.WriteUint64(2221750924u, mHousehold.HouseholdId);
	}
	string firstName = mFirstName;
	string lastName = mLastName;
	string bio = mBio;
	if (!DownloadContent.IsDevBuild())
	{
		firstName = FirstName;
		lastName = LastName;
		bio = Bio;
	}
	writer.WriteString(3947983776u, firstName);
	writer.WriteString(1883753236u, lastName);
	writer.WriteUint32(1723164892u, (uint)mDeathStyle);
	writer.WriteBool(2257506273u, IsNeverSelectable);
	writer.WriteBool(797789854u, AgingEnabled);
	writer.WriteFloat(167162779u, mLifetimeHappiness);
	writer.WriteFloat(3632991774u, mSpendableHappiness);
	writer.WriteUint32(376622899u, (uint)mFavouriteMusicType);
	writer.WriteUint32(904967806u, (uint)mFavouriteFoodType);
	writer.WriteUint32(2418364207u, mFavouriteColor.ARGB);
	writer.WriteString(647611013u, bio);
	writer.WriteUint32(176483828u, (uint)mZodiacSign);
	writer.WriteUint32(183048650u, (uint)AlmaMater);
	writer.WriteString(183661639u, mAlmaMaterName);
	writer.WriteUint32(183048646u, (uint)GraduationType);
	writer.WriteUint32(3732926166u, (uint)ServiceHistory);
	writer.WriteBool(808457844u, Marryable);
	writer.WriteBool(2446075705u, CanBeKilledOnJob);
	writer.WriteBool(130688069u, IsGhost);
	writer.WriteBool(103218814u, Contactable);
	writer.WriteBool(452878294u, IsPregnant);
	writer.WriteBool(1660858165u, IsVisuallyPregnant);
	writer.WriteFloat(233156252u, AlienDNAPercentage);
	IPropertyStreamWriter writer2 = writer.CreateChild(2805376650u);
	mInitialShape.ExportContent(resKeyTable, objIdTable, writer2);
	writer.CommitChild();
	writer2 = null;
	writer2 = writer.CreateChild(2533203143u);
	mCurrentShape.ExportContent(resKeyTable, objIdTable, writer2);
	writer.CommitChild();
	writer2 = null;
	writer.WriteFloat(298511592u, mFitnessShapeDelta);
	writer.WriteFloat(4088477862u, mWeightShapeDelta);
	writer.WriteFloat(1817337409u, mShapeDeltaMultiplier);
	writer.WriteUint32(2011243416u, (uint)mVoiceVariation);
	writer.WriteFloat(1170154690u, mVoicePitchModifier);
	writer.WriteInt32(4008810486u, resKeyTable.AddKey(mGeneticHairstyleKey));
	for (uint num = 0u; num < 8; num++)
	{
		writer.WriteInt32(193344880 + num, resKeyTable.AddKey(mGeneticBodyhairStyleKeys[num]));
	}
	writer.WriteInt32(2384582960u, (int)mHomeWorld);
	writer2 = writer.CreateChild(1481885306u);
	mOutfits.ExportContent(resKeyTable, objIdTable, writer2);
	writer.CommitChild();
	writer2 = null;
	writer2 = writer.CreateChild(3152150573u);
	ExportSpecialOutfitIndicies(writer);
	writer.CommitChild();
	writer2 = null;
	List<ulong> list = new List<ulong>();
	foreach (Trait item in TraitManager.List)
	{
		list.Add((ulong)item.Guid);
	}
	if (list.Count > 0)
	{
		writer.WriteUint32(1533688765u, (uint)list.Count);
		writer.WriteUint64(1769582843u, list.ToArray());
	}
	ExportContentChild(resKeyTable, objIdTable, writer, 155067715u, TraitManager);
	ExportContentChild(resKeyTable, objIdTable, writer, 2057337028u, mGenealogy);
	writer.WriteUint32(2216711505u, LifetimeWish);
	writer.WriteBool(2264331350u, HasCompletedLifetimeWish);
	if (mSupernaturalData != null)
	{
		writer.WriteUint32(226598758u, (uint)(int)mSupernaturalData.OccultType);
		mSupernaturalData.ExportContent(resKeyTable, objIdTable, writer);
	}
	ExportContentChild(resKeyTable, objIdTable, writer, 2368840039u, SkillManager);
	ExportContentChild(resKeyTable, objIdTable, writer, 3850691202u, CareerManager);
	ExportContentChild(resKeyTable, objIdTable, writer, 243549899u, VisaManager);
	ExportContentChild(resKeyTable, objIdTable, writer, 243549900u, CelebrityManager);
	ExportContentChild(resKeyTable, objIdTable, writer, 1916741826u, LifeEventManager);
	ExportContentChild(resKeyTable, objIdTable, writer, 146573769u, OccultManager);
	if (HealthManager != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 222542822u, HealthManager);
	}
	if (mReputation != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 146573776u, mReputation);
	}
	if (MidlifeCrisisManager != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 181659961u, MidlifeCrisisManager);
	}
	if (PetManager != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 4095203657u, PetManager);
	}
	writer.WriteInt32(2081779727u, ReadBookDataList.Count);
	uint num2 = 0u;
	foreach (KeyValuePair<string, ReadBookData> readBookData in ReadBookDataList)
	{
		writer.WriteString(1155630664 + num2, readBookData.Key);
		ExportContentChild(resKeyTable, objIdTable, writer, 2421688682u + num2, readBookData.Value);
		num2++;
	}
	if (IsPregnant)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 1064352938u, Pregnancy);
	}
	if (OpportunityHistory != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 3825310104u, OpportunityHistory);
	}
	writer.WriteBool(148913893u, NeedsOpportunityImport);
	if (CreatedSim != null && CreatedSim.DreamsAndPromisesManager != null)
	{
		DnPExportData = new DnPExportData(this);
		ExportContentChild(resKeyTable, objIdTable, writer, 3039377755u, DnPExportData);
	}
	else
	{
		DnPExportData = null;
	}
	if (RelicStats != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 142971188u, RelicStats);
	}
	if (TombStats != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 4233889236u, TombStats);
	}
	if (TravelBuffs != null)
	{
		int count = TravelBuffs.Count;
		IPropertyStreamWriter propertyStreamWriter = writer.CreateChild(143219793u);
		propertyStreamWriter.WriteInt32(0u, count);
		uint num3 = 1u;
		foreach (BuffInstance travelBuff in TravelBuffs)
		{
			ExportContentChild(resKeyTable, objIdTable, propertyStreamWriter, num3++, travelBuff);
		}
		writer.CommitChild();
	}
	if (mPreferredVehicleGuid != ObjectGuid.InvalidObjectGuid)
	{
		int value = objIdTable.AddId(mPreferredVehicleGuid);
		writer.WriteInt32(3836047044u, value);
	}
	if (Singing != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 145650758u, Singing);
	}
	if (GameStates.IsTravelling)
	{
		writer.WriteInt32(350667110u, CharismaStats.KnownSims);
		writer.WriteInt32(2680064337u, CharismaStats.FriendSims);
		writer.WriteInt32(2649604395u, CharismaStats.BestFriendSims);
		writer.WriteInt32(1611073300u, CharismaStats.JokesSuccesfullyTold);
		writer.WriteInt32(426808711u, CharismaStats.TraitsLearned);
		writer.WriteBool(150904202u, HadFirstKiss);
		writer.WriteBool(150904210u, HadFirstRomance);
		writer.WriteBool(150904214u, HadFirstWooHoo);
		writer.WriteBool(150904215u, HadBachelorParty);
	}
	writer.WriteByte(3475610776u, (byte)KnownSnowmanTypes);
	ExportSurgeryBlends(writer);
	if (CareerManager.DegreeManager != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 240491398u, CareerManager.DegreeManager);
	}
	if (mTraitChipManager != null)
	{
		ExportContentChild(resKeyTable, objIdTable, writer, 2471919987u, mTraitChipManager);
	}
	return true;
}
