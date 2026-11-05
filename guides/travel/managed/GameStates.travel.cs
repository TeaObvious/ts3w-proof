// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	public class SimRefreshData
	{
		public SimDescription mInWorldDesc;

		public SimDescription mImportedDesc;

		public ulong mInventoryId;

		public Vector3 mPosition;

		public bool mIsSelected;

		public SimRefreshData(SimDescription inWorldDesc, SimDescription importedDesc, ulong inventory, Vector3 position, bool isSelected)
		{
			mInWorldDesc = inWorldDesc;
			mImportedDesc = importedDesc;
			mInventoryId = inventory;
			mPosition = position;
			mIsSelected = isSelected;
		}
	}

	[Persistable]
	private class TravelData
	{
		public enum TravelState
		{
			StartVacation,
			OnVacation,
			EndVacation
		}

		public string mHomeWorld;

		public string mHomeWorldMetadataName;

		public WorldName mDestWorld;

		public string mSaveName;

		public TravelState mState;

		public List<ulong> mTravelerIds;

		public List<ulong> mEarlyDepartureIds;

		public int mCurrentDayOfTrip;

		public int mTripLength;

		public List<Sim> mEarlyDepartures;

		public Household mTravelHouse;

		public List<TravelRelationship> mTravelingRelationships;

		public bool mbItemsAddedToInventory;

		public float mNumberAgingYearsElapsed;

		public int mNumLeftBehindPlusPregnancy;

		public int mNumPetsLeftBehindPlusPregnancy;

		public List<Urnstone> mPendingRemovals;

		public PairedListDictionary<Inventory, List<Urnstone>> mPendingAdditions;

		public PairedListDictionary<ulong, int> mSimsToOwedWeddingGifts;

		public DateAndTime mTimeInHomeworld;

		public int mNumDaysSinceLastInDestWorld = -1;

		public List<SimDescription> mSimDescriptionNeedPostFixUp;

		public List<SimRefreshData> mSimDescriptionAgedUpFixUp;

		public List<ulong> mDeadSims;

		public RealEstateManager mRealEstateManager;

		public StacheManager mStache = new StacheManager();

		public CauseEffectWorldState mCauseEffectWorldState = CauseEffectWorldState.kNormalState;
	}

	internal sealed class PerformEarlyDepartureToHomeWorld : Interaction<Sim, Sim>
	{
		private sealed class Definition : InteractionDefinition<Sim, Sim, PerformEarlyDepartureToHomeWorld>
		{
			protected override bool Test(Sim a, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return a.IsSelectable;
			}

			public override string GetInteractionName(ref InteractionInstanceParameters parameters)
			{
				return Localization.LocalizeString("Gameplay/Objects/Electronics/Phone/CallReturnHome:InteractionName");
			}
		}

		private const string kWaveAnimationName = "a_react_waveA_standing_x";

		public Lot DestinationLot;

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			Actor.GetSituationOfType<GroupingSituation>()?.LeaveGroup(Actor);
			Actor.PlaySoloAnimation("a_react_waveA_standing_x", yield: true);
			EventTracker.SendEvent(new TravelUtil.TravelEvent(EventTypeId.kReturnedFromVacation, Actor, null, sTravelData.mDestWorld, sTravelData.mCurrentDayOfTrip));
			if (sTravelData.mEarlyDepartures == null)
			{
				sTravelData.mEarlyDepartures = new List<Sim>();
			}
			sTravelData.mEarlyDepartures.Add(Actor);
			if (Actor.Household.Sims.Count == 1)
			{
				UpdateTelemetryAndTriggerTravelBackToHomeWorld();
				return true;
			}
			if (Actor.IsActiveSim)
			{
				LotManager.SelectNextSim();
			}
			Actor.SimDescription.DnPExportData = new DnPExportData(Actor.SimDescription);
			if (Actor.OpportunityManager != null)
			{
				Actor.OpportunityManager.StoreOpportunitiesForTravel();
			}
			if (Actor.BuffManager != null)
			{
				Actor.BuffManager.StoreBuffsForTravel(Actor.SimDescription);
			}
			Actor.Household.RemoveSim(Actor);
			Actor.NullDnPManager();
			Actor.Motives.FreezeDecayEverythingExcept();
			Actor.Autonomy.IncrementAutonomyDisabled();
			Actor.DisablePieMenuOnSim = true;
			try
			{
				if (DestinationLot != null)
				{
					Route route = Actor.CreateRoute();
					route.DoRouteFail = false;
					DestinationLot.PlanToLot(route);
					Actor.DoRoute(route);
				}
				Actor.FadeOut(yield: true, destroyObject: false, 1f);
			}
			finally
			{
				Actor.DisablePieMenuOnSim = false;
			}
			return true;
		}

		public override void Cleanup()
		{
			base.Cleanup();
			if (Actor == null)
			{
				return;
			}
			Actor.RemoveFromWorld();
			if (Household.ActiveHousehold == null)
			{
				return;
			}
			foreach (Sim allActor in Household.ActiveHousehold.AllActors)
			{
				if (allActor.MapTagManager != null)
				{
					allActor.MapTagManager.RemoveTag(Actor);
				}
			}
		}
	}

	private struct TravelRelationship
	{
		public ulong simXId;

		public List<ulong> simyIds;

		public List<Relationship> rels;
	}

	private const string kChinaWorldName = "China.world";

	private const string kChinaSaveName = "China_0x0859db4c";

	private const string kEgyptWorldName = "Egypt.world";

	private const string kEgyptSaveName = "Egypt_0x0859db48";

	private const string kFranceWorldName = "France.world";

	private const string kFranceSaveName = "France_0x0859db50";

	private const string kUniversityWorldName = "Sims University.world";

	private const string kUniversitySaveName = "Sims University_0x0e41c954";

	private const string kFutureWorldName = "Oasis Landing.world";

	private const string kFutureSaveName = "Oasis Landing_0x0f36012a";

	private static string sLoadFileName = null;

	[PersistableStatic(true)]
	private static TravelData sTravelData;

	[PersistableStatic(true)]
	private static bool sResetTheFuture = false;

	private static bool sIsChangingWorlds = false;

	public static Household sOldActiveHousehold = null;

	public static bool HasTravelData => sTravelData != null;

	public static bool IsTravelling => sIsChangingWorlds;

	public static event TravelCallback TravelComplete;

	public static event TravelCallback PreReturnHome;

	public static bool IsIdTravelling(ulong id)
	{
		if (IsTravelling)
		{
			return sTravelData.mTravelerIds.Contains(id);
		}
		return false;
	}

	public static List<Sim> GetEarlyDepartureSims()
	{
		if (sTravelData == null)
		{
			return null;
		}
		return sTravelData.mEarlyDepartures;
	}

	public static void UpdateTelemetryAndTriggerTravelBackToHomeWorld()
	{
		TravelUtil.UpdateVacationTelemetry();
		ReturnFromVacationWorld();
	}

	public static void ClearTravelStatics()
	{
		sTravelData = null;
		sIsChangingWorlds = false;
		sEditOtherWorldData = null;
		TravelComplete = null;
		PreReturnHome = null;
		sNextSimToSelect = null;
		sOldActiveHousehold = null;
		TravelUtil.PlayerMadeTravelRequest = false;
	}

	public static string GetCurrentWorldName(bool useHexExtension)
	{
		string worldFileName = World.GetWorldFileName();
		if (useHexExtension)
		{
			string newValue = "_0x" + GameUtils.GetCurrentWorld().ToString("x");
			return worldFileName.Replace(".world", newValue);
		}
		return worldFileName.Replace(".world", "");
	}

	private static void StopOperationsThatCannotTravel()
	{
		StopVideoRecordingIfNecessary();
		StopSnappingPicturesIfNeccessary();
		UserToolUtils.OnClose();
		Service.DestroyAllServiceSimsBeforeSwitchingWorlds();
		RoleManager.DestroyAllRoleBotsBeforeSwitchingWorlds();
	}

	public static void TravelToVacationWorld(WorldName newWorldName, List<ulong> travelerIds, int tripLength, int numDaysSinceLastInDestWorld)
	{
		StopOperationsThatCannotTravel();
		sTravelData = new TravelData();
		sIsChangingWorlds = true;
		sTravelData.mState = TravelData.TravelState.StartVacation;
		sTravelData.mTravelerIds = travelerIds;
		sTravelData.mHomeWorld = GetCurrentWorldName(useHexExtension: true);
		sTravelData.mHomeWorldMetadataName = GetCurrentWorldName(useHexExtension: false);
		sTravelData.mDestWorld = newWorldName;
		sTravelData.mTripLength = tripLength;
		sTravelData.mCurrentDayOfTrip = 0;
		sTravelData.mTimeInHomeworld = SimClock.CurrentTime();
		sTravelData.mRealEstateManager = Household.ActiveHousehold.RealEstateManager;
		sTravelData.mRealEstateManager.SavePropertyNamesForTravel();
		sTravelData.mNumDaysSinceLastInDestWorld = numDaysSinceLastInDestWorld;
		if (sTravelData.mDestWorld == WorldName.FutureWorld)
		{
			CauseEffectService.GetInstance().PreFutureWorldLoadProcess();
			FutureDescendantService instance = FutureDescendantService.GetInstance();
			instance.BuildDescendantHouseholdSpecs();
		}
		if (AgingManager.NumberAgingYearsElapsed != -1f)
		{
			sTravelData.mNumberAgingYearsElapsed = AgingManager.NumberAgingYearsElapsed;
		}
		else
		{
			sTravelData.mNumberAgingYearsElapsed = 0f;
		}
		OneShotFunctionTask obj = new OneShotFunctionTask(SwitchWorlds);
		Simulator.AddObject(obj);
	}

	public static void ReturnFromVacationWorld()
	{
		try
		{
			bool isReturningHome = true;
			StartLoadingScreen(isReturningHome);
			if (Simulator.CheckYieldingContext(shouldThrowException: false))
			{
				Simulator.Sleep(1u);
			}
			if (IsGameShuttingDown)
			{
				return;
			}
			ReturningFromWorld = GameUtils.GetCurrentWorldType();
			TravelUtil.PlayerMadeTravelRequest = true;
			if (PreReturnHome != null)
			{
				PreReturnHome();
			}
			CopyPhotosToInventory();
			StopOperationsThatCannotTravel();
			Household household = Household.ActiveHousehold ?? sOldActiveHousehold;
			household.RemoveVacationAlarms();
			foreach (Sim allActor in household.AllActors)
			{
				if (!Household.RoommateManager.IsNPCRoommate(allActor))
				{
					EventTracker.SendEvent(new TravelUtil.TravelEvent(EventTypeId.kReturnedFromVacation, allActor, null, sTravelData.mDestWorld, sTravelData.mCurrentDayOfTrip));
					allActor.SetObjectToReset();
				}
			}
			if (sTravelData.mEarlyDepartures != null)
			{
				sTravelData.mEarlyDepartureIds = new List<ulong>(sTravelData.mEarlyDepartures.Count);
				foreach (Sim mEarlyDeparture in sTravelData.mEarlyDepartures)
				{
					sTravelData.mEarlyDepartureIds.Add(mEarlyDeparture.SimDescription.SimDescriptionId);
					household.AddSim(mEarlyDeparture);
				}
				sTravelData.mEarlyDepartures = null;
			}
			if (sTravelData.mRealEstateManager == null)
			{
				sTravelData.mRealEstateManager = household.RealEstateManager;
			}
			sTravelData.mRealEstateManager.SavePropertyNamesForTravel();
			if (ReturningFromWorld == WorldType.Vacation)
			{
				Sim sim = null;
				if (household.Sims.Count > 0)
				{
					sim = household.Sims[0];
				}
				if (sim != null)
				{
					IBed[] objects = Queries.GetObjects<IBed>();
					foreach (IBed bed in objects)
					{
						if (!bed.IsTentOwnedByHousehold(sim.Household))
						{
							continue;
						}
						if (bed.InInventory)
						{
							if (!sim.Inventory.Contains(bed))
							{
								sim.Inventory.TryToMove(bed);
							}
						}
						else
						{
							sim.Inventory.TryToAdd(bed);
						}
					}
				}
			}
			if (ReturningFromWorld == WorldType.University)
			{
				LotManager.GetLot(household.LotId)?.MoveOut(household);
				Household.RoommateManager.StopAcceptingRoommates(kickExistingRoommates: true);
			}
			sIsChangingWorlds = true;
			sTravelData.mState = TravelData.TravelState.EndVacation;
			OneShotFunctionTask obj = new OneShotFunctionTask(SwitchWorlds);
			Simulator.AddObject(obj);
		}
		finally
		{
			TravelUtil.PlayerMadeTravelRequest = false;
		}
	}

	private static void EnsureNoModalDialogsUp()
	{
		WindowBase uITopWindow = UIManager.GetUITopWindow();
		uint triggerHandle = uITopWindow.AddModalTriggerHook("OKCancelDialog", TriggerActivationMode.kPermanent, 16);
		Simulator.Sleep(0u);
		while (UIManager.GetModalWindow() != null || ScreenGrabController.InProgress)
		{
			Simulator.Sleep(0u);
		}
		uITopWindow.RemoveTriggerHook(triggerHandle);
	}

	public static void StartLoadingScreen(bool isReturningHome)
	{
		try
		{
			PersistStatic.MainMenuLoading = false;
			EnsureNoModalDialogsUp();
			GameUtils.EnableSceneDraw(enable: false);
			if (DestinationTravelWorld != WorldName.Undefined)
			{
				string travelWorldName = Sims3.Gameplay.UI.Responder.Instance.HudModel.LocationName(DestinationTravelWorld, fullName: true);
				if (isReturningHome)
				{
					travelWorldName = sTravelData.mHomeWorld;
				}
				bool isFirstTimeTravelingToFuture = DestinationTravelWorld == WorldName.FutureWorld && CauseEffectService.GetInstance() != null && CauseEffectService.GetInstance().GetTimesTraveledToFuture() == 0;
				LoadingScreenController.LoadTravellingLoadingScreen(travelWorldName, DestinationTravelWorld, isReturningHome, isFirstTimeTravelingToFuture);
			}
			Simulator.Sleep(0u);
		}
		catch (Exception)
		{
		}
	}

	private static void SwitchWorlds()
	{
		try
		{
			if (!LoadingScreenController.IsLayoutLoaded())
			{
				bool isReturningHome = false;
				StartLoadingScreen(isReturningHome);
			}
			Household household = null;
			SimDescription[] array = null;
			int count = sTravelData.mTravelerIds.Count;
			array = new SimDescription[count];
			household = Household.ActiveHousehold ?? sOldActiveHousehold;
			for (int i = 0; i < count; i++)
			{
				array[i] = household.FindMember(sTravelData.mTravelerIds[i]);
			}
			if (count > 1)
			{
				sTravelData.mTravelingRelationships = new List<TravelRelationship>();
				for (int j = 0; j < count; j++)
				{
					TravelRelationship item = new TravelRelationship
					{
						simXId = sTravelData.mTravelerIds[j],
						simyIds = new List<ulong>(),
						rels = new List<Relationship>()
					};
					for (int k = 0; k < count; k++)
					{
						if (k != j && array[j] != null && array[k] != null)
						{
							Relationship relationship = Relationship.Get(array[j], array[k], createIfNone: false);
							if (relationship != null)
							{
								item.simyIds.Add(sTravelData.mTravelerIds[k]);
								item.rels.Add(relationship);
							}
						}
					}
					sTravelData.mTravelingRelationships.Add(item);
				}
			}
			CameraController.DisableObjectFollow();
			StoreHouseholdBuffsForTravel(household);
			StoreOpportunitiesForTravel(household);
			StashHousehold(sTravelData.mStache, household);
			if (sTravelData.mState == TravelData.TravelState.StartVacation)
			{
				LeavePetUrnstonesAtHome(household);
				sIsPointSafelyRoutable = new Sim.IsPointSafelyRoutable(Household.ActiveHousehold.LotHome, array[0].CreatedSim);
				sIsPointSafelyRoutable.SetLimit(5);
				Sim.sIsPointSafelyRoutable = sIsPointSafelyRoutable;
				TravelComplete = (TravelCallback)Delegate.Combine(TravelComplete, new TravelCallback(ClearRoutablePointCache));
				for (int l = 0; l < array.Length; l++)
				{
					if (array[l] != null)
					{
						array[l].CreatedSim?.SetObjectToReset();
					}
				}
				Simulator.Sleep(0u);
				LoadSaveManager.eLoadSaveErrorCode eLoadSaveErrorCode = (LoadSaveManager.eLoadSaveErrorCode)LoadSaveManager.SaveTravel();
				sTravelData.mSaveName = sLoadFileName;
				if (!SetupLoadFileName(useTravelData: true))
				{
					PersistStatic.MainMenuLoading = true;
					sTravelData = null;
					sIsChangingWorlds = false;
					return;
				}
				Household activeHousehold = Household.ActiveHousehold;
				if (activeHousehold != null)
				{
					string homeworldMetadataName = HomeworldMetadataName;
					UIManager.SetSaveGameMetadata(sLoadFileName, activeHousehold.Name, activeHousehold.BioText, homeworldMetadataName, activeHousehold.HouseholdId, activeHousehold.LotId, travelSave: true);
				}
				string householdDelimitedData = "";
				UIImage householdThumbnail = new UIImage(0u);
				if (!UIManager.GetSaveGameMetadata(sLoadFileName, ref householdDelimitedData, ref householdThumbnail, ref householdThumbnail))
				{
					UIManager.SetSaveGameMetadata(sLoadFileName, "", "", "", 0uL, 0uL, travelSave: true);
				}
			}
			MiniSimDescription.AddMiniSims();
			Bin.ExportHouseholdForTravel(household);
			if (sTravelData.mState == TravelData.TravelState.EndVacation)
			{
				household.MoveToPreviousTravelerHousehold();
				foreach (SimDescription item2 in Household.AllSimsLivingInWorld())
				{
					if (item2.CreatedSim != null && item2.CreatedSim.LotHome != item2.CreatedSim.LotCurrent)
					{
						item2.CreatedSim.SetToResetAndSendHome();
					}
				}
				Simulator.Sleep(0u);
				LoadSaveManager.eLoadSaveErrorCode eLoadSaveErrorCode2 = (LoadSaveManager.eLoadSaveErrorCode)LoadSaveManager.SaveTravel();
				if (sTravelData.mSaveName.Contains(".world"))
				{
					sTravelData.mSaveName = "NotSet.sims3";
				}
				SetLoadFileName(sTravelData.mHomeWorld, useTravelData: true);
			}
		}
		catch (Exception)
		{
		}
		sOldActiveHousehold = null;
		GotoState(GameState.TravelDeparture);
	}

	private static void StoreHouseholdBuffsForTravel(Household household)
	{
		foreach (Sim allActor in household.AllActors)
		{
			if (IsIdTravelling(allActor.SimDescription.SimDescriptionId))
			{
				allActor.BuffManager.StoreBuffsForTravel(allActor.SimDescription);
			}
		}
	}

	private static void StoreOpportunitiesForTravel(Household household)
	{
		foreach (Sim allActor in household.AllActors)
		{
			if (allActor.OpportunityManager != null && IsIdTravelling(allActor.SimDescription.SimDescriptionId))
			{
				allActor.OpportunityManager.StoreOpportunitiesForTravel();
			}
		}
	}

	private static void StashHousehold(StacheManager stache, Household household)
	{
		if (stache == null || household == null)
		{
			return;
		}
		foreach (Sim allActor in household.AllActors)
		{
			if (IsIdTravelling(allActor.SimDescription.SimDescriptionId))
			{
				string text = allActor.SimDescription.SimDescriptionId.ToString();
				IPhone phone = allActor.Inventory.Find<IPhone>();
				if (phone is IPhoneSmart phoneSmart)
				{
					ulong guid = StacheManager.CreateKey<PhoneSkins>(text + "PhoneSkin");
					stache.SetItem(guid, phoneSmart.GetPhoneSkin());
					guid = StacheManager.CreateKey<bool>(text + "BrokenState");
					stache.SetItem(guid, phoneSmart.IsBroken);
				}
				if (phone is IPhoneCell phoneCell)
				{
					ulong guid2 = StacheManager.CreateKey<uint>(text + "RingTone");
					stache.SetItem(guid2, phoneCell.GetRingtone());
				}
			}
		}
	}

	private static void UnstashHousehold(StacheManager stache, Household household)
	{
		if (stache == null || household == null)
		{
			return;
		}
		foreach (Sim allActor in household.AllActors)
		{
			if (!IsIdTravelling(allActor.SimDescription.SimDescriptionId))
			{
				continue;
			}
			string text = allActor.SimDescription.SimDescriptionId.ToString();
			IPhone phone = allActor.Inventory.Find<IPhone>();
			if (phone is IPhoneSmart phoneSmart)
			{
				ulong guid = StacheManager.CreateKey<PhoneSkins>(text + "PhoneSkin");
				if (stache.HasItem(guid))
				{
					PhoneSkins phoneSkin = (PhoneSkins)(object)stache.GetItem(guid);
					phoneSmart.SetPhoneSkin(phoneSkin);
				}
				guid = StacheManager.CreateKey<bool>(text + "BrokenState");
				if (stache.HasItem(guid))
				{
					bool isBroken = (bool)(object)stache.GetItem(guid);
					phoneSmart.IsBroken = isBroken;
				}
			}
			if (phone is IPhoneCell phoneCell)
			{
				ulong guid2 = StacheManager.CreateKey<uint>(text + "RingTone");
				if (stache.HasItem(guid2))
				{
					uint ringtoneWithoutAudio = (uint)(object)stache.GetItem(guid2);
					phoneCell.SetRingtoneWithoutAudio(ringtoneWithoutAudio);
				}
			}
		}
	}

	public static void CopyPhotosToInventory()
	{
		if (!GameUtils.IsInstalled(ProductVersion.EP9))
		{
			return;
		}
		foreach (SimDescription allSimDescription in TravelHousehold.AllSimDescriptions)
		{
			Sim createdSim = allSimDescription.CreatedSim;
			if (createdSim == null)
			{
				continue;
			}
			IPhoneSmart phoneSmart = createdSim.Inventory.Find<IPhoneSmart>();
			if (phoneSmart == null)
			{
				continue;
			}
			List<IPhotograph> list = phoneSmart.Inventory.FindAll<IPhotograph>(checkInUse: false);
			foreach (IPhotograph item in list)
			{
				createdSim.Inventory.TryToMove(item);
			}
		}
	}

	private static void LeavePetUrnstonesAtHome(Household household)
	{
		if (!GameUtils.IsInstalled(ProductVersion.EP5))
		{
			return;
		}
		Lot lotHome = household.LotHome;
		Mailbox mailbox = lotHome.FindMailbox();
		Vector3 pos;
		Vector3 fwd;
		if (mailbox != null)
		{
			pos = mailbox.Position;
			fwd = mailbox.ForwardVector;
		}
		else
		{
			pos = lotHome.Position;
			fwd = lotHome.ForwardVector;
		}
		foreach (SimDescription allSimDescription in household.AllSimDescriptions)
		{
			Sim createdSim = allSimDescription.CreatedSim;
			if (createdSim == null || !createdSim.IsHuman)
			{
				continue;
			}
			Inventory inventory = createdSim.Inventory;
			List<Urnstone> list = inventory.FindAll<Urnstone>(checkInUse: false);
			foreach (Urnstone item in list)
			{
				PlaceUrnstoneAtHome(item, inventory, "Couldn't place urnstone from sim's inventory on lot", ref pos, ref fwd);
			}
		}
		Inventory inventory2 = ((household.SharedFamilyInventory != null) ? household.SharedFamilyInventory.Inventory : null);
		if (inventory2 == null || inventory2.IsEmpty)
		{
			return;
		}
		List<Urnstone> list2 = inventory2.FindAll<Urnstone>(checkInUse: false);
		foreach (Urnstone item2 in list2)
		{
			PlaceUrnstoneAtHome(item2, inventory2, "Couldn't place urnstone from shared family inventory on lot", ref pos, ref fwd);
		}
	}

	private static void PlaceUrnstoneAtHome(Urnstone urn, Inventory inventory, string failMessage, ref Vector3 pos, ref Vector3 fwd)
	{
		if (urn.DeadSimsDescription != null && urn.DeadSimsDescription.IsPet)
		{
			inventory.RemoveByForce(urn);
			if (GlobalFunctions.FindGoodLocationNearby(urn, ref pos, ref fwd))
			{
				urn.SetPosition(pos);
				urn.SetForward(fwd);
				urn.AddToWorld();
			}
		}
	}

	private static bool SetupLoadFileName(bool useTravelData)
	{
		switch (useTravelData ? sTravelData.mDestWorld : sEditOtherWorldData.mDestWorld)
		{
		case WorldName.China:
			GetLoadFileName("China.world", "China_0x0859db4c", useTravelData);
			break;
		case WorldName.Egypt:
			GetLoadFileName("Egypt.world", "Egypt_0x0859db48", useTravelData);
			break;
		case WorldName.France:
			GetLoadFileName("France.world", "France_0x0859db50", useTravelData);
			break;
		case WorldName.University:
			GetLoadFileName("Sims University.world", "Sims University_0x0e41c954", useTravelData);
			break;
		case WorldName.FutureWorld:
			if (ShouldResetTheFuture)
			{
				sLoadFileName = "Oasis Landing.world";
				ShouldResetTheFuture = false;
			}
			else
			{
				GetLoadFileName("Oasis Landing.world", "Oasis Landing_0x0f36012a", useTravelData);
			}
			break;
		default:
			return false;
		}
		return true;
	}

	private static void GetLoadFileName(string worldName, string saveName, bool useTravelData)
	{
		SetLoadFileName(saveName, useTravelData);
		if (!GameUtils.IsValidSavegame(sLoadFileName))
		{
			sLoadFileName = worldName;
		}
	}

	private static void SetLoadFileName(string worldName, bool useTravelData)
	{
		string text = (useTravelData ? sTravelData.mSaveName : sEditOtherWorldData.mSaveName);
		int num = text.IndexOf(':');
		if (num != -1)
		{
			sLoadFileName = text.Substring(0, num) + ":" + worldName;
		}
		else
		{
			sLoadFileName = text + ":" + worldName;
		}
	}

	public static void ImportTravellingHousehold()
	{
		try
		{
			Household.IsTravelImport = true;
			sTravelData.mDeadSims = new List<ulong>(sTravelData.mTravelerIds);
			HouseholdContents householdContents;
			try
			{
				householdContents = Bin.ImportHouseholdForTravel();
			}
			finally
			{
				Household.IsTravelImport = false;
			}
			Household household = householdContents.Household;
			foreach (SimDescription allSimDescription in household.AllSimDescriptions)
			{
				MiniSimDescription miniSimDescription = MiniSimDescription.Find(allSimDescription.SimDescriptionId);
				if (miniSimDescription != null)
				{
					miniSimDescription.Instantiated = true;
				}
			}
			new List<SimDescription>();
			if (!IsNewGame)
			{
				List<SimDescription> list = new List<SimDescription>();
				WorldName currentWorld = GameUtils.GetCurrentWorld();
				foreach (SimDescription item in Household.EverySimDescription())
				{
					MiniSimDescription miniSimDescription2 = MiniSimDescription.Find(item.SimDescriptionId);
					if (miniSimDescription2 != null)
					{
						if (sTravelData.mState == TravelData.TravelState.StartVacation && miniSimDescription2.HomeWorld != item.HomeWorld && item.HomeWorld == currentWorld)
						{
							list.Add(item);
						}
						if (!sTravelData.mTravelerIds.Contains(item.SimDescriptionId))
						{
							miniSimDescription2.Instantiated = true;
						}
					}
				}
				Urnstone[] objects = Queries.GetObjects<Urnstone>();
				Urnstone[] array = objects;
				foreach (Urnstone urnstone in array)
				{
					urnstone.UpdateInstantiatedField();
				}
				foreach (SimDescription item2 in list)
				{
					if (item2.CreatedSim != null)
					{
						item2.CreatedSim.Destroy();
						Simulator.Sleep(0u);
					}
					item2.Household.Remove(item2);
					Household.PreviousTravelerHousehold.AddTemporary(item2);
				}
			}
			int num = -1;
			switch (sTravelData.mState)
			{
			case TravelData.TravelState.StartVacation:
			{
				sTravelData.mTravelHouse = household;
				List<SimDescription> list4 = new List<SimDescription>();
				int num2 = 0;
				while (num2 < household.AllSimDescriptions.Count)
				{
					num++;
					SimDescription simDescription2 = household.AllSimDescriptions[num2];
					if (!IsIdTravelling(simDescription2.SimDescriptionId))
					{
						if (simDescription2.IsHuman)
						{
							sTravelData.mNumLeftBehindPlusPregnancy++;
							if (simDescription2.Pregnancy != null)
							{
								sTravelData.mNumLeftBehindPlusPregnancy++;
							}
						}
						else
						{
							sTravelData.mNumPetsLeftBehindPlusPregnancy++;
							if (simDescription2.Pregnancy != null)
							{
								sTravelData.mNumPetsLeftBehindPlusPregnancy++;
							}
						}
						household.RemoveSimKeepHousehold(simDescription2);
						simDescription2.Dispose();
						continue;
					}
					ulong inventoryIndex2 = householdContents.Inventories[num];
					if (Household.PreviousTravelerHousehold != null)
					{
						SimDescription simDescription3 = Household.PreviousTravelerHousehold.FindMember(simDescription2.SimDescriptionId);
						if (simDescription3 != null)
						{
							simDescription3.Fixup();
							simDescription3.MergeTravelInformation(simDescription2);
							Bin.ImportSim(simDescription3, Vector3.OutOfWorld, inventoryIndex2);
							simDescription3.CreatedSim.BuffManager.LoadBuffsFromTravel(simDescription2);
							simDescription3.MergePregnancyInformation(simDescription2);
							household.RemoveSimKeepHousehold(simDescription2);
							simDescription2.DisposeTravelImportedSimDesc();
							list4.Add(simDescription3);
							GhostSetup(simDescription3);
							continue;
						}
					}
					Bin.ImportSim(simDescription2, Vector3.OutOfWorld, inventoryIndex2);
					GhostSetup(simDescription2);
					num2++;
				}
				num++;
				Bin.ImportHouseholdInventories(householdContents, household, (uint)num, bImportFridgeInventory: false);
				foreach (SimDescription item3 in list4)
				{
					Household.PreviousTravelerHousehold.RemoveSimKeepHousehold(item3);
					household.AddSilent(item3);
					item3.OnHouseholdChanged(household, bUpdateHome: false);
				}
				VacationArrival(household);
				if (Household.PreviousTravelerHousehold == null)
				{
					break;
				}
				List<SimDescription> list5 = null;
				List<SimDescription> list6 = new List<SimDescription>(Household.PreviousTravelerHousehold.AllSimDescriptions);
				foreach (SimDescription item4 in list6)
				{
					MiniSimDescription miniSimDescription3 = MiniSimDescription.Find(item4.SimDescriptionId);
					if (miniSimDescription3 == null)
					{
						if (list5 == null)
						{
							list5 = new List<SimDescription>();
						}
						list5.Add(item4);
					}
				}
				if (list5 == null)
				{
					break;
				}
				foreach (SimDescription item5 in list5)
				{
					Household.PreviousTravelerHousehold.RemoveSimKeepHousehold(item5);
					item5.Dispose(clearInstantiatedBit: false, keepPartnerGenealogy: false, addMiniSim: false);
				}
				break;
			}
			case TravelData.TravelState.EndVacation:
			{
				SimDescription simDescription = null;
				List<SimDescription> list2 = new List<SimDescription>();
				List<SimDescription> list3 = null;
				foreach (SimDescription allSimDescription2 in household.AllSimDescriptions)
				{
					sTravelData.mDeadSims.Remove(allSimDescription2.SimDescriptionId);
					num++;
					simDescription = SimDescription.Find(allSimDescription2.SimDescriptionId);
					bool flag = allSimDescription2.AgeGenderSpecies != simDescription.AgeGenderSpecies;
					Sim sim = simDescription.CreatedSim;
					if (sim == null)
					{
						if (sTravelData.mSimDescriptionNeedPostFixUp == null)
						{
							sTravelData.mSimDescriptionNeedPostFixUp = new List<SimDescription>();
						}
						sTravelData.mSimDescriptionNeedPostFixUp.Add(simDescription);
						simDescription.Instantiate(Vector3.OutOfWorld);
						sim = simDescription.CreatedSim;
					}
					else
					{
						if (flag)
						{
							if (sTravelData.mSimDescriptionAgedUpFixUp == null)
							{
								sTravelData.mSimDescriptionAgedUpFixUp = new List<SimRefreshData>();
							}
							sTravelData.mSimDescriptionAgedUpFixUp.Add(new SimRefreshData(simDescription, allSimDescription2, householdContents.Inventories[num], sim.Position, Sim.ActiveActor == sim));
							sim.Destroy();
							sim = null;
							simDescription.CreatedSim = null;
						}
						else if (sim.Household.IsTouristHousehold)
						{
							if (sTravelData.mSimDescriptionNeedPostFixUp == null)
							{
								sTravelData.mSimDescriptionNeedPostFixUp = new List<SimDescription>();
							}
							sTravelData.mSimDescriptionNeedPostFixUp.Add(simDescription);
						}
						simDescription.MergeTravelInformation(allSimDescription2);
						sim?.BuffManager.LoadBuffsFromTravel(allSimDescription2);
						simDescription.MergePregnancyInformation(allSimDescription2);
						if (sim != null && ReturningFromWorld == WorldType.Vacation)
						{
							sim.BuffManager.AddElement(BuffNames.WentToLocation, Origin.FromVisitingLocation);
							if (sim.BuffManager.GetElement(BuffNames.WentToLocation) is BuffWentToLocation.BuffInstanceWentToLocation buffInstanceWentToLocation)
							{
								buffInstanceWentToLocation.SetVacationWorldName(sTravelData.mDestWorld);
							}
						}
					}
					if (sim != null)
					{
						ulong inventoryIndex = householdContents.Inventories[num];
						Bin.ImportSim(simDescription, Vector3.OutOfWorld, inventoryIndex);
					}
					if (sTravelData.mEarlyDepartureIds != null && sTravelData.mEarlyDepartureIds.Contains(simDescription.SimDescriptionId))
					{
						if (list3 == null)
						{
							list3 = new List<SimDescription>();
						}
						list3.Add(simDescription);
					}
					else
					{
						list2.Add(simDescription);
					}
					if (ReturningFromWorld == WorldType.University && simDescription.CareerManager != null)
					{
						AcademicDegreeManager degreeManager = simDescription.CareerManager.DegreeManager;
						if (degreeManager != null)
						{
							degreeManager.LastTimeAtUniversity = SimClock.ElapsedCalendarDays();
						}
					}
				}
				Simulator.Sleep(0u);
				household.RealEstateManager = sTravelData.mRealEstateManager;
				ReturnHomeBehaviorInHomeWorld.SetupReturnHomeBehavior(list2, list3);
				if (sTravelData.mSimDescriptionNeedPostFixUp != null)
				{
					Household activeHousehold = Household.ActiveHousehold;
					foreach (SimDescription item6 in sTravelData.mSimDescriptionNeedPostFixUp)
					{
						item6.Household.RemoveSimKeepHousehold(item6);
						activeHousehold.AddTemporary(item6);
					}
				}
				num++;
				if (simDescription != null)
				{
					Household household2 = simDescription.Household;
					household2.SharedFamilyInventory.Inventory.DestroyItems();
					Simulator.Sleep(0u);
					Bin.ImportHouseholdInventories(householdContents, household2, (uint)num, bImportFridgeInventory: false);
					simDescription.Household.MergeTravelData(household);
				}
				while (household.AllSimDescriptions.Count > 0)
				{
					household.AllSimDescriptions[0].Dispose(clearInstantiatedBit: false);
				}
				household.Destroy();
				ReturningFromWorld = WorldType.Undefined;
				break;
			}
			}
			if (sTravelData.mState == TravelData.TravelState.EndVacation && sTravelData.mbItemsAddedToInventory)
			{
				Sim activeActor = Sim.ActiveActor;
				activeActor?.AddAlarm(2f, TimeUnit.Minutes, activeActor.ShowItemsAddFromTravelTNS, "Display TNS of Added Items", AlarmType.AlwaysPersisted);
			}
			PersistStatic.MainMenuLoading = true;
			Tutorialette.ResetTutorialetteCoolDownTimer();
			if (TravelHousehold != null)
			{
				ThumbnailManager.GenerateHouseholdThumbnail(TravelHousehold.HouseholdId, TravelHousehold.HouseholdId, ThumbnailSizeMask.Large);
			}
		}
		catch (Exception)
		{
		}
	}

	public static List<SimDescription> PostTravelingFixUp()
	{
		List<SimDescription> list = new List<SimDescription>();
		try
		{
			if (TravelComplete != null)
			{
				TravelComplete();
			}
			foreach (SimDescription item in Household.EverySimDescription())
			{
				MiniSimDescription miniSimDescription = MiniSimDescription.Find(item.SimDescriptionId);
				if (miniSimDescription != null && !sTravelData.mTravelerIds.Contains(item.SimDescriptionId))
				{
					item.MergeTravelInformation(miniSimDescription);
					if (miniSimDescription.mDeathStyle != item.DeathStyle)
					{
						list.Add(item);
					}
				}
			}
			foreach (MiniSimDescription item2 in MiniSimDescription.GetChildrenNeedFixUp())
			{
				SimDescription simDescription = SimDescription.Find(item2.mMotherDescId);
				if ((simDescription == null || sTravelData.mTravelerIds.Contains(item2.mMotherDescId)) && item2.HouseholdMembers != null && item2.HouseholdMembers.Count > 0)
				{
					foreach (ulong householdMember in item2.HouseholdMembers)
					{
						simDescription = SimDescription.Find(householdMember);
						if (simDescription != null)
						{
							break;
						}
					}
				}
				if (simDescription == null || simDescription.Household == null)
				{
					continue;
				}
				SimDescription simDescription2 = item2.UnpackSim();
				if (simDescription2 != null)
				{
					simDescription.Household.Add(simDescription2);
					item2.Instantiated = true;
					simDescription2.MergeTravelInformation(item2);
					if (item2.mDeathStyle != simDescription2.DeathStyle)
					{
						list.Add(simDescription2);
					}
					else if (simDescription2.CreatedSim == null && simDescription2.LotHome != null)
					{
						Sim sim = simDescription2.InstantiateOffScreen(simDescription2.LotHome);
						Sim.MakeSimGoHome(sim, drivenSimsGoHomeWith: false);
					}
					item2.mMotherDescId = 0uL;
				}
			}
			if (sTravelData.mState == TravelData.TravelState.EndVacation)
			{
				if (sTravelData.mSimDescriptionNeedPostFixUp != null)
				{
					Household activeHousehold = Household.ActiveHousehold;
					foreach (SimDescription item3 in sTravelData.mSimDescriptionNeedPostFixUp)
					{
						activeHousehold.RemoveTemporary(item3);
						activeHousehold.Add(item3);
					}
				}
				if (sTravelData.mSimDescriptionAgedUpFixUp != null)
				{
					_ = Household.ActiveHousehold;
					foreach (SimRefreshData item4 in sTravelData.mSimDescriptionAgedUpFixUp)
					{
						Sim createdSim = item4.mInWorldDesc.CreatedSim;
						if (createdSim == null)
						{
							Bin.ImportSim(item4.mInWorldDesc, item4.mPosition, item4.mInventoryId);
							createdSim = item4.mInWorldDesc.CreatedSim;
							createdSim.SwitchToOutfitWithoutSpin(createdSim.CurrentOutfitCategory);
							createdSim.BuffManager.LoadBuffsFromTravel(item4.mImportedDesc);
							if (item4.mIsSelected)
							{
								PlumbBob.SelectActor(createdSim);
							}
						}
						item4.mImportedDesc.DisposeTravelImportedSimDesc();
					}
					sTravelData.mSimDescriptionAgedUpFixUp.Clear();
				}
				foreach (SimDescription allSimDescription in Household.ActiveHousehold.AllSimDescriptions)
				{
					ulong simDescriptionId = allSimDescription.SimDescriptionId;
					MiniSimDescription miniSimDescription2 = MiniSimDescription.Find(simDescriptionId);
					if (miniSimDescription2 != null)
					{
						if (!sTravelData.mTravelerIds.Contains(simDescriptionId))
						{
							allSimDescription.MergeTravelInformation(miniSimDescription2);
						}
						miniSimDescription2.Instantiated = true;
					}
				}
				if (sTravelData.mTravelingRelationships != null)
				{
					foreach (TravelRelationship mTravelingRelationship in sTravelData.mTravelingRelationships)
					{
						SimDescription x = Household.ActiveHousehold.FindMember(mTravelingRelationship.simXId);
						for (int i = 0; i < mTravelingRelationship.simyIds.Count; i++)
						{
							SimDescription y = Household.ActiveHousehold.FindMember(mTravelingRelationship.simyIds[i]);
							Relationship relationship = Relationship.Get(x, y, createIfNone: true);
							relationship.CopyRelationship(mTravelingRelationship.rels[i]);
						}
					}
					sTravelData.mTravelingRelationships.Clear();
					sTravelData.mTravelingRelationships = null;
				}
				float num = 0f;
				foreach (Sim allActor in Household.ActiveHousehold.AllActors)
				{
					SimDescription simDescription3 = allActor.SimDescription;
					ulong simDescriptionId2 = simDescription3.SimDescriptionId;
					if (!sTravelData.mTravelerIds.Contains(simDescriptionId2) || sTravelData.mDeadSims.Contains(simDescriptionId2))
					{
						continue;
					}
					BuffInstance element = allActor.BuffManager.GetElement(BuffNames.Mourning);
					if (element != null && element.TimeoutCount > num)
					{
						num = element.TimeoutCount;
					}
					if (allActor.BuffManager.GetElement(BuffNames.HeartBroken) is BuffHeartBroken.BuffInstanceHeartBroken { BuffOrigin: Origin.FromWitnessingDeath } buffInstanceHeartBroken && buffInstanceHeartBroken.TimeoutCount > num)
					{
						num = buffInstanceHeartBroken.TimeoutCount;
					}
					MiniSimDescription miniSimDescription3 = MiniSimDescription.Find(simDescriptionId2);
					if (miniSimDescription3 == null)
					{
						continue;
					}
					foreach (MiniRelationship miniRelationship in miniSimDescription3.MiniRelationships)
					{
						SimDescription simDescription4 = SimDescription.Find(miniRelationship.SimDescriptionId);
						if (simDescription4 != null)
						{
							Relationship unsafely = Relationship.GetUnsafely(simDescription3, simDescription4);
							RomanceVisibilityState.MergeTravelInformationOnTravelBackHome(miniRelationship, unsafely);
						}
						else if (miniRelationship.RomanceState != RomanceVisibilityStateType.None && miniRelationship.RomanceStartTime.Ticks == 0)
						{
							MiniSimDescription miniSimDescription4 = MiniSimDescription.Find(miniRelationship.SimDescriptionId);
							if (miniSimDescription4 != null && miniSimDescription4.HomeWorld != miniSimDescription3.HomeWorld)
							{
								miniRelationship.RomanceStartTime = SimClock.CurrentTime();
							}
						}
					}
				}
				Household household = null;
				foreach (ulong mDeadSim in sTravelData.mDeadSims)
				{
					SimDescription simDescription5 = SimDescription.Find(mDeadSim);
					if (simDescription5 != null)
					{
						MidlifeCrisisManager.OnSimDied(simDescription5);
						if (simDescription5.CreatedSim != null && Sim.ActiveActor == simDescription5.CreatedSim)
						{
							household = Household.ActiveHousehold;
							PlumbBob.ForceSelectActor(null);
						}
						if (num != 0f || sTravelData.mTravelerIds.Count == sTravelData.mDeadSims.Count)
						{
							Urnstone.FinalizeSimDeathRelationships(simDescription5, num);
						}
						simDescription5.Household.Remove(simDescription5);
						if (Urnstone.FindGhostsGrave(simDescription5) == null)
						{
							simDescription5.Dispose();
						}
					}
				}
				if (household != null)
				{
					List<Sim> allActors = household.AllActors;
					if (allActors.Count > 0)
					{
						sNextSimToSelect = RandomUtil.GetRandomObjectFromList(allActors);
					}
					else
					{
						sStartupState = InWorldState.SubState.PlayFlow;
					}
				}
				Household household2 = Household.ActiveHousehold ?? household;
				if (household2 != null)
				{
					UnstashHousehold(sTravelData.mStache, household2);
					foreach (ulong mTravelerId in sTravelData.mTravelerIds)
					{
						SimDescription simDescription6 = household2.FindMember(mTravelerId);
						if ((simDescription6 != null || (sTravelData.mDeadSims != null && sTravelData.mDeadSims.Contains(mTravelerId))) && simDescription6 != null && simDescription6.CreatedSim != null)
						{
							EventTracker.SendEvent(EventTypeId.kSimReturnedFromVacationWorld, simDescription6.CreatedSim);
						}
					}
					if (household2.AllActors.Count > 0)
					{
						GrimReaperSituation.CheckForAbandonedChildren(household2);
					}
					foreach (Sim allActor2 in household2.AllActors)
					{
						if (!Household.RoommateManager.IsNPCRoommate(allActor2))
						{
							allActor2.OnBecameSelectable();
						}
					}
				}
				GiveWeddingGiftsIfOwed();
			}
		}
		catch (Exception)
		{
		}
		sTravelData.mStache.RemoveAllItems();
		if (sTravelData.mState == TravelData.TravelState.EndVacation)
		{
			sTravelData = null;
			sIsChangingWorlds = false;
		}
		return list;
	}

	private static void VacationArrival(Household travelHouse)
	{
		foreach (SimDescription allSimDescription in travelHouse.AllSimDescriptions)
		{
			WorldName currentWorld = GameUtils.GetCurrentWorld();
			allSimDescription.VisaManager.UpdateWorldVisit(currentWorld);
			allSimDescription.CreatedSim?.OnBecameSelectable();
		}
		UnstashHousehold(sTravelData.mStache, travelHouse);
		travelHouse.RealEstateManager = sTravelData.mRealEstateManager;
		travelHouse.SetupVacationAlarms();
	}

	public static void OnArrivalAtVacationWorld()
	{
		try
		{
			int count = sTravelData.mTravelHouse.AllSimDescriptions.Count;
			Dictionary<ulong, SimDescription> dictionary = new Dictionary<ulong, SimDescription>();
			for (int i = 0; i < count; i++)
			{
				SimDescription simDescription = sTravelData.mTravelHouse.AllSimDescriptions[i];
				dictionary.Add(simDescription.SimDescriptionId, simDescription);
			}
			if (sTravelData.mTravelingRelationships != null)
			{
				foreach (TravelRelationship mTravelingRelationship in sTravelData.mTravelingRelationships)
				{
					SimDescription x = dictionary[mTravelingRelationship.simXId];
					for (int j = 0; j < mTravelingRelationship.simyIds.Count; j++)
					{
						SimDescription y = dictionary[mTravelingRelationship.simyIds[j]];
						Relationship relationship = Relationship.Get(x, y, createIfNone: true);
						relationship.CopyRelationship(mTravelingRelationship.rels[j]);
					}
				}
				sTravelData.mTravelingRelationships.Clear();
			}
			Sim simToSelect = null;
			TravelUtil.LocateHomeAndPlaceSimsAtVacationWorld(sTravelData.mTravelHouse, ref simToSelect);
			if (simToSelect != null)
			{
				PlumbBob.ForceSelectActor(simToSelect);
			}
			if (GameUtils.IsFutureWorld())
			{
				FutureDescendantService instance = FutureDescendantService.GetInstance();
				instance.PostFutureWorldLoadProcess();
				CauseEffectService instance2 = CauseEffectService.GetInstance();
				instance2.PostFutureWorldLoadProcess();
			}
			Gameflow.SetGameSpeed(Sims3.SimIFace.Gameflow.GameSpeed.Normal, Gameflow.SetGameSpeedContext.Gameplay);
			if (Household.ActiveHousehold != null)
			{
				foreach (Sim allActor in Household.ActiveHousehold.AllActors)
				{
					EventTracker.SendEvent(new GuidEvent<WorldName>(EventTypeId.kSimEnteredVacationWorld, allActor, GameUtils.GetCurrentWorld()));
				}
			}
			TravelUtil.SpecialStoryProgression(sTravelData.mNumDaysSinceLastInDestWorld);
			sIsChangingWorlds = false;
			sTravelData.mState = TravelData.TravelState.OnVacation;
		}
		catch (Exception)
		{
		}
	}

	public static void TransitionToGameStateToInWorld(string filename, SaveGameMetadata metadata, InWorldState.SubState startupState, bool force)
	{
		sLoadFileName = filename;
		sIsNewGame = false;
		sForceStateChange = force;
		sSaveGameMetadata = metadata;
		sWorldFileMetadata = null;
		sStartupState = startupState;
		sIsAFreshGame = false;
		if (IsTravelling)
		{
			GotoState(GameState.TravelArrival);
		}
		else
		{
			GotoState(GameState.ToInWorld);
		}
	}

	public static void TransitionToGameStateToInWorld(string filename, WorldFileMetadata metadata, InWorldState.SubState startupState, bool force)
	{
		sLoadFileName = filename;
		sIsNewGame = true;
		sForceStateChange = force;
		sWorldFileMetadata = metadata;
		sSaveGameMetadata = null;
		sStartupState = startupState;
		sIsAFreshGame = true;
		if (IsTravelling)
		{
			GotoState(GameState.TravelArrival);
		}
		else
		{
			GotoState(GameState.ToInWorld);
		}
	}

	internal static void AddUrnstonePendingRemovals(Inventory inventory)
	{
		List<Urnstone> list = inventory.FindAll<Urnstone>(checkInUse: false);
		foreach (Urnstone item in list)
		{
			if (sTravelData.mPendingRemovals == null)
			{
				sTravelData.mPendingRemovals = new List<Urnstone>(list.Count);
			}
			sTravelData.mPendingRemovals.Add(item);
			inventory.RemoveByForce(item);
		}
	}

	internal static void AddUrnstonePendingAdditions(Inventory inventory)
	{
		List<Urnstone> list = inventory.FindAll<Urnstone>(checkInUse: false);
		if (list.Count > 0)
		{
			if (sTravelData.mPendingAdditions == null)
			{
				sTravelData.mPendingAdditions = new PairedListDictionary<Inventory, List<Urnstone>>();
			}
			sTravelData.mPendingAdditions.Add(inventory, list);
		}
	}

	internal static void ApplyInventoryUrnstoneMerging()
	{
		if (sTravelData.mPendingRemovals != null)
		{
			if (sTravelData.mPendingAdditions != null)
			{
				foreach (KeyValuePair<Inventory, List<Urnstone>> mPendingAddition in sTravelData.mPendingAdditions)
				{
					foreach (Urnstone item in mPendingAddition.Value)
					{
						if (item.DeadSimsDescription == null)
						{
							continue;
						}
						foreach (Urnstone mPendingRemoval in sTravelData.mPendingRemovals)
						{
							if (mPendingRemoval.DeadSimsDescription != null && mPendingRemoval.DeadSimsDescription.SimDescriptionId == item.DeadSimsDescription.SimDescriptionId)
							{
								mPendingRemoval.MergeTravelInformation(item);
								mPendingAddition.Key.RemoveByForce(item);
								if (mPendingRemoval.DeadSimsDescription != item.DeadSimsDescription)
								{
									item.DeadSimsDescription.Dispose(clearInstantiatedBit: false, keepPartnerGenealogy: true, addMiniSim: false);
								}
								item.DeadSimsDescription = null;
								item.Destroy();
								mPendingAddition.Key.TryToAdd(mPendingRemoval);
								sTravelData.mPendingRemovals.Remove(mPendingRemoval);
								break;
							}
						}
					}
				}
			}
			foreach (Urnstone mPendingRemoval2 in sTravelData.mPendingRemovals)
			{
				mPendingRemoval2.Destroy();
			}
		}
		sTravelData.mPendingRemovals = null;
		sTravelData.mPendingAdditions = null;
	}
