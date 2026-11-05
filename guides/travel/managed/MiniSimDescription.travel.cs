// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
		public void UpdateMiniSim()
		{
			try
			{
				GenerateCrossWorldThumbnail(mSimDesc);
			}
			finally
			{
				sPendingSimUpdates--;
			}
		}

	[PersistableStatic(true)]
	private static Dictionary<ulong, MiniSimDescription> sMiniSims;

	private static uint sPendingSimUpdates;

	private ResourceKey mTravelKey;

	private ThumbnailKey mThumbKey;

	private ulong mSimDescriptionId;

	public ResourceKey TravelKey => mTravelKey;

	public ulong SimDescriptionId => mSimDescriptionId;

	public static void AddMiniSims()
	{
		if (sMiniSims == null)
		{
			sMiniSims = new Dictionary<ulong, MiniSimDescription>();
		}
		if (!Sims3.Gameplay.UI.Responder.Instance.ClockSpeedModel.GameSpeedLocked)
		{
			Gameflow.LockGameSpeed(Sims3.SimIFace.Gameflow.GameSpeed.Pause);
		}
		sPendingSimUpdates = 0u;
		List<SimDescription> list = new List<SimDescription>();
		if (Household.ActiveHousehold != null && GameStates.TravelerIds != null)
		{
			foreach (ulong travelerId in GameStates.TravelerIds)
			{
				list.Add(Household.ActiveHousehold.FindMember(travelerId));
			}
		}
		foreach (SimDescription item in SimDescription.GetSimDescriptionsInWorld())
		{
			FixUpForeignPregnantSims(item);
			bool flag = UpdateMiniSim(item);
			bool flag2 = false;
			if (!flag && !list.Contains(item))
			{
				foreach (SimDescription item2 in list)
				{
					if (item2 != null && Relationship.Get(item, item2, createIfNone: false) != null)
					{
						flag2 = true;
						break;
					}
				}
			}
			if (flag2)
			{
				sPendingSimUpdates++;
				MiniSimUpdater miniSimUpdater = new MiniSimUpdater(item);
				Simulator.AddObject(new OneShotFunctionTask(miniSimUpdater.UpdateMiniSim));
			}
		}
		while (sPendingSimUpdates != 0)
		{
			Simulator.Sleep(0u);
		}
		Gameflow.UnlockGameSpeed();
	}

	private static bool UpdateMiniSim(SimDescription desc)
	{
		if (sMiniSims.TryGetValue(desc.SimDescriptionId, out var value))
		{
			if (!value.SetMemberFields(desc, updateOtherMiniRelationship: false))
			{
				return ThumbnailManager.KeyExistsInDB(value.mThumbKey);
			}
		}
		else
		{
			value = new MiniSimDescription(desc, updateOtherMiniRelationship: false);
			sMiniSims.Add(desc.SimDescriptionId, value);
		}
		return false;
	}

	private bool SetMemberFields(SimDescription desc, bool updateOtherMiniRelationship)
	{
		bool result = false;
		mHomeWorld = desc.HomeWorld;
		mStatusFlags &= SimDescriptionStatus.IsInstantiated;
		mGenealogy = desc.Genealogy;
		if (mGenealogy == null)
		{
			desc.Fixup();
		}
		desc.Genealogy.ClearSimDescAddMiniSimDescription(this);
		foreach (Relationship item in Relationship.Get(desc))
		{
			AddMiniRelationship(desc, item, updateOtherMiniRelationship);
		}
		PackOutfitToDisk(desc);
		mFirstName = desc.FirstName;
		mLastName = desc.LastName;
		AgingYearsSinceLastAgeTransition = desc.AgingYearsSinceLastAgeTransition;
		if (mAgeGenderFlags != (CASAgeGenderFlags)desc.SimFlags)
		{
			result = true;
		}
		mAgeGenderFlags = (CASAgeGenderFlags)desc.SimFlags;
		mbAgingEnabled = desc.AgingEnabled;
		SimDescriptionStatus simDescriptionStatus = mStatusFlags;
		if (desc.Pregnancy != null)
		{
			mStatusFlags |= SimDescriptionStatus.Pregnant;
		}
		if (desc.IsMummy)
		{
			mStatusFlags |= SimDescriptionStatus.Mummy;
		}
		if (desc.IsFrankenstein)
		{
			mStatusFlags |= SimDescriptionStatus.Frankenstein;
		}
		if (desc.IsVampire)
		{
			mStatusFlags |= SimDescriptionStatus.Vampire;
		}
		if (desc.IsUnicorn)
		{
			mStatusFlags |= SimDescriptionStatus.Unicorn;
		}
		if (desc.IsGenie)
		{
			mStatusFlags |= SimDescriptionStatus.Genie;
		}
		if (desc.IsWerewolf)
		{
			mStatusFlags |= SimDescriptionStatus.Werewolf;
		}
		if (desc.IsFairy)
		{
			mStatusFlags |= SimDescriptionStatus.Fairy;
		}
		if (desc.IsWitch)
		{
			mStatusFlags |= SimDescriptionStatus.Witch;
		}
		if (desc.IsAlien)
		{
			mStatusFlags |= SimDescriptionStatus.Alien;
		}
		if (desc.IsMermaid)
		{
			mStatusFlags |= SimDescriptionStatus.Mermaid;
		}
		if (desc.IsEP11Bot)
		{
			mStatusFlags |= SimDescriptionStatus.Robot;
		}
		mNumSimsInHousehold = 1;
		mNumPetsInHousehold = 0;
		if (GameUtils.GetCurrentWorld() == HomeWorld)
		{
			if (desc.Household != null)
			{
				mHouseholdMembers = new List<ulong>();
				foreach (SimDescription allSimDescription in desc.Household.AllSimDescriptions)
				{
					mHouseholdMembers.Add(allSimDescription.SimDescriptionId);
				}
				desc.Household.GetNumberOfSimsAndPets(includePregnancyInCount: true, out mNumSimsInHousehold, out mNumPetsInHousehold);
			}
			if (desc.IsRich)
			{
				mStatusFlags |= SimDescriptionStatus.IsRich;
			}
			if (desc.CareerManager != null)
			{
				Occupation occupation = desc.CareerManager.Occupation;
				if (occupation != null)
				{
					JobOrServiceName = occupation.CareerEntryTitle;
					JobIcon = occupation.CareerIcon;
				}
				if (desc.CareerManager.DegreeManager != null)
				{
					desc.CareerManager.DegreeManager.GetMiniDegrees(mDegrees);
				}
			}
			else if (desc.CreatedByService != null)
			{
				JobOrServiceName = "Gameplay/Services/Title:" + desc.CreatedByService.ServiceType;
			}
			else if (desc.AssignedRole != null)
			{
				JobOrServiceName = desc.AssignedRole.CareerTitleKey;
			}
			if ((desc.Teen || desc.Child) && desc.CareerManager != null && desc.CareerManager.School != null)
			{
				SchoolName = desc.CareerManager.School.Name;
				SchoolIconName = desc.CareerManager.School.CareerIcon;
			}
		}
		mTraits = new List<TraitNames>();
		foreach (Trait item2 in desc.TraitManager.List)
		{
			mTraits.Add(item2.Guid);
		}
		mDeathStyle = desc.DeathStyle;
		mCelebrityLevel = desc.CelebrityManager.Level;
		if (desc.Contactable)
		{
			mStatusFlags |= SimDescriptionStatus.Contactable;
		}
		if (desc.IsServicePerson)
		{
			mStatusFlags |= SimDescriptionStatus.ServicePerson;
		}
		if (desc.AssignedRole != null)
		{
			mStatusFlags |= SimDescriptionStatus.AssignedRole;
		}
		if (desc.IsPlayableGhost)
		{
			mStatusFlags |= SimDescriptionStatus.PlayableGhost;
		}
		mZodiac = desc.Zodiac;
		mAlmaMater = desc.AlmaMater;
		mAlmaMaterName = desc.AlmaMaterName;
		if (mStatusFlags != simDescriptionStatus)
		{
			result = true;
		}
		return result;
	}

	public void AddMiniRelationship(SimDescription desc, Relationship r, bool updateOtherMiniRelationship)
	{
		SimDescription otherSimDescription = r.GetOtherSimDescription(desc);
		if (otherSimDescription == null)
		{
			return;
		}
		string myFamilialDescriptionFor = desc.GetMyFamilialDescriptionFor(otherSimDescription);
		MiniRelationship miniRelationship = FindMiniRelationship(otherSimDescription, createIfNotFound: true);
		miniRelationship.SimDescriptionId = otherSimDescription.SimDescriptionId;
		miniRelationship.Value = r.LTR.Liking;
		miniRelationship.LastChange = r.LTR.LastChange;
		miniRelationship.HighestLtrLiking = r.LTR.HighestLiking;
		miniRelationship.AttractionScore = r.AttractionScore;
		miniRelationship.CurrentLtr = r.LTR.CurrentLTR;
		miniRelationship.mAreRoommates = r.AreRoommates();
		LTRData lTRData = LTRData.Get(r.LTR.CurrentLTR);
		miniRelationship.Entry = lTRData.GetRelationshipText(desc, otherSimDescription);
		miniRelationship.CurrentLTRNameLocalized = lTRData.GetName(desc, otherSimDescription);
		miniRelationship.FamilialString = myFamilialDescriptionFor;
		ShortTermContext sTC = r.STC;
		STCData sTCData = STCData.Get(sTC.CurrentSTC);
		if (sTCData != null)
		{
			if (!sTC.IsPerceivedSim(otherSimDescription))
			{
				miniRelationship.STCEntry = sTCData.Text(desc, otherSimDescription);
			}
			else if (sTCData.IsSymmetric)
			{
				miniRelationship.STCEntry = sTCData.Text(desc, otherSimDescription);
			}
			else
			{
				miniRelationship.STCEntry = sTCData.PassiveText(desc, otherSimDescription);
			}
		}
		else
		{
			miniRelationship.STCEntry = string.Empty;
		}
		miniRelationship.IsPetRelationship = r.IsPetRelationship;
		miniRelationship.IsPetToPetRelationship = r.IsPetToPetRelationship;
		miniRelationship.Type = RelationshipCategory.kJustKnown;
		if (r.AreFriendsOrRomantic())
		{
			miniRelationship.Type |= RelationshipCategory.kFriend;
		}
		Occupation occupation = desc.Occupation;
		if (occupation != null)
		{
			if (occupation.Coworkers != null)
			{
				foreach (SimDescription coworker in occupation.Coworkers)
				{
					if (coworker == otherSimDescription)
					{
						miniRelationship.Type |= RelationshipCategory.kCoworker;
						miniRelationship.CoworkerTitle = occupation.GetCurLevelCoworkerTitle(coworker);
						break;
					}
				}
			}
			if (otherSimDescription == occupation.Boss)
			{
				miniRelationship.Type |= RelationshipCategory.kBoss;
			}
		}
		if (desc.Household != null && desc.Household.AllSimDescriptions != null)
		{
			foreach (SimDescription allSimDescription in desc.Household.AllSimDescriptions)
			{
				if (allSimDescription == otherSimDescription)
				{
					miniRelationship.Type |= RelationshipCategory.kRelative;
				}
			}
		}
		if (desc.IsVampire && desc.CreatedSim != null)
		{
			Sim createdSim = desc.CreatedSim;
			if (createdSim.OccultManager.GetOccultType(OccultTypes.Vampire) is OccultVampire occultVampire && occultVampire.HuntedSimDescription == otherSimDescription)
			{
				miniRelationship.Type |= RelationshipCategory.kHuntedByVampire;
			}
		}
		InformationLearnedAboutSim informationLearnedAboutSim = r.InformationAbout(otherSimDescription);
		miniRelationship.TraitsDisplayed.Clear();
		foreach (Trait item in otherSimDescription.TraitManager.List)
		{
			if (!item.IsVisible || !Localization.HasLocalizationString(item.TraitNameInfo))
			{
				continue;
			}
			bool flag = false;
			foreach (TraitNames trait in informationLearnedAboutSim.Traits)
			{
				if (item.Guid == trait)
				{
					miniRelationship.TraitsDisplayed.Add(trait);
					flag = true;
					break;
				}
			}
			if (!flag)
			{
				miniRelationship.TraitsDisplayed.Add(TraitNames.Unknown);
			}
		}
		if (otherSimDescription.CareerManager != null && otherSimDescription.CareerManager.DegreeManager != null)
		{
			foreach (IDegreeEntry completedDegreeEntry in otherSimDescription.CareerManager.DegreeManager.GetCompletedDegreeEntries())
			{
				if (informationLearnedAboutSim.KnowsDegree((AcademicDegreeNames)completedDegreeEntry.DegreeGuid))
				{
					miniRelationship.DegreesKnown.Add((AcademicDegreeNames)completedDegreeEntry.DegreeGuid);
				}
			}
		}
		miniRelationship.SetFlags(MiniRelationship.FlagField.KnowsCareer, informationLearnedAboutSim.CareerKnown && otherSimDescription.TeenOrAbove);
		miniRelationship.SetFlags(MiniRelationship.FlagField.KnowsPartner, informationLearnedAboutSim.PartnerKnown);
		miniRelationship.SetFlags(MiniRelationship.FlagField.SignKnown, informationLearnedAboutSim.SignKnown);
		if (desc.Partner == otherSimDescription)
		{
			PartnerSimDescriptionId = otherSimDescription.SimDescriptionId;
		}
		miniRelationship.SetFlags(MiniRelationship.FlagField.IsKnownRich, informationLearnedAboutSim.IsRichAndKnownToBeRich);
		miniRelationship.InteractionBits = r.LTR.LTRInteractionBits;
		float romanceVisibilityPoints = 0f;
		RomanceVisibilityStateType romanceState = RomanceVisibilityStateType.None;
		RomanceVisibilityState romanceVisibilityState = r.RomanceVisibilityState;
		bool add = false;
		if (romanceVisibilityState != null)
		{
			romanceVisibilityPoints = romanceVisibilityState.Points;
			romanceState = romanceVisibilityState.GetRomanceVisibilityStateForMsdCreation(desc, otherSimDescription);
			add = romanceVisibilityState.IsActive;
		}
		miniRelationship.RomanceState = romanceState;
		miniRelationship.RomanceVisibilityPoints = romanceVisibilityPoints;
		miniRelationship.SetFlags(MiniRelationship.FlagField.IsRomanceActive, add);
		if (updateOtherMiniRelationship)
		{
			UpdateOtherMiniRelationship(otherSimDescription, r);
		}
	}

	private bool PackOutfitToDisk(SimDescription desc)
	{
		SimOutfit outfit = desc.GetOutfit(OutfitCategories.Everyday, 0);
		if (outfit != null && outfit.IsValid)
		{
			DownloadContent.SaveTravelSim(desc, outfit.Key, ref mTravelKey);
			mThumbKey = new ThumbnailKey(mTravelKey, 0, 0u, 0u, ThumbnailSize.Large);
			mThumbKey.mDescKey.GroupId = 0u;
			return true;
		}
		return false;
	}

	public static void PackSim(SimDescription desc)
	{
		if (sMiniSims.TryGetValue(desc.SimDescriptionId, out var value))
		{
			FixUpForeignPregnantSims(desc);
			value.SetMemberFields(desc, updateOtherMiniRelationship: true);
			GenerateCrossWorldThumbnail(desc, forceGeneration: true);
			if (desc.Household != null)
			{
				desc.Household.RemoveTemporary(desc);
			}
			value.Instantiated = false;
			desc.Dispose(clearInstantiatedBit: false, keepPartnerGenealogy: true);
		}
	}

	public SimDescription UnpackSim()
	{
		return UnpackSim(updateGenealogy: true);
	}

	public SimDescription UnpackSimAndUpdateRel()
	{
		return UnpackSimAndUpdateRel(updateGenealogy: true);
	}

	public SimDescription UnpackSimAndUpdateRel(bool updateGenealogy)
	{
		SimDescription simDescription = UnpackSim(updateGenealogy);
		if (simDescription != null)
		{
			UpdateInWorldRelationships(simDescription);
			SimDescription simDescription2 = SimDescription.Find(PartnerId);
			if (simDescription2 != null)
			{
				simDescription.Partner = simDescription2;
				simDescription2.Partner = simDescription;
			}
		}
		return simDescription;
	}

	public SimDescription UnpackSim(bool updateGenealogy)
	{
		SimDescription simDescription = new SimDescription();
		ResourceKeyContentCategory category = ResourceKeyContentCategory.kInstalled;
		DownloadContent.ImportSimDescription(mTravelKey, simDescription, ref category);
		simDescription.SimDescriptionId = mSimDescriptionId;
		simDescription.Fixup();
		if (updateGenealogy && !GameStates.IsTravelling)
		{
			if (simDescription.DefaultOutfitKey == ResourceKey.kInvalidResourceKey)
			{
				SimOutfit outfit = simDescription.GetOutfit(OutfitCategories.Everyday, 0);
				if (outfit == null || !outfit.IsValid)
				{
					simDescription.Dispose(clearInstantiatedBit: false, keepPartnerGenealogy: false);
					return null;
				}
				simDescription.UpdateFromOutfit(OutfitCategories.Everyday);
			}
			simDescription.CASGenealogy = CASGenealogy;
		}
		return simDescription;
	}

	private static void FixUpForeignPregnantSims(SimDescription desc)
	{
		if ((desc.HomeWorld == WorldName.TouristWorld || GameUtils.GetWorldType(desc.HomeWorld) == WorldType.Vacation || GameUtils.GetWorldType(desc.HomeWorld) == WorldType.University) && desc.Pregnancy != null)
		{
			if (desc.Pregnancy.Dad != null)
			{
				MidlifeCrisisManager.OnHadChild(desc.Pregnancy.Dad.SimDescription);
			}
			desc.Pregnancy.CreateBabyBeforePacking();
		}
	}
