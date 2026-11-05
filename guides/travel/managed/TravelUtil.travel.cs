// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	public sealed class SitInCarToTriggerTravel : Interaction<Sim, Lot>
	{
		private sealed class Definition : InteractionDefinition<Sim, Lot, SitInCarToTriggerTravel>
		{
			protected override bool Test(Sim a, Lot target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public bool IsGoingToUniversity;

		public int TravelCost;

		public int TravelDuration;

		public List<Sim> Followers;

		public List<ulong> TravelingSimGuids;

		public WorldName DestinationWorldName;

		private AlarmHandle mTriggerWorldTransition = AlarmHandle.kInvalidHandle;

		private static readonly ulong kIconNameHash = ResourceUtils.HashString64("w_goonvacation");

		public static readonly InteractionDefinition Singleton = new Definition();

		public override ThumbnailKey GetIconKey()
		{
			return new ThumbnailKey(new ResourceKey(kIconNameHash, 796721156u, 0u), ThumbnailSize.Medium);
		}

		protected override bool Run()
		{
			try
			{
				if (Actor.FamilyFunds >= TravelCost)
				{
					Actor.ModifyFunds(-TravelCost);
					AssurePlayerThatBabiesAndToddlersAreFine();
					Boat.MakeSimExitAndParkBoatIfPossible(Actor);
					if (Followers != null)
					{
						foreach (Sim follower in Followers)
						{
							Boat.MakeSimExitAndParkBoatIfPossible(follower);
						}
					}
					if (!Target.IsWorldLot)
					{
						mTriggerWorldTransition = AlarmManager.Global.AddAlarm(kTravelToVacationWorldTimeout, TimeUnit.Minutes, AddExitReasonToAllSims, "Travel to vacation world", AlarmType.AlwaysPersisted, Actor);
						Route route = Actor.CreateRoute();
						Target.PlanToLot(route);
						Actor.DoRouteWithFollowers(route, Followers);
					}
					TriggerTravelToVacationWorld();
					return true;
				}
				return false;
			}
			finally
			{
				PlayerMadeTravelRequest = false;
			}
		}

		public override void Cleanup()
		{
			RemoveTriggerAlarm();
			base.Cleanup();
		}

		private void RemoveTriggerAlarm()
		{
			if (mTriggerWorldTransition != AlarmHandle.kInvalidHandle)
			{
				AlarmManager.Global.RemoveAlarm(mTriggerWorldTransition);
				mTriggerWorldTransition = AlarmHandle.kInvalidHandle;
			}
		}

		public void TriggerTravelToVacationWorld()
		{
			RemoveTriggerAlarm();
			List<Sim> list = new List<Sim>(Followers);
			list.Add(Actor);
			if (FinalBoardingCall(Actor.Household, list, DestinationWorldName, isWorldMove: false))
			{
				ForeignVisitorsSituation.ForceKillForeignVisitorsSituation();
				HolographicProjectionSituation.ForceKillHolographicVisitorsSituation();
				int num = int.MinValue;
				foreach (Sim item in list)
				{
					if (num < item.VisaManager.LastTimeOnVacation)
					{
						num = item.VisaManager.LastTimeOnVacation;
					}
				}
				int numDaysSinceLastInDestWorld = -1;
				if (num > 0)
				{
					numDaysSinceLastInDestWorld = SimClock.ElapsedCalendarDays() - num;
				}
				Camera.SetView(CameraView.MapView, alsoFollowSelectedSim: false, useLerp: true);
				int tripLength = ((sOverriddenTripLength > 0) ? sOverriddenTripLength : TravelDuration);
				GameStates.TravelToVacationWorld(DestinationWorldName, TravelingSimGuids, tripLength, numDaysSinceLastInDestWorld);
				TelemetryStats.VacationTelemetryInfo vacationTelemetryInfo = new TelemetryStats.VacationTelemetryInfo();
				vacationTelemetryInfo.LeavingHomeWorld = true;
				vacationTelemetryInfo.WorldId = DestinationWorldName;
				vacationTelemetryInfo.NumberOfSimsInHoushold = Actor.Household.NumMembers;
				vacationTelemetryInfo.NumberOfSimsThatDidTravel = list.Count;
				int num2 = 0;
				foreach (Sim allActor in Actor.Household.AllActors)
				{
					if (CheckForReasonsToFailTravel(allActor.SimDescription, DestinationWorldName, isWorldMove: false) == null)
					{
						num2++;
					}
				}
				vacationTelemetryInfo.NumberOfSimsAbleToTravel = num2;
				vacationTelemetryInfo.VisaLevels = new PairedListDictionary<ulong, int>();
				foreach (Sim item2 in list)
				{
					int visaLevel = item2.VisaManager.GetVisaLevel(DestinationWorldName);
					vacationTelemetryInfo.VisaLevels.Add(item2.SimDescription.SimDescriptionId, visaLevel);
				}
				vacationTelemetryInfo.TravelDateAndTime = SimClock.CurrentTime();
				EventTracker.SendEvent(new VacationInfoEvent(EventTypeId.kVacationTelemetryInfo, vacationTelemetryInfo));
				return;
			}
			if (DestinationWorldName == WorldName.FutureWorld)
			{
				Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "CantTravelFutureTNS", TravelCost), StyledNotification.NotificationStyle.kSystemMessage, ObjectGuid.InvalidObjectGuid);
			}
			else
			{
				Actor.ShowTNSIfSelectable(LocalizeString(Actor.IsFemale, "CantTravelTNS", TravelCost), StyledNotification.NotificationStyle.kSystemMessage, ObjectGuid.InvalidObjectGuid);
			}
			Actor.ModifyFunds(TravelCost);
			foreach (Sim item3 in list)
			{
				if (!item3.IsDying())
				{
					item3.AddExitReason(ExitReason.CanceledByScript);
				}
			}
		}

		private void AssurePlayerThatBabiesAndToddlersAreFine()
		{
			TravelUtil.AssurePlayerThatBabiesAndToddlersAreFine(Actor, Followers, false);
		}

		internal void AddExitReasonToAllSims()
		{
			if (Followers != null)
			{
				foreach (Sim follower in Followers)
				{
					follower.AddExitReason(ExitReason.Canceled);
				}
			}
			Actor.AddExitReason(ExitReason.Canceled);
		}
	}

	private sealed class TriggerTravelBackToHomeWorld : Interaction<Sim, Sim>
	{
		private sealed class Definition : InteractionDefinition<Sim, Sim, TriggerTravelBackToHomeWorld>
		{
			protected override bool Test(Sim a, Sim target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				return true;
			}
		}

		public bool mbEveryoneLeaves;

		public List<Sim> mDepartingSims;

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			if (mbEveryoneLeaves)
			{
				foreach (Sim allActor in Household.ActiveHousehold.AllActors)
				{
					UpdateRomancesAndVisaManager(allActor);
					Boat.MakeSimExitAndParkBoatIfPossible(allActor);
				}
				GameStates.UpdateTelemetryAndTriggerTravelBackToHomeWorld();
				return true;
			}
			if (mDepartingSims != null && IsValidEarlyDeparture())
			{
				Lot destinationLotForEarlyDepartureSims = GetDestinationLotForEarlyDepartureSims();
				foreach (Sim mDepartingSim in mDepartingSims)
				{
					UpdateRomancesAndVisaManager(mDepartingSim);
					Boat.MakeSimExitAndParkBoatIfPossible(mDepartingSim);
					if (GameStates.PerformEarlyDepartureToHomeWorld.Singleton.CreateInstance(mDepartingSim, mDepartingSim, new InteractionPriority(InteractionPriorityLevel.MaxDeath), isAutonomous: false, cancellableByPlayer: false) is GameStates.PerformEarlyDepartureToHomeWorld performEarlyDepartureToHomeWorld)
					{
						performEarlyDepartureToHomeWorld.DestinationLot = destinationLotForEarlyDepartureSims;
						mDepartingSim.InteractionQueue.Add(performEarlyDepartureToHomeWorld);
					}
				}
				return true;
			}
			return false;
		}

		private Lot GetDestinationLotForEarlyDepartureSims()
		{
			if (mDepartingSims == null || mDepartingSims.Count == 0)
			{
				return null;
			}
			Lot lot = null;
			foreach (Sim mDepartingSim in mDepartingSims)
			{
				Lot lotCurrent = mDepartingSim.LotCurrent;
				if (lotCurrent != null && !lotCurrent.IsWorldLot)
				{
					lot = lotCurrent;
					break;
				}
			}
			if (lot == null && Household.ActiveHousehold != null)
			{
				lot = Household.ActiveHousehold.LotHome;
			}
			return LotManager.GetFarthestLot(lot, mDepartingSims[0], bSimCanRoute: true);
		}

		private void UpdateRomancesAndVisaManager(Sim actor)
		{
			RomanceVisibilityState.BreakUpBetrayedRomancesWhenLeavingHome(actor);
			actor.VisaManager.UpdateDaysSpentInWorld(GameUtils.GetCurrentWorld(), Sims3.Gameplay.UI.Responder.Instance.HudModel.CurrentTripDay);
		}

		private bool IsValidEarlyDeparture()
		{
			bool bAtLeastOneTeenOrAboveSim = false;
			bool bAtLeastOneYoungKid = false;
			bool bAtLeastOnePet = false;
			if (GatherAgeCornerCases(mDepartingSims, isKidAgeLimitChild: true, out bAtLeastOneYoungKid, out bAtLeastOneTeenOrAboveSim, out bAtLeastOnePet) && bAtLeastOneYoungKid && !bAtLeastOneTeenOrAboveSim)
			{
				StyledNotification.Format format = new StyledNotification.Format(LocalizeString("IllegalEarlyDeparture"), StyledNotification.NotificationStyle.kGameMessageNegative);
				StyledNotification.Show(format);
				return false;
			}
			return true;
		}
	}

		private void TriggerTravelToHomeWorld()
		{
			SimpleMessageDialog.Show(LocalizeString("TermOverCaption"), LocalizeString("TermOverText"), ModalDialog.PauseMode.PauseSimulator);
			GameStates.ReturnFromVacationWorld();
		}

	[Tunable]
	[TunableComment("As soon as you are done using the phone or computer to trigger travel, we'll force the household to travel within this time interval. Units: Sim Minutes. Positive Integer. Initial GPE Default: 20.")]
	private static int kTravelToVacationWorldTimeout = 20;

	[Tunable]
	[TunableComment("When the sims arrive at vacation world, this is the radial range around the front door where they attempt to perform the Arrive interaction. For mailbox and PostBox, we use the minimum value. Type: float array. Fixed length 2. Minimum then maximum number. Initial GPE Default: {3, 7}.")]
	public static float[] kMinimumAndMaximumDistanceForRadialRangeRouteOnArrival = new float[2] { 3f, 7f };

	internal static WorldName[] kVacationWorldNames = new WorldName[3]
	{
		WorldName.China,
		WorldName.Egypt,
		WorldName.France
	};

	public static bool CanMoveWorlds(Sim actor, bool testFamilyPregnancy, ref GreyedOutTooltipCallback callback)
	{
		return CanMoveWorldsInternal(actor, testFamilyPregnancy, ignoreCertainTransformBuffs: false, ref callback);
	}

	public static bool CanMoveFutureWorlds(Sim actor, bool testFamilyPregnancy, ref GreyedOutTooltipCallback callback)
	{
		return CanMoveWorldsInternal(actor, testFamilyPregnancy, ignoreCertainTransformBuffs: true, ref callback);
	}

	private static bool CanMoveWorldsInternal(Sim actor, bool testFamilyPregnancy, bool ignoreCertainTransformBuffs, ref GreyedOutTooltipCallback callback)
	{
		if (actor == null || GameUtils.IsOnVacation() || actor.BuffManager.HasElement(BuffNames.Ensorcelled) || actor.BuffManager.HasElement(BuffNames.HeartOfGold) || Household.RoommateManager.IsNPCRoommate(actor) || actor.IsPet)
		{
			return false;
		}
		GreyedOutTooltipHelper greyedOutTooltipHelper = null;
		if (greyedOutTooltipHelper == null && actor.SimDescription.IsVisuallyPregnant)
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "IsPregnant", useActorAsLocalizationArgument: true);
		}
		if (greyedOutTooltipHelper == null && actor.BuffManager.HasElement(BuffNames.MalePregnancy))
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "ConditionPreventsTravel", useActorAsLocalizationArgument: true);
		}
		if (greyedOutTooltipHelper == null && actor.BuffManager.HasElement(BuffNames.VampireBite))
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "VampireBite", useActorAsLocalizationArgument: true);
		}
		if (greyedOutTooltipHelper == null && Sims3.Gameplay.Passport.Passport.IsHouseholdSimAwayInPassport(actor.Household))
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "SimInPassport", useActorAsLocalizationArgument: true);
		}
		if (greyedOutTooltipHelper == null)
		{
			foreach (Sim allActor in actor.Household.AllActors)
			{
				if (allActor.IsDying())
				{
					greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "FamilyMemberIsDying", useActorAsLocalizationArgument: true);
				}
				else
				{
					if (allActor.Autonomy.SituationComponent.InSituationOfType(typeof(ParentsLeavingTownSituation)))
					{
						greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "ParentsOutOfTown", useActorAsLocalizationArgument: true);
						break;
					}
					if (allActor.InteractionQueue.HasInteractionOfType(AgeDown.Singleton))
					{
						greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "SomeoneIsAgingDown", useActorAsLocalizationArgument: true);
					}
				}
				if (allActor.SimDescription.IsVisuallyPregnant && testFamilyPregnancy)
				{
					greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "SomeonePregnant", useActorAsLocalizationArgument: true);
				}
				if (allActor != actor && allActor.InteractionQueue.HasInteractionOfType(typeof(IAmMovingInteraction)))
				{
					greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "AnotherTravelRequested", useActorAsLocalizationArgument: true);
				}
			}
		}
		if (greyedOutTooltipHelper == null && GameStates.WorldMoveRequested)
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "AnotherTravelRequested", useActorAsLocalizationArgument: true);
		}
		if (greyedOutTooltipHelper == null && PlayerMadeTravelRequest)
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "AnotherTravelRequested", useActorAsLocalizationArgument: true);
		}
		if (greyedOutTooltipHelper == null && HasBlockingTransformBuff(actor, ignoreCertainTransformBuffs))
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "NoTravelWhileTransformed", useActorAsLocalizationArgument: true);
		}
		string failReason = null;
		if (greyedOutTooltipHelper == null && !InWorldSubState.IsEditTownValid(actor.LotHome, ref failReason))
		{
			if (!string.IsNullOrEmpty(failReason))
			{
				string entryKey = "Gameplay/Visa/TravelUtil:EditTownInvalid" + failReason;
				if (Localization.HasLocalizationString(entryKey))
				{
					greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "EditTownInvalid" + failReason, useActorAsLocalizationArgument: false);
				}
			}
			if (greyedOutTooltipHelper == null)
			{
				greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "EditTownInvalid", useActorAsLocalizationArgument: false);
			}
		}
		if (greyedOutTooltipHelper != null)
		{
			callback = greyedOutTooltipHelper.TextTextAndAway;
			return false;
		}
		return true;
	}

	private static bool HasBlockingTransformBuff(Sim Actor, bool ignoreCertainTransformBuffs)
	{
		if (Actor.BuffManager == null)
		{
			return false;
		}
		BuffTransformation transformBuff = Actor.BuffManager.TransformBuff;
		if (transformBuff == null)
		{
			return false;
		}
		if (ignoreCertainTransformBuffs)
		{
			BuffNames buffGuid = transformBuff.BuffGuid;
			if (buffGuid != BuffNames.RobotForm)
			{
				if ((long)buffGuid > -3031766599977509321L || (long)buffGuid < -3031766599977509328L)
				{
					goto IL_007e;
				}
				switch ((uint)(buffGuid - BuffNames.Pinkified))
				{
				case 0u:
				case 1u:
				case 2u:
				case 3u:
				case 4u:
				case 5u:
				case 6u:
				case 7u:
					break;
				default:
					goto IL_007e;
				}
			}
			return false;
		}
		goto IL_0093;
		IL_0093:
		return true;
		IL_007e:
		ulong guid = transformBuff.Guid;
		if (guid == 5462585249724625664L)
		{
			return false;
		}
		goto IL_0093;
	}

	public static bool CanSimTriggerTravelToVacationWorld(Sim actor, ref GreyedOutTooltipCallback callback)
	{
		if (!GameUtils.IsInstalled(ProductVersion.EP1))
		{
			return false;
		}
		if (!CanMoveWorlds(actor, testFamilyPregnancy: false, ref callback))
		{
			return false;
		}
		GreyedOutTooltipHelper greyedOutTooltipHelper = null;
		if (actor.BuffManager.HasElement(BuffNames.WentToLocation))
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "RecoveringFromVacation", useActorAsLocalizationArgument: true);
		}
		if (greyedOutTooltipHelper != null)
		{
			callback = greyedOutTooltipHelper.TextTextAndAway;
			return false;
		}
		return true;
	}

	public static bool CanSimTriggerTravelToFutureWorld(Sim actor, ref GreyedOutTooltipCallback callback)
	{
		if (!GameUtils.IsInstalled(ProductVersion.EP11))
		{
			return false;
		}
		if (!CanMoveFutureWorlds(actor, testFamilyPregnancy: false, ref callback))
		{
			return false;
		}
		return true;
	}

	public static bool ShowTravelToVacationWorldDialog(Sim travelInitiator, out TripPlannerDialog.Result tripPlannerResult)
	{
		tripPlannerResult = null;
		if (travelInitiator == null || travelInitiator.Household == null || !travelInitiator.IsSelectable)
		{
			return false;
		}
		if (!UIUtils.IsOkayToStartModalDialog())
		{
			return false;
		}
		if (!CommonTravelTests(travelInitiator.LotHome))
		{
			return false;
		}
		List<TripPlannerDialog.IDestinationInfo> list = new List<TripPlannerDialog.IDestinationInfo>();
		for (int i = 0; i < kVacationWorldNames.Length; i++)
		{
			DestinationInfo item = new DestinationInfo(DestinationInfoImage[i], DestinationInfoName[i], DestinationInfoDescription[i], DestinationInfoConfirmImage[i], DestinationInfoComfirmDescription[i], DestinationInfoIndex[i], kVacationWorldNames[i]);
			list.Add(item);
		}
		SimTravelInfo defaultTraveler = null;
		List<TripPlannerDialog.ISimTravelInfo> list2 = new List<TripPlannerDialog.ISimTravelInfo>();
		foreach (SimDescription simDescription in travelInitiator.Household.SimDescriptions)
		{
			if (!Household.RoommateManager.IsNPCRoommate(simDescription.SimDescriptionId))
			{
				List<int> visas = GetVisas(simDescription);
				int[] partnershipBonuses = GetPartnershipBonuses(simDescription);
				int num = GetCostForSimWithAge(simDescription.Age);
				int durationMod = 0;
				if (simDescription.TraitManager.HasElement(TraitNames.PreparedTraveler))
				{
					durationMod = TraitTuning.PreparedTravelerDurationIncrease;
				}
				if (simDescription.TraitManager.HasElement(TraitNames.Jetsetter))
				{
					num = (int)((float)num * TraitTuning.JetsetterCostMultiplier);
				}
				if (simDescription == travelInitiator.SimDescription)
				{
					defaultTraveler = new SimTravelInfo(simDescription, num, durationMod, null, visas, partnershipBonuses);
					continue;
				}
				string reason = CheckForReasonsToFailTravel(simDescription);
				SimTravelInfo item2 = new SimTravelInfo(simDescription, num, durationMod, reason, visas, partnershipBonuses);
				list2.Add(item2);
			}
		}
		if (PlayerMadeTravelRequest)
		{
			return false;
		}
		List<int> durations = new List<int>(kTravelDurations);
		tripPlannerResult = TripPlannerDialog.Show(list, durations, list2, defaultTraveler);
		PlayerMadeTravelRequest = tripPlannerResult != null;
		return PlayerMadeTravelRequest;
	}

	public static void TriggerTravelToVacationWorld(Sim travelInitiator, TripPlannerDialog.Result travelInfo)
	{
		if (travelInitiator == null || travelInfo == null)
		{
			return;
		}
		DestinationInfo destinationInfo = travelInfo.Destination as DestinationInfo;
		WorldName worldName = destinationInfo.WorldName;
		List<ulong> list = new List<ulong>();
		List<Sim> list2 = new List<Sim>();
		foreach (ISimDescription sim in travelInfo.Sims)
		{
			list.Add(sim.SimDescriptionId);
			if (sim is SimDescription { CreatedSim: { } createdSim } && createdSim != travelInitiator)
			{
				list2.Add(createdSim);
			}
		}
		if (GameUtils.IsInstalled(ProductVersion.EP11))
		{
			if (!AcceptCancelDialog.Show(Sims3.UI.Responder.Instance.LocalizationModel.LocalizeString("Gameplay/Objects/Miscellaneous/TimePortal:ConfirmWarningTravelWith")))
			{
				PlayerMadeTravelRequest = false;
				return;
			}
			ITimePortal opportunityPortal = CauseEffectService.OpportunityPortal;
			list2.Add(travelInitiator);
			opportunityPortal?.RemoveBannedOpportunities(list2);
			list2.Remove(travelInitiator);
		}
		Lot lot = LotManager.GetFarthestLot(travelInitiator.LotCurrent);
		if (lot == null)
		{
			lot = LotManager.GetWorldLot();
		}
		if (lot != null && SitInCarToTriggerTravel.Singleton.CreateInstance(lot, travelInitiator, new InteractionPriority(InteractionPriorityLevel.High), isAutonomous: false, cancellableByPlayer: false) is SitInCarToTriggerTravel sitInCarToTriggerTravel)
		{
			sitInCarToTriggerTravel.IsGoingToUniversity = false;
			sitInCarToTriggerTravel.Followers = list2;
			sitInCarToTriggerTravel.TravelingSimGuids = list;
			sitInCarToTriggerTravel.TravelCost = travelInfo.Cost;
			sitInCarToTriggerTravel.TravelDuration = travelInfo.Duration;
			sitInCarToTriggerTravel.DestinationWorldName = worldName;
			travelInitiator.InteractionQueue.PushAsContinuation(sitInCarToTriggerTravel, mustRun: true);
		}
	}

	public static void LocateHomeAndPlaceSimsAtVacationWorld(Household household, ref Sim simToSelect)
	{
		if (household != null)
		{
			if (GameStates.DestinationTravelWorld == WorldName.University)
			{
				MoveIntoUniversityHousehold(household);
			}
			else
			{
				ProcessDeedsAndMoveInHousehold(household);
			}
			TriggerTutorial(household);
			PlaceSimsOnSafeSpots(household, ref simToSelect);
		}
	}

	private static void ProcessDeedsAndMoveInHousehold(Household household)
	{
		if (household == null)
		{
			return;
		}
		int num = 0;
		WorldName currentWorld = GameUtils.GetCurrentWorld();
		List<PropertyData> allVacationHomesInWorld = household.RealEstateManager.GetAllVacationHomesInWorld(currentWorld);
		List<PropertyData>.Enumerator enumerator = allVacationHomesInWorld.GetEnumerator();
		while (enumerator.MoveNext())
		{
			PropertyData current = enumerator.Current;
			Lot lot = LotManager.GetLot(current.LotId);
			if (lot != null && lot.ResidentialLotSubType != ResidentialLotSubType.kEP1_PlayerOwnable)
			{
				num += current.StoredValue;
				allVacationHomesInWorld.Remove(current);
				enumerator = allVacationHomesInWorld.GetEnumerator();
			}
		}
		if (num > 0)
		{
			StyledNotification.Format format = new StyledNotification.Format(LocalizeString("LotRezoned"), StyledNotification.NotificationStyle.kGameMessageNegative);
			StyledNotification.Show(format);
			household.ModifyFamilyFunds(num);
		}
		Lot lot2 = ChooseHomeLot(household, allVacationHomesInWorld);
		if (lot2 != null)
		{
			lot2.MoveIn(household);
			Mailbox.GetMailboxOnLot(lot2)?.ListenToReturnFromWorld();
		}
	}

	private static void PlaceSimsOnSafeSpots(Household household, ref Sim simToSelect)
	{
		bool flag = false;
		if (household == null)
		{
			return;
		}
		Lot lotHome = household.LotHome;
		if (lotHome == null)
		{
			return;
		}
		PostBoxJobBoard postBox = null;
		Mailbox mailbox = lotHome.FindMailbox();
		if (lotHome.CommercialLotSubType == CommercialLotSubType.kEP1_BaseCamp)
		{
			postBox = lotHome.FindPostBox();
		}
		if (GameStates.DestinationTravelWorld == WorldName.FutureWorld || GameStates.ReturningFromWorld == WorldType.Future)
		{
			flag = true;
		}
		bool flag2 = true;
		bool flag3 = ArriveHomeBehaviorInVacationWorld.ShouldArriveByTimePortal(lotHome, out var portals);
		Vector3 spawnPoint;
		bool flag4;
		if (flag3)
		{
			spawnPoint = portals[0].GetSlotPosition(Slot.ContainmentSlot_0);
			flag4 = true;
		}
		else
		{
			flag4 = TryGetGoodSpawnPointOnLotAtVacationWorld(lotHome, mailbox, postBox, out spawnPoint);
		}
		foreach (SimDescription allSimDescription in household.AllSimDescriptions)
		{
			AdventurousTraitBenefit(allSimDescription);
			Sim createdSim = allSimDescription.CreatedSim;
			if (flag2)
			{
				flag2 = false;
				simToSelect = createdSim;
			}
			bool flag5 = false;
			if (flag4)
			{
				flag5 = PositionSimInSafeSpotAtVacationWorld(createdSim, lotHome, spawnPoint, simToSelect == createdSim);
			}
			if (!flag5)
			{
				PositionSimInSafeSpotAtVacationWorld(createdSim, lotHome, postBox);
			}
			if (allSimDescription.CreatedSim != null && (flag3 || (!flag3 && flag)))
			{
				allSimDescription.CreatedSim.SetOpacity(0f, 0f);
			}
			Simulator.Sleep(0u);
		}
		ArriveHomeBehaviorInVacationWorld.SetupArriveHomeInteractionAlarm();
	}

	private static bool TryGetGoodSpawnPointOnLotAtVacationWorld(Lot home, Mailbox mailbox, PostBoxJobBoard postBox, out Vector3 spawnPoint)
	{
		spawnPoint = Vector3.Invalid;
		if (home == null)
		{
			return false;
		}
		Vector3 position;
		if (postBox != null)
		{
			position = postBox.Position;
		}
		else
		{
			if (mailbox == null)
			{
				return false;
			}
			position = mailbox.Position;
		}
		Corners corners = home.Corners;
		Vector3[] array = new Vector3[4]
		{
			(corners[Corner.Origin] + corners[Corner.XAxis]) / 2f,
			(corners[Corner.XAxis] + corners[Corner.Extent]) / 2f,
			(corners[Corner.Extent] + corners[Corner.YAxis]) / 2f,
			(corners[Corner.YAxis] + corners[Corner.Origin]) / 2f
		};
		Vector3 vector = position;
		float num = float.MaxValue;
		foreach (Vector3 vector2 in array)
		{
			float num2 = (vector2 - position).LengthSqr();
			if (num2 < num)
			{
				num = num2;
				vector = vector2;
			}
		}
		Vector3 position2 = position * 0.25f + vector * 0.75f;
		spawnPoint = World.SnapToFloor(position2);
		return true;
	}

	private static bool PositionSimInSafeSpotAtVacationWorld(Sim actor, Lot home, PostBoxJobBoard postBox)
	{
		bool flag = false;
		if (home == null || actor == null)
		{
			return flag;
		}
		if (postBox == null)
		{
			actor.MoveToRoutablePointInsideNearFrontDoor(home);
		}
		else
		{
			flag = PositionSimInSafeSpotAtVacationWorld(actor, home, postBox.Position, actorIsActive: false);
		}
		if (!flag)
		{
			flag = actor.AttemptToPutInSafeLocation(sendHome: true);
		}
		return flag;
	}

	private static bool PositionSimInSafeSpotAtVacationWorld(Sim actor, Lot home, Vector3 startPosition, bool actorIsActive)
	{
		if (actor == null || home == null || startPosition == Vector3.Invalid || startPosition == Vector3.Origin)
		{
			return false;
		}
		if (actorIsActive)
		{
			actor.SetForward(Vector3.UnitX);
			actor.SetPosition(startPosition);
			return true;
		}
		World.FindGoodLocationParams fglParams = new World.FindGoodLocationParams(startPosition);
		fglParams.BooleanConstraints |= FindGoodLocationBooleans.StayInRoom;
		if (GlobalFunctions.FindGoodLocation(actor, fglParams, out var pos, out var fwd) && actor.IsPointInLotSafelyRoutable(home, pos))
		{
			actor.SetForward(fwd);
			actor.SetPosition(pos);
			return true;
		}
		return false;
	}

	public static bool CanSimTriggerTravelToHomeWorld(Sim actor, ref GreyedOutTooltipCallback callback)
	{
		if (actor == null || !GameUtils.IsOnVacation() || !GameUtils.IsInstalled(ProductVersion.EP1))
		{
			return false;
		}
		GreyedOutTooltipHelper greyedOutTooltipHelper = null;
		if (greyedOutTooltipHelper == null && actor.BuffManager != null && actor.BuffManager.HasTransformBuff())
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "NoTravelWhileTransformed", useActorAsLocalizationArgument: true);
			callback = greyedOutTooltipHelper.TextTextAndAway;
			return false;
		}
		string failReason = null;
		if (!InWorldSubState.IsEditTownValid(actor.LotHome, ref failReason))
		{
			greyedOutTooltipHelper = new GreyedOutTooltipHelper(actor, "EditTownInvalid", useActorAsLocalizationArgument: false);
			callback = greyedOutTooltipHelper.TextTextAndAway;
			return false;
		}
		return true;
	}

	public static bool GatherReturnHomeAttributes(List<object> SelectedObjects, out bool bEveryoneLeaves, out List<Sim> departingSims)
	{
		bEveryoneLeaves = false;
		departingSims = null;
		Household activeHousehold = Household.ActiveHousehold;
		if (SelectedObjects == null || activeHousehold == null)
		{
			return false;
		}
		if (!CommonTravelTests(activeHousehold.LotHome))
		{
			return false;
		}
		int count = SelectedObjects.Count;
		int num = 0;
		departingSims = new List<Sim>(count);
		for (int i = 0; i < count; i++)
		{
			Sim sim = SelectedObjects[i] as Sim;
			if (activeHousehold.Contains(sim.SimDescription))
			{
				departingSims.Add(sim);
			}
		}
		if (departingSims.Count == 0)
		{
			departingSims = null;
			return false;
		}
		foreach (Sim allActor in activeHousehold.AllActors)
		{
			if (allActor.BuffManager.HasElement(BuffNames.Ensorcelled))
			{
				num++;
			}
		}
		if (num + departingSims.Count == activeHousehold.AllActors.Count)
		{
			departingSims = null;
			bEveryoneLeaves = true;
			foreach (Sim allActor2 in activeHousehold.AllActors)
			{
				if (allActor2.BuffManager.HasElement(BuffNames.Ensorcelled))
				{
					allActor2.BuffManager.RemoveElement(BuffNames.Ensorcelled);
				}
			}
		}
		return true;
	}

	public static void TriggerTravelToHomeWorld(Sim actor, bool bEveryoneLeaves, List<Sim> departingSims)
	{
		if (actor != null && TriggerTravelBackToHomeWorld.Singleton.CreateInstance(actor, actor, new InteractionPriority(InteractionPriorityLevel.High), isAutonomous: false, cancellableByPlayer: false) is TriggerTravelBackToHomeWorld triggerTravelBackToHomeWorld)
		{
			triggerTravelBackToHomeWorld.mbEveryoneLeaves = bEveryoneLeaves;
			triggerTravelBackToHomeWorld.mDepartingSims = departingSims;
			actor.InteractionQueue.PushAsContinuation(triggerTravelBackToHomeWorld, mustRun: true);
		}
	}

	private static string CheckForReasonsToFailTravel(SimDescription simDescription)
	{
		return CheckForReasonsToFailTravel(simDescription, GameStates.DestinationTravelWorld, isWorldMove: false);
	}

	private static string CheckForReasonsToFailTravel(SimDescription simDescription, WorldName worldName, bool isWorldMove)
	{
		string result = null;
		if (simDescription != null)
		{
			bool ignoreCertainTransformBuffs = worldName == WorldName.FutureWorld;
			Sim createdSim = simDescription.CreatedSim;
			if (!isWorldMove)
			{
				if (worldName != WorldName.FutureWorld && simDescription.ToddlerOrBelow)
				{
					result = LocalizeString(simDescription.IsFemale, "TooYoungToTravel", simDescription);
				}
				else if (worldName != WorldName.University && worldName != WorldName.FutureWorld && createdSim != null && createdSim.BuffManager.HasElement(BuffNames.WentToLocation))
				{
					result = LocalizeString(simDescription.IsFemale, "RecoveringFromVacation", simDescription);
				}
			}
			if (createdSim != null && createdSim.BuffManager.HasElement(BuffNames.VampireBite))
			{
				result = LocalizeString(simDescription.IsFemale, "VampireBite", simDescription);
			}
			else if (simDescription.IsVisuallyPregnant)
			{
				result = LocalizeString(simDescription.IsFemale, "IsPregnant", simDescription);
			}
			else if (createdSim != null && createdSim.BuffManager.HasElement(BuffNames.MalePregnancy))
			{
				result = LocalizeString(simDescription.IsFemale, "ConditionPreventsTravel", simDescription);
			}
			else if (createdSim != null && createdSim.IsDying())
			{
				result = LocalizeString(simDescription.IsFemale, "IsDying", simDescription);
			}
			else if (createdSim != null && createdSim.CurrentInteraction is IGoToJail)
			{
				result = LocalizeString(simDescription.IsFemale, "IsInJail", simDescription);
			}
			else if (simDescription.IsEnrolledInBoardingSchool())
			{
				result = LocalizeString(simDescription.IsFemale, "IsInBoardingSchool", simDescription);
			}
			else if (ParentsLeavingTownSituation.Adults != null && ParentsLeavingTownSituation.Adults.Contains(simDescription.SimDescriptionId))
			{
				result = LocalizeString(simDescription.IsFemale, "RecoveringFromVacation", simDescription);
			}
			else if (simDescription.mCurrentPassportChallengeID != PassportChallenges.ChallengeIds.InvalidChallenge)
			{
				result = LocalizeString(simDescription.IsFemale, "AwayInPassport", simDescription);
			}
			else if (createdSim != null && createdSim.BuffManager.HasElement(BuffNames.Ensorcelled))
			{
				result = LocalizeString(simDescription.IsFemale, "Ensorcelled", simDescription);
			}
			else if (createdSim != null && HasBlockingTransformBuff(createdSim, ignoreCertainTransformBuffs))
			{
				result = LocalizeString(simDescription.IsFemale, "NoTravelWhileTransformed");
			}
		}
		return result;
	}

	private static Lot ChooseHomeLot(Household household, List<PropertyData> properties)
	{
		WorldType currentWorldType = GameUtils.GetCurrentWorldType();
		Lot lot = null;
		WorldType worldType = currentWorldType;
		lot = ((worldType != WorldType.Future) ? LotManager.GetBaseCampLot() : LotManager.GetBaseCampLotFuture());
		if (properties.Count == 0)
		{
			return lot;
		}
		if (!UIUtils.IsOkayToStartModalDialog(ignorePause: false, ignoreTravel: true))
		{
			return lot;
		}
		List<IMapTagPickerInfo> list = new List<IMapTagPickerInfo>();
		list.Add(new MapTagPickerLotInfo(lot, MapTagType.BaseCamp));
		Dictionary<ulong, bool> dictionary = new Dictionary<ulong, bool>();
		foreach (PropertyData property in properties)
		{
			Lot lot2 = LotManager.GetLot(property.LotId);
			if (lot2 != null && !dictionary.ContainsKey(lot2.LotId))
			{
				dictionary.Add(lot2.LotId, value: true);
				list.Add(new MapTagPickerLotInfo(lot2, MapTagType.AvailableHousehold));
			}
		}
		GameUtils.EnableSceneDraw(enable: true);
		LoadingScreenController.Unload();
		while (LoadingScreenController.Instance != null)
		{
			Simulator.Sleep(0u);
		}
		IMapTagPickerInfo mapTagPickerInfo = MapTagPickerDialog.Show(list, LocalizeString("ChooseHomeLot"), LocalizeString("Accept"), forceShowCost: false);
		if (mapTagPickerInfo == null)
		{
			return lot;
		}
		return LotManager.GetLot(mapTagPickerInfo.LotId);
	}

	public static bool FinalBoardingCall(Household travelingHousehold, List<Sim> allTravelers)
	{
		return FinalBoardingCall(travelingHousehold, allTravelers, WorldName.Undefined, isWorldMove: false);
	}

	public static bool FinalBoardingCall(Household travelingHousehold, List<Sim> allTravelers, string worldNameString, bool isWorldMove)
	{
		WorldName value = WorldName.Undefined;
		if (!isWorldMove)
		{
			ParserFunctions.TryParseEnum(worldNameString, out value, WorldName.Undefined, ignoreCase: true);
		}
		return FinalBoardingCall(travelingHousehold, allTravelers, value, isWorldMove);
	}

	public static bool FinalBoardingCall(Household travelingHousehold, List<Sim> allTravelers, WorldName worldName, bool isWorldMove)
	{
		foreach (Sim allTraveler in allTravelers)
		{
			if (!string.IsNullOrEmpty(CheckForReasonsToFailTravel(allTraveler.SimDescription, worldName, isWorldMove)))
			{
				return false;
			}
			if (allTraveler.Household != travelingHousehold)
			{
				return false;
			}
		}
		return true;
	}
