// Original PC 1.67 Sims3GameplayObjects.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
		private void SwitchActiveState(StateMachineClient sender, IEvent evt)
		{
			Target.SwitchActiveState();
		}

	private sealed class Travel : Interaction<Sim, TimePortal>
	{
		private sealed class Definition : InteractionDefinition<Sim, TimePortal, Travel>, IFutureTravelInteraction
		{
			protected override bool Test(Sim actor, TimePortal target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (TravelUtil.PlayerMadeTravelRequest)
				{
					return false;
				}
				if (!sTimeTravelerHasBeenSummoned)
				{
					return false;
				}
				if (target.InUse && !target.IsActorUsingMe(actor))
				{
					return false;
				}
				if (!target.Active)
				{
					return false;
				}
				CauseEffectService instance = CauseEffectService.GetInstance();
				if (instance != null && !instance.ShouldShowTimeAlmanacButton())
				{
					return false;
				}
				if (target.IsBroken)
				{
					greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString(actor.IsFemale, sLocalizationKey + ":MustRepairTimePortal", actor));
					return false;
				}
				if (actor.BuffManager.HasElement(BuffNames.Ensorcelled))
				{
					return false;
				}
				if (GameUtils.IsFutureWorld() && actor.Household.Sims.Count != 1)
				{
					return false;
				}
				if (!TravelUtil.CanSimTriggerTravelToFutureWorld(actor, ref greyedOutTooltipCallback))
				{
					return false;
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TimePortal target, InteractionObjectPair interaction)
			{
				if (GameUtils.IsFutureWorld())
				{
					return LocalizeString("TravelHome");
				}
				return LocalizeString("Travel");
			}
		}

		[Tunable]
		[TunableComment("Range: 0.0f - 1.0f  Description:  The chance that an unstable sim will get the starting buff for unstable if they pass through the portal and aren't already under the buff.")]
		private static float kUnstableTraitChance = 0.2f;

		public static readonly InteractionDefinition Singleton = new Definition();

		protected override bool Run()
		{
			try
			{
				if (Responder.Instance.TutorialModel.IsTutorialRunning())
				{
					if (!Target.CancelTutorial())
					{
						return false;
					}
					Responder.Instance.TutorialModel.ForceExitTutorial();
				}
				if (!UIUtils.IsOkayToStartModalDialog())
				{
					return false;
				}
				if (Target.IsBroken)
				{
					return false;
				}
				TravelUtil.PlayerMadeTravelRequest = true;
				OpportunityNames opportunityNames = CheckOpportunities();
				string promptText;
				if (GameUtils.IsFutureWorld())
				{
					promptText = LocalizeString("ConfirmReturn");
				}
				else
				{
					promptText = ((opportunityNames == OpportunityNames.Undefined) ? LocalizeString("ConfirmTravel") : LocalizeString("ConfirmWarningTravel"));
				}
				if (!TwoButtonDialog.Show(promptText, Localization.LocalizeString("Ui/Caption/Global:Accept"), Localization.LocalizeString("Ui/Caption/Global:Cancel")))
				{
					TravelUtil.PlayerMadeTravelRequest = false;
					return false;
				}
				Gameflow.Singleton.DisableSave(this, "Ui/Caption/HUD/DisasterSaveError:Traveling");
				CancellableByPlayer = false;
				if (opportunityNames != OpportunityNames.Undefined && Actor.OpportunityManager != null)
				{
					Actor.OpportunityManager.CancelOpportunity(opportunityNames);
				}
				if (Actor.OpportunityManager != null)
				{
					if (Actor.OpportunityManager.HasOpportunity(OpportunityNames.EP11_HelpingTheTimeTraveler01))
					{
						Actor.OpportunityManager.CancelOpportunity(OpportunityNames.EP11_HelpingTheTimeTraveler01);
					}
					if (Actor.OpportunityManager.HasOpportunity(OpportunityNames.EP11_HelpingTheTimeTraveler02))
					{
						Actor.OpportunityManager.CancelOpportunity(OpportunityNames.EP11_HelpingTheTimeTraveler02);
					}
					if (GameUtils.IsFutureWorld() && Actor.OpportunityManager.HasOpportunity(OpportunityNames.EP11_RecalibrateDefenseGrid))
					{
						Actor.OpportunityManager.CancelOpportunity(OpportunityNames.EP11_RecalibrateDefenseGrid);
					}
				}
				if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, kRoutingSlots, out int _))
				{
					TravelUtil.PlayerMadeTravelRequest = false;
					return false;
				}
				if (Actor.HasExitReason(ExitReason.Default))
				{
					TravelUtil.PlayerMadeTravelRequest = false;
					return false;
				}
				if (GameUtils.IsFutureWorld())
				{
					EventTracker.SendEvent(EventTypeId.kTravelToPresent, Actor);
				}
				else
				{
					EventTracker.SendEvent(EventTypeId.kTravelToFuture, Actor);
				}
				Skill skill = Actor.SkillManager.AddElement(SkillNames.Future);
				StandardEntry();
				BeginCommodityUpdates();
				BuffTransformation transformBuff = Actor.BuffManager.TransformBuff;
				if (transformBuff != null)
				{
					Actor.BuffManager.RemoveElement(transformBuff.Guid);
				}
				EnterStateMachine("timeportal", "Enter", "x", "portal");
				AddPersistentScriptEventHandler(201u, CameraShakeEvent);
				if (skill.SkillLevel >= 3)
				{
					AnimateSim("Jump In");
				}
				else
				{
					AnimateSim("Apprehensive");
				}
				bool flag = true;
				if (!GameUtils.IsFutureWorld())
				{
					flag = Target.TravelToFuture(Actor, this, skill, new List<Sim>(), new List<ulong>());
					if (!flag)
					{
						Simulator.Sleep(60u);
						AnimateSim("Spit Out");
						Target.SwitchActiveState();
					}
				}
				if (flag && Actor.TraitManager.HasElement(TraitNames.Unstable) && !Actor.BuffManager.HasElement(BuffNames.FeelingOutOfSorts) && !Actor.BuffManager.HasElement(BuffNames.ImpendingEpisode) && !Actor.BuffManager.HasElement(BuffNames.Delusional) && RandomUtil.RandomChance01(kUnstableTraitChance))
				{
					Actor.BuffManager.AddElement(BuffNames.FeelingOutOfSorts, Origin.FromUnstableTrait);
				}
				AnimateSim("Exit");
				EndCommodityUpdates(flag);
				StandardExit();
				if (GameUtils.IsFutureWorld())
				{
					EventTracker.SendEvent(EventTypeId.kTravelToPresent, Actor);
					Target.StopActiveFX();
					GameStates.ReturnFromVacationWorld();
				}
				return true;
			}
			finally
			{
				TravelUtil.PlayerMadeTravelRequest = false;
				Gameflow.Singleton.EnableSave(this);
			}
		}

		private void CameraShakeEvent(StateMachineClient smc, IEvent evt)
		{
			Target.ShakeCamera();
		}

		private OpportunityNames CheckOpportunities()
		{
			for (int i = 0; i < kBannedOpportunities.Length; i++)
			{
				if (Actor.OpportunityManager != null && Actor.OpportunityManager.HasOpportunity(kBannedOpportunities[i]))
				{
					return kBannedOpportunities[i];
				}
			}
			return OpportunityNames.Undefined;
		}
	}

	private sealed class TravelWith : Interaction<Sim, TimePortal>
	{
		private sealed class Definition : InteractionDefinition<Sim, TimePortal, TravelWith>, IFutureTravelInteraction
		{
			protected override bool Test(Sim actor, TimePortal target, bool isAutonomous, ref GreyedOutTooltipCallback greyedOutTooltipCallback)
			{
				if (TravelUtil.PlayerMadeTravelRequest)
				{
					return false;
				}
				if (!sTimeTravelerHasBeenSummoned)
				{
					return false;
				}
				if (target.InUse && !target.IsActorUsingMe(actor))
				{
					return false;
				}
				if (!target.Active)
				{
					return false;
				}
				CauseEffectService instance = CauseEffectService.GetInstance();
				if (instance != null && !instance.ShouldShowTimeAlmanacButton())
				{
					return false;
				}
				if (target.IsBroken)
				{
					greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString(actor.IsFemale, sLocalizationKey + ":MustRepairTimePortal", actor));
					return false;
				}
				if (actor.BuffManager.HasElement(BuffNames.Ensorcelled))
				{
					return false;
				}
				if (actor.Household.Sims.Count <= 1)
				{
					return false;
				}
				if (!TravelUtil.CanSimTriggerTravelToFutureWorld(actor, ref greyedOutTooltipCallback))
				{
					return false;
				}
				if (GameUtils.IsFutureWorld())
				{
					foreach (Sim sim in actor.Household.Sims)
					{
						if (sim != actor && !TravelUtil.CanSimTriggerTravelToFutureWorld(sim, ref greyedOutTooltipCallback))
						{
							greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString(actor.IsFemale, sLocalizationKey + ":UnfitForTravel", actor));
							return false;
						}
					}
				}
				else
				{
					List<Sim> list = new List<Sim>();
					foreach (Sim sim2 in actor.Household.Sims)
					{
						if (sim2 != actor && TravelUtil.CanSimTriggerTravelToFutureWorld(sim2, ref greyedOutTooltipCallback))
						{
							list.Add(sim2);
						}
					}
					if (list.Count == 0)
					{
						greyedOutTooltipCallback = InteractionInstance.CreateTooltipCallback(Localization.LocalizeString(actor.IsFemale, sLocalizationKey + ":UnfitForTravel", actor));
						return false;
					}
				}
				return true;
			}

			protected override string GetInteractionName(Sim actor, TimePortal target, InteractionObjectPair interaction)
			{
				if (GameUtils.IsFutureWorld())
				{
					return LocalizeString("TravelHome");
				}
				return LocalizeString("TravelWith") + Localization.Ellipsis;
			}

			public override void PopulatePieMenuPicker(ref InteractionInstanceParameters parameters, out List<ObjectPicker.TabInfo> listObjs, out List<ObjectPicker.HeaderInfo> headers, out int NumSelectableRows)
			{
				if (GameUtils.IsFutureWorld())
				{
					base.PopulatePieMenuPicker(ref parameters, out listObjs, out headers, out NumSelectableRows);
					return;
				}
				listObjs = null;
				headers = null;
				Sim sim = parameters.Actor as Sim;
				List<Sim> list = new List<Sim>();
				foreach (Sim sim2 in sim.Household.Sims)
				{
					GreyedOutTooltipCallback callback = InteractionInstance.CreateTooltipCallback(string.Empty);
					if (TravelUtil.CanSimTriggerTravelToFutureWorld(sim2, ref callback))
					{
						list.Add(sim2);
					}
				}
				NumSelectableRows = list.Count - 1;
				if (NumSelectableRows > 0)
				{
					PopulateSimPicker(ref parameters, out listObjs, out headers, list, includeActor: false);
				}
			}
		}

		private List<ulong> mFollowerGroupIDs = new List<ulong>(10);

		[Persistable(false)]
		private List<Sim> mFollowerGroup = new List<Sim>(10);

		[TunableComment("Range: Floats.  Description: Skill points gained for Followers.")]
		[Tunable]
		private static float kFollowerFutureSkillPointGain = 20f;

		public static readonly InteractionDefinition Singleton = new Definition();

		public bool AddFollower(Sim sim)
		{
			if (sim == null)
			{
				return false;
			}
			mFollowerGroupIDs.Add(sim.SimDescription.SimDescriptionId);
			mFollowerGroup.Add(sim);
			return true;
		}

		protected override bool Run()
		{
			try
			{
				if (Responder.Instance.TutorialModel.IsTutorialRunning())
				{
					if (!Target.CancelTutorial())
					{
						return false;
					}
					Responder.Instance.TutorialModel.ForceExitTutorial();
				}
				List<Sim> lazyList = null;
				if (GameUtils.IsFutureWorld())
				{
					foreach (Sim sim in Actor.Household.Sims)
					{
						if (sim != Actor)
						{
							GreyedOutTooltipCallback callback = InteractionInstance.CreateTooltipCallback(string.Empty);
							if (TravelUtil.CanSimTriggerTravelToFutureWorld(sim, ref callback))
							{
								Lazy.Add(ref lazyList, sim);
							}
						}
					}
				}
				else
				{
					lazyList = GetSelectedObjectsAsSims();
				}
				if (lazyList == null)
				{
					return false;
				}
				if (!UIUtils.IsOkayToStartModalDialog())
				{
					return false;
				}
				if (Actor.OpportunityManager != null && Actor.OpportunityManager.HasOpportunity(OpportunityNames.EP11_HelpingTheTimeTraveler01))
				{
					return false;
				}
				TravelUtil.PlayerMadeTravelRequest = true;
				Dictionary<Sim, OpportunityNames> dictionary = CheckOpportunities(lazyList);
				string promptText;
				if (GameUtils.IsFutureWorld())
				{
					promptText = LocalizeString("ConfirmReturnWith");
				}
				else
				{
					promptText = ((dictionary.Count <= 0) ? LocalizeString("ConfirmTravelWith") : (LocalizeString("ConfirmTravelWith") + LocalizeString("ConfirmWarningTravelWith")));
				}
				if (!TwoButtonDialog.Show(promptText, Localization.LocalizeString("Ui/Caption/Global:Accept"), Localization.LocalizeString("Ui/Caption/Global:Cancel")))
				{
					TravelUtil.PlayerMadeTravelRequest = false;
					return false;
				}
				CancellableByPlayer = false;
				Gameflow.Singleton.DisableSave(this, "Ui/Caption/HUD/DisasterSaveError:Traveling");
				if (dictionary.Count > 0)
				{
					foreach (Sim key in dictionary.Keys)
					{
						if (key.OpportunityManager != null)
						{
							key.OpportunityManager.CancelOpportunity(dictionary[key]);
						}
					}
				}
				if (GameUtils.IsFutureWorld() && Actor.OpportunityManager != null && Actor.OpportunityManager.HasOpportunity(OpportunityNames.EP11_RecalibrateDefenseGrid))
				{
					Actor.OpportunityManager.CancelOpportunity(OpportunityNames.EP11_RecalibrateDefenseGrid);
				}
				foreach (Sim item in lazyList)
				{
					AddFollower(item);
				}
				foreach (Sim item2 in lazyList)
				{
					if (!item2.SimDescription.Baby)
					{
						GatherAround gatherAround = GatherAround.Singleton.CreateInstance(Target, item2, GetPriority(), Autonomous, CancellableByPlayer) as GatherAround;
						gatherAround.mMasterInteraction = this;
						item2.InteractionQueue.AddNext(gatherAround);
					}
				}
				if (!Actor.RouteToSlotListAndCheckInUse((IGameObject)Target, kRoutingSlots, out int _))
				{
					TravelUtil.PlayerMadeTravelRequest = false;
					CancelFollowers(lazyList);
					return false;
				}
				if (Actor.HasExitReason(ExitReason.Default))
				{
					TravelUtil.PlayerMadeTravelRequest = false;
					CancelFollowers(lazyList);
					return false;
				}
				Skill skill = Actor.SkillManager.AddElement(SkillNames.Future);
				foreach (Sim item3 in lazyList)
				{
					item3.SkillManager.AddElement(SkillNames.Future);
				}
				BuffTransformation transformBuff = Actor.BuffManager.TransformBuff;
				if (transformBuff != null)
				{
					Actor.BuffManager.RemoveElement(transformBuff.Guid);
				}
				foreach (Sim item4 in lazyList)
				{
					transformBuff = item4.BuffManager.TransformBuff;
					if (transformBuff != null)
					{
						item4.BuffManager.RemoveElement(transformBuff.Guid);
					}
				}
				if (GameUtils.IsFutureWorld())
				{
					SendEventForActorAndFollowers(Actor, lazyList, EventTypeId.kTravelToPresent);
				}
				else
				{
					SendEventForActorAndFollowers(Actor, lazyList, EventTypeId.kTravelToFuture);
				}
				StandardEntry();
				BeginCommodityUpdates();
				EnterStateMachine("timeportal", "Enter", "x", "portal");
				AddPersistentScriptEventHandler(201u, CameraShakeEvent);
				AnimateSim("Call Over");
				if (skill.SkillLevel >= 3)
				{
					AnimateSim("Jump In");
				}
				else
				{
					AnimateSim("Apprehensive");
				}
				bool flag = true;
				if (!GameUtils.IsFutureWorld())
				{
					flag = Target.TravelToFuture(Actor, this, skill, new List<Sim>(mFollowerGroup), new List<ulong>(mFollowerGroupIDs));
				}
				if (flag)
				{
					foreach (Sim item5 in lazyList)
					{
						item5.SkillManager.GetElement(SkillNames.Future)?.AddPoints(kFollowerFutureSkillPointGain, isChunkGain: true, showSkillMeter: false);
					}
				}
				else
				{
					CancelFollowers(lazyList);
					Simulator.Sleep(60u);
					AnimateSim("Spit Out");
					Target.SwitchActiveState();
				}
				AnimateSim("Exit");
				EndCommodityUpdates(flag);
				StandardExit();
				if (GameUtils.IsFutureWorld())
				{
					Target.StopActiveFX();
					GameStates.ReturnFromVacationWorld();
					SendEventForActorAndFollowers(Actor, lazyList, EventTypeId.kTravelToPresent);
				}
				return true;
			}
			finally
			{
				TravelUtil.PlayerMadeTravelRequest = false;
				Gameflow.Singleton.EnableSave(this);
			}
		}

		private void CancelFollowers(List<Sim> followers)
		{
			foreach (Sim follower in followers)
			{
				follower.InteractionQueue.CancelAllInteractionsByType(GatherAround.Singleton);
			}
		}

		private void CameraShakeEvent(StateMachineClient smc, IEvent evt)
		{
			Target.ShakeCamera();
		}

		private Dictionary<Sim, OpportunityNames> CheckOpportunities(List<Sim> sims)
		{
			Dictionary<Sim, OpportunityNames> dictionary = new Dictionary<Sim, OpportunityNames>();
			sims.Add(Actor);
			foreach (Sim sim in sims)
			{
				for (int i = 0; i < kBannedOpportunities.Length; i++)
				{
					if (sim.OpportunityManager != null && sim.OpportunityManager.HasOpportunity(kBannedOpportunities[i]))
					{
						dictionary.Add(sim, kBannedOpportunities[i]);
					}
				}
			}
			sims.Remove(Actor);
			return dictionary;
		}

		private void SendEventForActorAndFollowers(Sim actor, List<Sim> followers, EventTypeId eventType)
		{
			EventTracker.SendEvent(eventType, actor);
			foreach (Sim follower in followers)
			{
				EventTracker.SendEvent(eventType, follower);
			}
		}
	}

		private List<ulong> mFollowerGroupIDs = new List<ulong>(10);

	private static Slot[] kRoutingSlots = new Slot[4]
	{
		Slot.RoutingSlot_0,
		Slot.RoutingSlot_1,
		Slot.RoutingSlot_2,
		Slot.RoutingSlot_3
	};

	[PersistableStatic(true)]
	private static bool sTimeTravelerHasBeenSummoned = false;

	public bool PushArriveInteraction(List<SimDescription> travelers)
	{
		List<Sim> list = new List<Sim>();
		foreach (SimDescription traveler in travelers)
		{
			if (traveler.CreatedSim != null)
			{
				list.Add(traveler.CreatedSim);
			}
		}
		return PushArriveInteraction(list);
	}

	public bool PushArriveInteraction(List<Sim> travelers)
	{
		if (travelers == null)
		{
			return false;
		}
		Sim sim = null;
		foreach (Sim traveler in travelers)
		{
			if (traveler.SimDescription.YoungAdultOrAbove)
			{
				sim = traveler;
				break;
			}
		}
		if (!(Arrive.Singleton.CreateInstance(this, sim, new InteractionPriority(InteractionPriorityLevel.High), isAutonomous: false, cancellableByPlayer: false) is Arrive arrive))
		{
			foreach (Sim traveler2 in travelers)
			{
				traveler2.SetOpacity(1f, 0f);
			}
			return false;
		}
		arrive.SelectedObjects = new List<object>();
		foreach (Sim traveler3 in travelers)
		{
			if (traveler3 != sim)
			{
				arrive.SelectedObjects.Add(traveler3);
			}
		}
		if (sim != null && !sim.InteractionQueue.AddNext(arrive))
		{
			foreach (Sim traveler4 in travelers)
			{
				traveler4.SetOpacity(1f, 0f);
			}
			return false;
		}
		return true;
	}

	private void SwitchActiveState()
	{
		if (State == PortalState.Inactive)
		{
			if (CauseEffectService.GetInstance().GetCurrentCauseEffectWorldState() == CauseEffectWorldState.kUtopiaState)
			{
				State = PortalState.Rainbow;
			}
			else if (CauseEffectService.GetInstance().GetCurrentCauseEffectWorldState() == CauseEffectWorldState.kDystopiaState)
			{
				State = PortalState.Distopia;
			}
			else
			{
				State = PortalState.Active;
			}
		}
		else
		{
			State = PortalState.Inactive;
		}
	}

	private bool TravelToFuture(Sim Actor, InteractionInstance ii, Skill FutureSkill, List<Sim> Followers, List<ulong> SimGuids)
	{
		WorldName worldName = WorldName.FutureWorld;
		if (TravelUtil.FinalBoardingCall(Actor.Household, Followers, worldName, isWorldMove: false))
		{
			if (!SimGuids.Contains(Actor.SimDescription.SimDescriptionId))
			{
				SimGuids.Add(Actor.SimDescription.SimDescriptionId);
			}
			ForeignVisitorsSituation.ForceKillForeignVisitorsSituation();
			HolographicProjectionSituation.ForceKillHolographicVisitorsSituation();
			Camera.SetView(CameraView.MapView, alsoFollowSelectedSim: false, useLerp: true);
			CleanUpReservedVehicles(Actor, Followers);
			StopActiveFX();
			GameStates.TravelToVacationWorld(worldName, SimGuids, 0, 0);
			CauseEffectService.GetInstance().SetDepartureTimePortal(ObjectId);
			return true;
		}
		Actor.ShowTNSIfSelectable(Localization.LocalizeString(Actor.IsFemale, "Gameplay/Visa/TravelUtil:CantTravelFutureTNS"), StyledNotification.NotificationStyle.kSystemMessage, ObjectGuid.InvalidObjectGuid);
		return false;
	}

	private void CleanUpReservedVehicles(Sim sim, List<Sim> followers)
	{
		CleanUpReservedVehicle(sim);
		foreach (Sim follower in followers)
		{
			CleanUpReservedVehicle(follower);
		}
	}

	private void CleanUpReservedVehicle(Sim sim)
	{
		Vehicle reservedVehicle = sim.GetReservedVehicle();
		if (reservedVehicle != null && sim.Inventory != null && !sim.Inventory.Contains(reservedVehicle))
		{
			sim.Inventory.TryToAdd(reservedVehicle);
			reservedVehicle.RemoveFromWorld();
			sim.SetReservedVehicle(null);
		}
	}
