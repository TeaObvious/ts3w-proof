// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	private void CopyCoreFileds(SimDescriptionCore sdCore)
	{
		FirstName = sdCore.FirstNameUnlocalized;
		LastName = sdCore.LastNameUnlocalized;
		mHairColors = sdCore.HairColors;
		mEyebrowColor = sdCore.EyebrowColor;
		mBodyHairColor = sdCore.BodyHairColor;
		mFacialHairColors = sdCore.FacialHairColors;
		mBeardUsesHairColor = sdCore.BeardUsesHairColor;
		mEyebrowsUseHairColor = sdCore.EyebrowsUseHairColor;
		mBodyHairUsesHairColor = sdCore.BodyHairUsesHairColor;
		PropagateHairStyle = sdCore.PropagateHairStyle;
		mGeneticHairstyleKey = sdCore.GeneticHairstyleKey;
		for (uint num = 0u; num < 8; num++)
		{
			ref ResourceKey reference = ref mGeneticBodyhairStyleKeys[num];
			reference = sdCore.GeneticBodyhairStyleKeys[num];
		}
		mHomeWorld = sdCore.HomeWorld;
		if (sdCore.AgingYearsSinceLastAgeTransition != -1f)
		{
			AgingYearsSinceLastAgeTransition = sdCore.AgingYearsSinceLastAgeTransition;
		}
		LifetimeWish = sdCore.LifetimeWish;
		mFavouriteMusicType = sdCore.mFavouriteMusicType;
		mFavouriteFoodType = sdCore.mFavouriteFoodType;
		mFavouriteColor = sdCore.mFavouriteColor;
		mZodiacSign = sdCore.Zodiac;
		mBio = sdCore.mBio;
		mVoiceVariation = sdCore.VoiceVariation;
		mVoicePitchModifier = sdCore.VoicePitchModifier;
		CASSupernaturalData supernaturalData = sdCore.SupernaturalData;
		if (supernaturalData != null)
		{
			AddSupernaturalData(supernaturalData.OccultType);
			mSupernaturalData.Clone(supernaturalData);
			if (mSupernaturalData is CASRobotData && mSupernaturalData is CASRobotData cASRobotData)
			{
				cASRobotData.SetupVFXDataIfNeeded(this, forceUpdate: true);
			}
		}
		mAlienDNAPercentage = sdCore.AlienDNAPercentage;
	}

	public void MergeTravelInformation(SimDescription importedDescription)
	{
		if (SupernaturalData != null)
		{
			RemoveSupernaturalData();
		}
		CopyCoreFileds(importedDescription);
		if (AgingState != null)
		{
			AgingState.MergeTravelInformation(importedDescription);
		}
		CardioVectorDays = importedDescription.CardioVectorDays;
		DnPExportData = importedDescription.DnPExportData;
		OpportunityHistory = importedDescription.OpportunityHistory;
		NeedsOpportunityImport = importedDescription.NeedsOpportunityImport;
		HasBFF = importedDescription.HasBFF;
		HybridVectorDays = importedDescription.HybridVectorDays;
		SetFlags(FlagField.AgingEnabled, importedDescription.AgingEnabled);
		mbAgingEnabledPushedToAgingManager = importedDescription.mbAgingEnabledPushedToAgingManager;
		HasCompletedLifetimeWish = importedDescription.HasCompletedLifetimeWish;
		Protected = importedDescription.Protected;
		mDeathStyle = importedDescription.mDeathStyle;
		mDefaultOutfitKey = importedDescription.mDefaultOutfitKey;
		mFitnessShapeDelta = importedDescription.mFitnessShapeDelta;
		mGenderPreferenceFemale = importedDescription.mGenderPreferenceFemale;
		mGenderPreferenceMale = importedDescription.mGenderPreferenceMale;
		HadFirstKiss = importedDescription.HadFirstKiss;
		HadFirstRomance = importedDescription.HadFirstRomance;
		HadFirstWooHoo = importedDescription.HadFirstWooHoo;
		HadBachelorParty = importedDescription.HadBachelorParty;
		IsVisuallyPregnant = importedDescription.IsVisuallyPregnant;
		mLifetimeHappiness = importedDescription.mLifetimeHappiness;
		MotivesDontDecay = importedDescription.MotivesDontDecay;
		mShapeDeltaMultiplier = importedDescription.mShapeDeltaMultiplier;
		mSimFlags = importedDescription.mSimFlags;
		mSkinToneIndex = importedDescription.mSkinToneIndex;
		mSecondaryNormalMapWeights = importedDescription.mSecondaryNormalMapWeights;
		mSkinToneKey = importedDescription.mSkinToneKey;
		mSpendableHappiness = importedDescription.mSpendableHappiness;
		mTimePassedSinceBodyShapeUpdate = importedDescription.mTimePassedSinceBodyShapeUpdate;
		mCurrentShape = importedDescription.mCurrentShape;
		mCurrentShape.Owner = this;
		mWeightShapeDelta = importedDescription.mWeightShapeDelta;
		ReadBookDataList = importedDescription.ReadBookDataList;
		RelicStats = importedDescription.RelicStats;
		RelicStats.SetSimDescription(this);
		TombStats = importedDescription.TombStats;
		TombStats.SetSimDescription(this);
		SarcophagusMinutesSleptInBlessed = importedDescription.SarcophagusMinutesSleptInBlessed;
		SarcophagusMinutesSleptInCursed = importedDescription.SarcophagusMinutesSleptInCursed;
		WasAdopted = importedDescription.WasAdopted;
		WasCasCreated = importedDescription.WasCasCreated;
		OccultManager.MergeOccults(importedDescription.OccultManager);
		Singing.MergeSingingInfo(importedDescription.Singing);
		CharismaStats = importedDescription.CharismaStats;
		LifeEventManager = importedDescription.LifeEventManager;
		if (importedDescription.SpoiledGiftHistory != null)
		{
			SpoiledGiftHistory = new List<DateAndTime>(importedDescription.SpoiledGiftHistory.ToArray());
		}
		if (CreatedSim != null)
		{
			if (IsGhost && !importedDescription.IsGhost)
			{
				Urnstone.FindGhostsGrave(this)?.GhostToSim(CreatedSim, bResetAge: true, !IsPlayableGhost);
			}
			else if (!IsPlayableGhost && importedDescription.IsPlayableGhost)
			{
				Urnstone.SimToPlayableGhost(CreatedSim);
			}
		}
		IsGhost = importedDescription.IsGhost;
		if (CareerManager.DegreeManager != null && importedDescription.CareerManager.DegreeManager != null)
		{
			CareerManager.DegreeManager.MergeTravelData(importedDescription.CareerManager.DegreeManager);
		}
		TraitManager = new TraitManager(importedDescription.TraitManager);
		TraitManager.SetSimDescription(this);
		VisaManager.MergeVisaData(importedDescription.VisaManager);
		SkillManager.MergeTravelData(importedDescription.SkillManager);
		if (importedDescription.TraitChipManager != null)
		{
			TraitChipManager.MergeTravelData(importedDescription.TraitChipManager);
		}
		if (CelebrityManager == null)
		{
			CelebrityManager = new CelebrityManager(mSimDescriptionId);
		}
		CelebrityManager.MergeTravelData(importedDescription.CelebrityManager);
		LifeEventManager.MergeTravelData(this, importedDescription.LifeEventManager);
		mOutfits = importedDescription.mOutfits;
		mSpecialOutfitIndices = importedDescription.mSpecialOutfitIndices;
		if (CreatedSim != null)
		{
			CreatedSim.SwitchToOutfitWithoutSpin(OutfitCategories.Everyday);
		}
		CASGenealogy = importedDescription.CASGenealogy;
		if (importedDescription.mPreferredVehicleGuid != ObjectGuid.InvalidObjectGuid)
		{
			mPreferredVehicleGuid = importedDescription.mPreferredVehicleGuid;
		}
		if (DnPExportData != null && CreatedSim != null)
		{
			CreatedSim.SetUpDnPManagerFromExport();
		}
		mReputation = importedDescription.mReputation;
		if (PetManager == null)
		{
			PetManager = CreatePetManager();
		}
	}

	public void MergeTravelInformation(MiniSimDescription msd)
	{
		foreach (MiniRelationship miniRelationship in msd.MiniRelationships)
		{
			SimDescription simDescription = Find(miniRelationship.SimDescriptionId);
			if (simDescription == null)
			{
				continue;
			}
			Relationship unsafely = Relationship.GetUnsafely(this, simDescription);
			if (unsafely != null)
			{
				float num = miniRelationship.Value - unsafely.LTR.Liking;
				if (num != 0f)
				{
					unsafely.LTR.UpdateLiking(num);
				}
				if (unsafely.CurrentLTR != miniRelationship.CurrentLTR)
				{
					unsafely.ForceChangeState(miniRelationship.CurrentLTR);
				}
				RomanceVisibilityState.MergeTravelInformationOnTravelBackHome(miniRelationship, unsafely);
			}
		}
		CASGenealogy = msd.CASGenealogy;
		if (AgingState != null)
		{
			AgingState.MergeTravelInformation(msd);
		}
	}

	public void MergePregnancyInformation(SimDescription importedDescription)
	{
		if (Pregnancy == null && importedDescription.Pregnancy != null)
		{
			Pregnancy.StartFromMerge(CreatedSim, importedDescription.Pregnancy);
		}
		if (Pregnancy != null)
		{
			if (importedDescription.Pregnancy != null)
			{
				Pregnancy.MergeData(importedDescription.Pregnancy);
			}
			else
			{
				ClearPregnancyData();
			}
		}
	}
