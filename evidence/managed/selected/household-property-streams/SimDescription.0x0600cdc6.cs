// Original PC 1.67 package assembly; actual ILSpy output, not a reconstructed implementation.
// Analyst note: index identities and complete CIL are in selected/household-property-streams.
// Managed Unicode/version semantics differ from the native byte-string PropertyStream.
// Selected complete member of Sims3.Gameplay.CAS.SimDescription.
using System;
using System.Collections.Generic;
using Sims3.Gameplay.ActorSystems;
using Sims3.Gameplay.Careers;
using Sims3.Gameplay.CelebritySystem;
using Sims3.Gameplay.DreamsAndPromises;
using Sims3.Gameplay.Objects;
using Sims3.Gameplay.Objects.Environment;
using Sims3.Gameplay.Opportunities;
using Sims3.Gameplay.Services;
using Sims3.Gameplay.Skills;
using Sims3.Gameplay.Socializing;
using Sims3.Gameplay.Visa;
using Sims3.SimIFace;
using Sims3.SimIFace.CAS;
using Sims3.SimIFace.CustomContent;
using Sims3.UI.CAS;
using Sims3.UI.Hud;

public bool ImportContent(ResKeyTable resKeyTable, ObjectIdTable objIdTable, IPropertyStreamReader reader)
{
	//IL_09ef: Unknown result type (might be due to invalid IL or missing references)
	//IL_09f2: Unknown result type (might be due to invalid IL or missing references)
	reader.ReadUint64(1752637606u, out mSimDescriptionId, 0uL);
	if (Household.sRemapSimDescriptionIdsOnImport)
	{
		ulong num = mSimDescriptionId;
		ulong num2 = MakeUniqueId();
		if (num2 != num)
		{
			Household.AddOldIdToDescription(num, this);
		}
	}
	reader.ReadUint32(1758328370u, out var value, 0u);
	mSimFlags = (CASAgeGenderFlags)value;
	reader.ReadFloat(3391843422u, out AgingYearsSinceLastAgeTransition, AgingManager.GetStaggeredSimAge(Species, Age));
	reader.ReadInt32(183048852u, out UserDaysInCurrentAge, int.MaxValue);
	if (reader.ReadInt32(2625491639u, out var value2, -1))
	{
		mSkinToneKey = resKeyTable[value2];
	}
	reader.ReadFloat(3647343526u, out mSkinToneIndex, 0f);
	reader.ReadFloat(2843729478u, out mSecondaryNormalMapWeights[0], 0f);
	reader.ReadFloat(3384101496u, out mSecondaryNormalMapWeights[1], 0f);
	if (reader.ReadUint32(1343616996u, out var values))
	{
		mHairColors[0].Genetic.ARGB = values[0];
		mHairColors[0].Dye.ARGB = values[1];
		mHairColors[0].UseDye = values[2] == 1;
	}
	if (reader.ReadUint32(4135393849u, out values))
	{
		mHairColors[1].Genetic.ARGB = values[0];
		mHairColors[1].Dye.ARGB = values[1];
		mHairColors[1].UseDye = values[2] == 1;
	}
	if (reader.ReadUint32(2471843458u, out values))
	{
		mHairColors[2].Genetic.ARGB = values[0];
		mHairColors[2].Dye.ARGB = values[1];
		mHairColors[2].UseDye = values[2] == 1;
	}
	if (reader.ReadUint32(1055971375u, out values))
	{
		mHairColors[3].Genetic.ARGB = values[0];
		mHairColors[3].Dye.ARGB = values[1];
		mHairColors[3].UseDye = values[2] == 1;
	}
	if (reader.ReadUint32(1836098543u, out values))
	{
		mEyebrowColor.Genetic.ARGB = values[0];
		mEyebrowColor.Dye.ARGB = values[1];
		mEyebrowColor.UseDye = values[2] == 1;
	}
	if (reader.ReadUint32(1836098544u, out values))
	{
		mBodyHairColor.Genetic.ARGB = values[0];
		mBodyHairColor.Dye.ARGB = values[1];
		mBodyHairColor.UseDye = values[2] == 1;
	}
	if (reader.ReadUint32(760180186u, out values))
	{
		mFacialHairColors[0].Genetic.ARGB = values[0];
		mFacialHairColors[0].Dye.ARGB = values[1];
		mFacialHairColors[0].UseDye = values[2] == 1;
		mFacialHairColors[3] = (mFacialHairColors[2] = (mFacialHairColors[1] = mFacialHairColors[0]));
	}
	else
	{
		if (reader.ReadUint32(4209090540u, out values))
		{
			mFacialHairColors[0].Genetic.ARGB = values[0];
			mFacialHairColors[0].Dye.ARGB = values[1];
			mFacialHairColors[0].UseDye = values[2] == 1;
		}
		if (reader.ReadUint32(2711019873u, out values))
		{
			mFacialHairColors[1].Genetic.ARGB = values[0];
			mFacialHairColors[1].Dye.ARGB = values[1];
			mFacialHairColors[1].UseDye = values[2] == 1;
		}
		if (reader.ReadUint32(4258326570u, out values))
		{
			mFacialHairColors[2].Genetic.ARGB = values[0];
			mFacialHairColors[2].Dye.ARGB = values[1];
			mFacialHairColors[2].UseDye = values[2] == 1;
		}
		if (reader.ReadUint32(3921444919u, out values))
		{
			mFacialHairColors[3].Genetic.ARGB = values[0];
			mFacialHairColors[3].Dye.ARGB = values[1];
			mFacialHairColors[3].UseDye = values[2] == 1;
		}
	}
	if (reader.ReadInt32(4180891374u, out value2, -1))
	{
		mDefaultOutfitKey = resKeyTable[value2];
	}
	reader.ReadString(3947983776u, out mFirstName, "");
	reader.ReadString(1883753236u, out mLastName, "");
	reader.ReadUint32(125685374u, out value, 0u);
	BeardUsesHairColor = value == 1;
	reader.ReadUint32(3390394279u, out value, 0u);
	EyebrowsUseHairColor = value == 1;
	reader.ReadUint32(3390394280u, out value, 0u);
	BodyHairUsesHairColor = value == 1;
	reader.ReadUint32(992007321u, out value, 1u);
	PropagateHairStyle = value == 1;
	reader.ReadUint32(1723164892u, out value, 0u);
	mDeathStyle = (DeathType)value;
	reader.ReadBool(2257506273u, out var value3, defaultValue: false);
	IsNeverSelectable = value3;
	reader.ReadBool(130688069u, out var value4, defaultValue: false);
	IsGhost = value4;
	reader.ReadFloat(167162779u, out mLifetimeHappiness, 0f);
	reader.ReadFloat(3632991774u, out mSpendableHappiness, 0f);
	reader.ReadBool(797789854u, out var value5, defaultValue: true);
	AgingEnabled = value5;
	reader.ReadUint32(176483828u, out value, 12u);
	mZodiacSign = (Zodiac)value;
	reader.ReadUint32(183048650u, out value, 0u);
	AlmaMater = (AlmaMater)value;
	reader.ReadString(183661639u, out mAlmaMaterName, "");
	reader.ReadUint32(183048646u, out value, 0u);
	GraduationType = (GraduationType)value;
	reader.ReadUint32(376622899u, out value, 0u);
	mFavouriteMusicType = (FavoriteMusicType)value;
	reader.ReadUint32(904967806u, out value, 0u);
	mFavouriteFoodType = (FavoriteFoodType)value;
	reader.ReadUint32(2418364207u, out value, 0u);
	mFavouriteColor = new Color(value);
	reader.ReadString(647611013u, out mBio, "");
	reader.ReadUint32(3732926166u, out value, 0u);
	ServiceHistory = (ServiceType)value;
	reader.ReadInt32(2384582960u, out value2, 0);
	mHomeWorld = (WorldName)value2;
	reader.ReadFloat(233156252u, out mAlienDNAPercentage, 0f);
	IPropertyStreamReader child = reader.GetChild(2805376650u);
	if (child != null)
	{
		mInitialShape.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(2533203143u);
	if (child != null)
	{
		mCurrentShape.ImportContent(resKeyTable, objIdTable, child);
	}
	reader.ReadUint32(2011243416u, out value, 0u);
	mVoiceVariation = (Sims3.SimIFace.CAS.VoiceVariationType)value;
	reader.ReadFloat(1170154690u, out mVoicePitchModifier, 0.5f);
	if (reader.ReadInt32(4008810486u, out value2, -1))
	{
		mGeneticHairstyleKey = resKeyTable[value2];
	}
	for (uint num3 = 0u; num3 < 8; num3++)
	{
		if (reader.ReadInt32(193344880 + num3, out value2, -1))
		{
			ref ResourceKey reference = ref mGeneticBodyhairStyleKeys[num3];
			reference = resKeyTable[value2];
		}
	}
	child = reader.GetChild(1481885306u);
	if (child != null)
	{
		mOutfits.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(3152150573u);
	if (child != null)
	{
		ImportSpecialOutfitIndicies(reader);
	}
	reader.ReadUint32(1533688765u, out var _, 0u);
	reader.ReadUint64(1769582843u, out var values2);
	ImportContentChild(resKeyTable, objIdTable, reader, 155067715u, TraitManager);
	ulong[] array = values2;
	foreach (ulong num4 in array)
	{
		TraitNames traitNames = (TraitNames)num4;
		if (TraitManager.GetTraitFromDictionary(traitNames) != null)
		{
			if (TraitManager.GetTraitFromDictionary(traitNames).IsHidden)
			{
				TraitManager.AddHiddenElement(traitNames);
			}
			else
			{
				TraitManager.AddElement(traitNames);
			}
		}
	}
	MiniSimDescription miniSimDescription = MiniSimDescription.Find(SimDescriptionId);
	if (GameStates.IsTravelling && miniSimDescription != null)
	{
		CASGenealogy = (IGenealogy)(object)miniSimDescription.Genealogy;
	}
	else
	{
		mGenealogy = new Genealogy(this);
		ImportContentChild(resKeyTable, objIdTable, reader, 2057337028u, mGenealogy);
	}
	reader.ReadUint32(2216711505u, out LifetimeWish, 0u);
	reader.ReadBool(2264331350u, out var value7, defaultValue: false);
	HasCompletedLifetimeWish = value7;
	if (GameStates.IsTravelling)
	{
		reader.ReadInt32(350667110u, out var value8, 0);
		CharismaStats.KnownSims = value8;
		reader.ReadInt32(2680064337u, out value8, 0);
		CharismaStats.FriendSims = value8;
		reader.ReadInt32(2649604395u, out value8, 0);
		CharismaStats.BestFriendSims = value8;
		reader.ReadInt32(1611073300u, out value8, 0);
		CharismaStats.JokesSuccesfullyTold = value8;
		reader.ReadInt32(426808711u, out value8, 0);
		CharismaStats.TraitsLearned = value8;
		reader.ReadBool(150904202u, out var value9, defaultValue: false);
		HadFirstKiss = value9;
		reader.ReadBool(150904210u, out value9, defaultValue: false);
		HadFirstRomance = value9;
		reader.ReadBool(150904214u, out value9, defaultValue: false);
		HadFirstWooHoo = value9;
		reader.ReadBool(150904215u, out value9, defaultValue: false);
		HadBachelorParty = value9;
	}
	uint value10 = 0u;
	reader.ReadUint32(226598758u, out value10, 0u);
	if (value10 != 0 && Enum.IsDefined(typeof(OccultTypes), value10))
	{
		OccultTypes occultType = (OccultTypes)value10;
		mSupernaturalData = CASSupernaturalData.Create(occultType);
		mSupernaturalData.ImportContent(resKeyTable, objIdTable, reader);
		if (mSupernaturalData is CASGhostData cASGhostData)
		{
			mDeathStyle = cASGhostData.DeathStyle;
		}
	}
	else
	{
		mSupernaturalData = null;
	}
	byte value11 = 0;
	reader.ReadByte(3475610776u, out value11, 0);
	KnownSnowmanTypes = (Snowman.SnowmanFlagType)value11;
	child = reader.GetChild(2368840039u);
	if (child != null)
	{
		if (SkillManager == null)
		{
			SkillManager = new SkillManager(this);
		}
		SkillManager.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(243549899u);
	if (child != null)
	{
		if (VisaManager == null)
		{
			VisaManager = new VisaManager(this);
		}
		VisaManager.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(243549900u);
	if (child != null)
	{
		if (CelebrityManager == null)
		{
			CelebrityManager = new CelebrityManager(SimDescriptionId);
		}
		CelebrityManager.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(1916741826u);
	if (child != null)
	{
		if (LifeEventManager == null)
		{
			LifeEventManager = new LifeEventManager(this);
		}
		LifeEventManager.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(146573769u);
	if (child != null)
	{
		if (OccultManager == null)
		{
			OccultManager = new OccultManager(this);
		}
		OccultManager.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(146573776u);
	if (child != null)
	{
		SetReputationStatisticsIfNecessary();
		mReputation.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(181659961u);
	if (child != null)
	{
		if (MidlifeCrisisManager == null && IsHuman)
		{
			MidlifeCrisisManager = new MidlifeCrisisManager(this, createInitialState: false);
		}
		if (MidlifeCrisisManager != null)
		{
			MidlifeCrisisManager.ImportContent(resKeyTable, objIdTable, child);
		}
	}
	if (IsPet)
	{
		child = reader.GetChild(4095203657u);
		if (child != null)
		{
			if (PetManager == null)
			{
				PetManager = CreatePetManager();
			}
			PetManager.ImportContent(resKeyTable, objIdTable, child);
		}
	}
	child = reader.GetChild(222542822u);
	if (child != null)
	{
		if (HealthManager == null)
		{
			HealthManager = new HealthManager(this, createInitialState: false);
		}
		HealthManager.ImportContent(resKeyTable, objIdTable, child);
	}
	else if (!GameUtils.IsOnVacation() && IsHuman)
	{
		HealthManager = new HealthManager(this, createInitialState: true);
	}
	child = reader.GetChild(2471919987u);
	if (child != null)
	{
		if (mTraitChipManager == null)
		{
			mTraitChipManager = new TraitChipManager(this);
		}
		mTraitChipManager.ImportContent(resKeyTable, objIdTable, child);
	}
	Fixup();
	child = reader.GetChild(3850691202u);
	if (child != null)
	{
		if (CareerManager == null)
		{
			CareerManager = new CareerManager(this);
		}
		CareerManager.ImportContent(resKeyTable, objIdTable, child);
	}
	reader.ReadInt32(2081779727u, out var value12, 0);
	if (value12 > 0)
	{
		ReadBookDataList = new Dictionary<string, ReadBookData>(value12);
		for (uint num5 = 0u; num5 < value12; num5++)
		{
			if (reader.ReadString(1155630664 + num5, out var value13, string.Empty))
			{
				ReadBookData readBookData = new ReadBookData();
				ImportContentChild(resKeyTable, objIdTable, reader, 2421688682u + num5, readBookData);
				ReadBookDataList[value13] = readBookData;
			}
		}
	}
	child = reader.GetChild(1064352938u);
	if (child != null)
	{
		if (Pregnancy == null)
		{
			if (IsHuman)
			{
				Pregnancy = new Pregnancy();
			}
			else
			{
				Pregnancy = new PetPregnancy();
			}
		}
		Pregnancy.ImportContent(resKeyTable, objIdTable, child);
	}
	child = reader.GetChild(3825310104u);
	if (child != null)
	{
		if (OpportunityHistory == null)
		{
			OpportunityHistory = new OpportunityHistory();
		}
		OpportunityHistory.ImportContent(resKeyTable, objIdTable, child);
	}
	reader.ReadBool(148913893u, out var value14, defaultValue: false);
	NeedsOpportunityImport = value14;
	child = reader.GetChild(3039377755u);
	if (child != null)
	{
		DnPExportData = new DnPExportData();
		DnPExportData.ImportContent(resKeyTable, objIdTable, child);
		if (CreatedSim != null)
		{
			CreatedSim.SetUpDnPManagerFromExport();
		}
	}
	else
	{
		DnPExportData = null;
	}
	child = reader.GetChild(142971188u);
	if (child != null)
	{
		if (RelicStats == null)
		{
			RelicStats = new RelicStatTracking(this);
		}
		RelicStats.ImportContent(resKeyTable, objIdTable, child);
		RelicStats.SetSimDescription(this);
	}
	child = reader.GetChild(4233889236u);
	if (child != null)
	{
		if (TombStats == null)
		{
			TombStats = new TombStatTracking(this);
		}
		TombStats.ImportContent(resKeyTable, objIdTable, child);
		TombStats.SetSimDescription(this);
	}
	child = reader.GetChild(143219793u);
	if (child != null)
	{
		child.ReadInt32(0u, out var value15, 0);
		TravelBuffs = new List<BuffInstance>();
		while (value15 > 0)
		{
			IPropertyStreamReader child2 = child.GetChild((uint)value15);
			if (child2 != null)
			{
				BuffInstance buffInstance = BuffInstance.ImportBuffInstance(resKeyTable, objIdTable, child2);
				if (buffInstance != null)
				{
					TravelBuffs.Add(buffInstance);
				}
			}
			value15--;
		}
	}
	if (reader.ReadInt32(3836047044u, out var value16, 0))
	{
		mPreferredVehicleGuid = objIdTable[value16];
	}
	Singing = new SingingInfo(this);
	ImportContentChild(resKeyTable, objIdTable, reader, 145650758u, Singing);
	ImportSurgeryBlends(reader);
	child = reader.GetChild(240491398u);
	if (child != null)
	{
		if (CareerManager == null)
		{
			CareerManager = new CareerManager(this);
		}
		if (CareerManager.DegreeManager != null)
		{
			CareerManager.DegreeManager.ImportContent(resKeyTable, objIdTable, child);
		}
	}
	return true;
}
