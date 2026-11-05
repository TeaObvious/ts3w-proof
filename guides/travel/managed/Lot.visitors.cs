// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Core.Lot selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	private PortalPathPlanHandler mOnPortalPathPlanHandler;

	public event PortalPathPlanHandler PortalPathPlan
	{
		add
		{
			if (mOnPortalPathPlanHandler == null && value != null)
			{
				Route.SetPortalLockStatus(LotId, locked: true);
			}
			mOnPortalPathPlanHandler = (PortalPathPlanHandler)Delegate.Combine(mOnPortalPathPlanHandler, value);
			mbNeedPrivacyUpdate = true;
		}
		remove
		{
			mbNeedPrivacyUpdate = true;
			mOnPortalPathPlanHandler = (PortalPathPlanHandler)Delegate.Remove(mOnPortalPathPlanHandler, value);
			if (mOnPortalPathPlanHandler == null)
			{
				Route.SetPortalLockStatus(LotId, locked: false);
				UpdateDoorPrivacy();
			}
		}
	}

	public bool IsResidentialOwnedBy(Sim sim)
	{
		if (sim != null)
		{
			if (sim.LotHome == this)
			{
				return true;
			}
			if (IsResidentialLot && sim.IsSelectable)
			{
				RealEstateManager realEstateManager = sim.Household.RealEstateManager;
				if (realEstateManager != null && realEstateManager.FindProperty(this) != null)
				{
					return true;
				}
			}
		}
		return false;
	}

	public bool CanSimTreatAsHome(Sim sim)
	{
		if (sim == null)
		{
			return false;
		}
		if (this == sim.LotHome)
		{
			return true;
		}
		if (IsResidentialLot && sim.IsSelectable)
		{
			return sim.Household.RealEstateManager.FindProperty(this) != null;
		}
		return false;
	}

	public void PostWorldLoad()
	{
		string lotNameKey = World.GetLotNameKey(mLotId);
		if (!string.IsNullOrEmpty(lotNameKey))
		{
			if (Localization.HasLocalizationString(lotNameKey))
			{
				mName = Localization.LocalizeString(lotNameKey);
			}
			else
			{
				mName = lotNameKey;
			}
		}
		else
		{
			mName = World.GetLotName(mLotId);
		}
		mFileName = World.GetLotSaveFileName(mLotId);
		mAllowBuildBuyEdit = World.GetLotBuildBuyEnabledFlag(mLotId);
		mCommercialSubType = World.GetCommercialLotSubType(mLotId);
		mResidentialSubType = World.GetResidentialLotSubType(mLotId);
		mbIsEP10HouseboatLot = World.IsHouseboatLot(mLotId);
		if (mbIsEP10HouseboatLot && mSavedData.mHouseboatParent != ObjectGuid.InvalidObjectGuid)
		{
			World.ParentLotToHouseboat(LotId, mSavedData.mHouseboatParent);
		}
		UpdateLotPosition();
		CalculateMetaAutonomyTypeAndConsiderAddingToPublicMetaObjects();
		UpdateVirtualResidentialSlots();
		if (mLotType != LotType.Residential && mCommercialSubType != CommercialLotSubType.kCommercialUndefined)
		{
			MetaAutonomyTuning tuning = MetaAutonomyManager.GetTuning(GetMetaAutonomyVenueType());
			bool flag = false;
			foreach (CommercialSubTypeData sCommnunityTypeDatum in sCommnunityTypeData)
			{
				if (sCommnunityTypeDatum.CommercialLotSubType == mCommercialSubType)
				{
					flag = true;
					break;
				}
			}
			bool flag2 = tuning == null;
			if (!flag2 && !string.IsNullOrEmpty(mName) && !Localization.HasLocalizationString(mName))
			{
				flag2 = mName.Contains("CatalogObjects/Name:") || mName.Contains("World/");
			}
			if (flag2 || !flag)
			{
				CommercialLotSubType = CommercialLotSubType.kMisc_NoVisitors;
				Name = GetDefaultLotName(mLotType);
				Description = string.Empty;
				CalculateMetaAutonomyTypeAndConsiderAddingToPublicMetaObjects();
				mSavedData.mHasVirtualResidentialSlots = false;
			}
		}
		else if (mLotType == LotType.Residential && mName != null && !IsValidName(mName))
		{
			Name = GetDefaultLotName(mLotType);
			Description = string.Empty;
		}
		if (IsApartmentLot && !GameUtils.IsInstalled(ProductVersion.EP9))
		{
			ResidentialLotSubType = ResidentialLotSubType.kResidentialUndefined;
		}
		if (IsCommunityLot && mCommercialSubType == CommercialLotSubType.kCommercialUndefined)
		{
			CommercialLotSubType = GetCommercialLotSubTypeFromMetaAutonomyType();
		}
		if (mStreetParking == null && !IsWorldLot)
		{
			UpdateStreetParking();
		}
		CacheRoomObjects<IPortalConnectionObject>();
		PortalPathPlan += Sim.OnPortalPathPlan;
		if (mVenueAmbienceManager == null)
		{
			mVenueAmbienceManager = new VenueAmbienceManager(this);
		}
		UpdateCachedValues(mSavedData.mCachedCost == -1);
	}

	public void RefreshObjectCacheUsers()
	{
		foreach (IObjectCache value in mObjectCaches.Values)
		{
			value.RefreshUsers();
		}
	}

	public bool CommonVisitTest(Sim a, Lot target, bool isAutonomous, bool shouldTestTimeOfLastVisit, ulong simFinderActorID, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
	{
		if (isAutonomous && a.IsSelectable && AutonomyRestrictions.GetLevel(a.IsHuman) < AutonomyLevel.Max)
		{
			return false;
		}
		if (shouldTestTimeOfLastVisit && isAutonomous && a.LastAutonomousVisitDate.Ticks != 0)
		{
			float num = SimClock.ElapsedTime(TimeUnit.Days, a.LastAutonomousVisitDate);
			if (num < AutonomousVisitFrequencyInDays)
			{
				return false;
			}
			if (target.IsHouseboatLot())
			{
				Houseboat houseboat = target.GetHouseboat();
				if (houseboat != null && houseboat.CurrentStatus != Houseboat.Status.Docked)
				{
					return false;
				}
			}
		}
		if (target.IsCommunityLot)
		{
			return false;
		}
		if (target.IsResidentialOwnedBy(a))
		{
			return false;
		}
		Callbox callbox = null;
		if (target.IsResidentialLot)
		{
			callbox = target.FindCallbox();
		}
		if ((target == null || target.Household == null) && callbox == null)
		{
			if (RealEstateManager.IsVacationLotOwned(a.Household, GameUtils.GetCurrentWorld(), target.LotId))
			{
				greyedOutTooltipCallback = () => CommonTestLocalizeString("OwnedVacationLot");
			}
			else
			{
				greyedOutTooltipCallback = () => CommonTestLocalizeString("NoOneLivesHere", a);
			}
			return false;
		}
		NpcParty npcParty = NpcParty.TryGetNpcPartyOnLot(target);
		if (target.IsCelebrityLot && npcParty == null && !target.CanVisitCelebrityLot(a))
		{
			greyedOutTooltipCallback = () => CommonTestLocalizeString("PrivateCelebrityLot");
			return false;
		}
		if (simFinderActorID == 0 && VisitSituation.IsTooLateToVisit())
		{
			greyedOutTooltipCallback = () => CommonTestLocalizeString("TooLateToVisit", a);
			return false;
		}
		if (npcParty != null && npcParty.IsVisibleToPlayer() && npcParty.IsSimBanned(a))
		{
			greyedOutTooltipCallback = () => CommonTestLocalizeString("NotOnGuestList", a);
			return false;
		}
		if ((a.Occupation == null || !a.Occupation.HasJobAtLot(target)) && callbox == null)
		{
			if (target.GetSimsCount() == 0)
			{
				greyedOutTooltipCallback = () =>
				{
					if (target.Household != null)
					{
						Sim sim = a.SocialComponent.FindSimIKnowBest(target.Household.Sims);
						if (sim != null)
						{
							if (sim.LotCurrent.IsPark)
							{
								return CommonTestLocalizeString("OwnerAtPark", sim);
							}
							return sim.LotCurrent.GetMetaAutonomyType switch
							{
								MetaAutonomyType.ArtGallery => CommonTestLocalizeString("OwnerAtArtGallery", sim), 
								MetaAutonomyType.BeachVenue => CommonTestLocalizeString("OwnerAtBeach", sim), 
								MetaAutonomyType.Pool => CommonTestLocalizeString("OwnerAtPool", sim), 
								MetaAutonomyType.Library => CommonTestLocalizeString("OwnerAtLibrary", sim), 
								MetaAutonomyType.Graveyard => CommonTestLocalizeString("OwnerAtGraveyard", sim), 
								_ => CommonTestLocalizeString("OwnerOutSomewhere", sim), 
							};
						}
					}
					return CommonTestLocalizeString("NobodyHome", a);
				};
				return false;
			}
			IEnumerable<Sim> sims = target.GetSims();
			bool flag = false;
			bool flag2 = false;
			foreach (Sim item in sims)
			{
				if (item.IsAtHome)
				{
					flag = true;
				}
				if (item.SimDescription.Age == CASAgeGenderFlags.Child)
				{
					flag2 = true;
				}
			}
			if (!flag)
			{
				greyedOutTooltipCallback = () => CommonTestLocalizeString("NobodyHome", a);
				return false;
			}
			if (a.SimDescription.Age == CASAgeGenderFlags.Child && !flag2 && isAutonomous)
			{
				greyedOutTooltipCallback = () => CommonTestLocalizeString("NoChildrenLiveHere", a);
				return false;
			}
		}
		if (a.LotCurrent == target && !a.IsOutside && a.VirtualLotHome != a.LotCurrent)
		{
			return false;
		}
		if (isAutonomous && a.IsNeighborOfPlayerWhoIsLastOneAtHome)
		{
			return false;
		}
		if (shouldTestTimeOfLastVisit && a.LastVisitedSomeone.Ticks != 0)
		{
			float num2 = SimClock.ElapsedTime(TimeUnit.Days, a.LastVisitedSomeone);
			if (num2 < 1f && isAutonomous)
			{
				return false;
			}
		}
		if (a.LotHome == target)
		{
			return false;
		}
		if (isAutonomous && a.IsNPC && a.SimDescription.IsCelebrity)
		{
			Household household = target.Household;
			if (household != null && household.IsActive)
			{
				bool flag3 = false;
				foreach (Sim sim2 in household.Sims)
				{
					if (sim2.LotCurrent == target && CelebrityManager.CanSocialize(sim2, a))
					{
						flag3 = true;
						break;
					}
				}
				if (!flag3)
				{
					return false;
				}
			}
		}
		return true;
	}

	public Sim CheckForHostWhenVisiting(Sim actor, Lot lotTarget, Route r, RouteEvent re)
	{
		VisitSituation visitSituation = VisitSituation.FindVisitSituationInvolvingGuest(actor);
		if (visitSituation != null && visitSituation.IsInStateHostOutside())
		{
			return null;
		}
		Sim sim = null;
		if (actor.LotCurrent == lotTarget && actor.LotCurrent.Household != null)
		{
			foreach (Sim sim2 in actor.LotCurrent.Household.Sims)
			{
				if (sim2.IsAtHome && sim2.IsOutside)
				{
					sim = sim2;
					break;
				}
			}
		}
		if (sim != null)
		{
			r?.Stop(StopMode.kStop_Soft);
		}
		return sim;
	}

	public bool MoveAwayFromDoor(Sim actor, Lot lotTarget)
	{
		Door door = null;
		Route r = null;
		bool result = lotTarget.RouteToFrontDoor(actor, Sim.MinStandBackFromDoorDistance, Sim.MaxStandBackFromDoorDistance, ref door, wantToBeOutside: true, ref r, doRoute: true);
		if (door != null)
		{
			actor.RouteTurnToFace(door.Position);
		}
		return result;
	}

	public bool IsRoomRestricted(int roomId, Sim sim)
	{
		if (mRoomRestrictionCheckCallbacks.TryGetValue(roomId, out var value))
		{
			foreach (OnAllowedInRoomCheck item in value)
			{
				if (!item(roomId, sim))
				{
					return true;
				}
			}
		}
		return false;
	}

	public void RequestPrivacyUpdate()
	{
		mbNeedPrivacyUpdate = true;
	}

	public PortalLockedCallbackResults OnPortalPathPlan(Sim actor, GameObject portalObj, int roomFrom, int roomTo, bool initialLockedSetting)
	{
		if (mOnPortalPathPlanHandler != null)
		{
			PortalPlanEventArgs e = new PortalPlanEventArgs(actor, portalObj, this, roomFrom, roomTo, initialLockedSetting);
			Delegate[] invocationList = mOnPortalPathPlanHandler.GetInvocationList();
			int i = 0;
			for (int num = invocationList.Length; i < num; i++)
			{
				PortalPathPlanHandler portalPathPlanHandler = invocationList[i] as PortalPathPlanHandler;
				try
				{
					portalPathPlanHandler(e);
				}
				catch (Exception)
				{
				}
			}
			if (e.Locked)
			{
				return PortalLockedCallbackResults.PortalLocked;
			}
			if (e.Discouraged)
			{
				return PortalLockedCallbackResults.PortalDiscouraged;
			}
			return PortalLockedCallbackResults.PortalUnlocked;
		}
		return PortalLockedCallbackResults.NoListeners;
	}

	public bool IsRoomPublic(int roomId)
	{
		if (!mSavedData.mPublicResidentialRooms.Contains(roomId))
		{
			return LotManager.RoomIdIsOutside(roomId);
		}
		return true;
	}

	public bool IsRoomHidden(int roomId)
	{
		return mSavedData.mHiddenRooms.Contains(roomId);
	}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Core.Lot::OnLotTypeChanged; token 0x0600f199.
   Actual complete ILSpy selected-member rendering. Original type store, native subtype queries and original setters precede the guarded commercial-subtype80 dive-lot flag update.
   Original paired CIL controls exact branches, constants and member identity; omitted siblings are outside this extract. */
	public void OnLotTypeChanged(LotType lotType)
	{
		mLotType = lotType;
		ResidentialLotSubType = World.GetResidentialLotSubType(LotId);
		CommercialLotSubType = World.GetCommercialLotSubType(LotId);
		if (!LotManager.sWorldHasDiveLots && CommercialLotSubType == CommercialLotSubType.kEP10_Diving)
		{
			LotManager.sWorldHasDiveLots = true;
		}
	}
