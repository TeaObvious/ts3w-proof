// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	public override void Startup()
	{
		try
		{
			base.Startup();
			Sims3.Gameplay.UI.Responder.GameStartup();
			mEnteredFromTravelling = GameStates.IsTravelling;
			if (World.IsEditInGameFromWBMode())
			{
				Sims3.Gameplay.Autonomy.Autonomy.DisableMoodContributors = true;
			}
			mStateMachine = StateMachine.Create(1, "InWorld");
			mSubStates[0] = new LiveModeState(GameStates.IsMovingWorlds);
			mSubStates[1] = new BuildModeState();
			mSubStates[2] = new BuyModeState();
			mSubStates[12] = new ShoppingModeState();
			mSubStates[3] = new CASFullModeState();
			mSubStates[4] = new CASDresserModeState();
			mSubStates[5] = new CASMirrorModeState();
			mSubStates[6] = new CASTattooModeState();
			mSubStates[7] = new CASStylistModeState();
			mSubStates[8] = new CASTackModeState();
			mSubStates[9] = new CASCollarModeState();
			mSubStates[10] = new CASSurgeryFaceModeState();
			mSubStates[11] = new CASSurgeryBodyModeState();
			mSubStates[15] = new PlayFlowState();
			mSubStates[14] = new EditTownState();
			mSubStates[16] = new BlueprintModeState();
			mSubStates[17] = new CASMermaidModeState();
			mSubStates[18] = new CABModeState();
			mSubStates[19] = new CABModeEditState();
			InWorldSubState[] array = mSubStates;
			foreach (InWorldSubState state in array)
			{
				mStateMachine.AddState(state);
			}
			StateMachineManager.AddMachine(mStateMachine);
			List<SimDescription> list = null;
			if (GameStates.IsTravelling || GameStates.IsEditingOtherTown)
			{
				try
				{
					CharacterImportOnGameLoad.RemapSimDescriptionIds();
				}
				catch (Exception)
				{
				}
			}
			if (GameStates.IsTravelling)
			{
				GameStates.ImportTravellingHousehold();
			}
			else if (!GameStates.IsEditingOtherTown && GameUtils.GetCurrentWorldType() == WorldType.Base && GameStates.HasTravelData)
			{
				GameStates.ClearTravelStatics();
			}
			mPostWorldInitializers = new Initializers("PostWorldInitializers", this);
			mPostWorldInitializers.Initialize();
			if (GameStates.IsTravelling)
			{
				list = GameStates.PostTravelingFixUp();
			}
			if (GameStates.IsEditingOtherTown)
			{
				GameStates.PostLoadEditTownFixup();
			}
			GameStates.NullEditTownDataDataIfEditingOriginalStartingWorld();
			try
			{
				if (GameUtils.IsAnyTravelBasedWorld())
				{
					if (list != null && AgingManager.NumberAgingYearsElapsed != -1f)
					{
						float yearsGone = GameStates.NumberAgingYearsElapsed - AgingManager.NumberAgingYearsElapsed;
						StoryProgressionService.FixUpAfterTravel(yearsGone, list);
					}
					AgingManager.NumberAgingYearsElapsed = GameStates.NumberAgingYearsElapsed;
				}
			}
			catch (Exception)
			{
			}
			Sims3.SimIFace.Gameflow.GameSpeed value = Sims3.SimIFace.Gameflow.GameSpeed.Pause;
			bool flag = false;
			if (GameStates.StartupState == SubState.LiveMode)
			{
				flag = !GameStates.IsEditingOtherTown && (GameStates.ForceStateChange || !PlayFlowModel.Singleton.GameEntryLive || PlumbBob.SelectedActor != null || GameStates.IsTravelling);
				if (flag)
				{
					value = (Gameflow.sGameLoadedFromWorldFile ? Sims3.SimIFace.Gameflow.GameSpeed.Normal : Gameflow.sPersistedGameSpeed);
				}
			}
			Gameflow.sGameLoadedFromWorldFile = false;
			string text = CommandLine.FindSwitch("speed");
			if (text != null)
			{
				if (int.TryParse(text, out var result))
				{
					value = (Sims3.SimIFace.Gameflow.GameSpeed)result;
				}
				else
				{
					ParserFunctions.TryParseEnum(text, out value, Sims3.SimIFace.Gameflow.GameSpeed.Normal);
				}
			}
			Gameflow.SetGameSpeed(value, Gameflow.SetGameSpeedContext.GameStates);
			NotificationManager.Load();
			MainMenu.TriggerPendingFsiWorldNotifications();
			if (SocialFeatures.Accounts.IsLoggedIn())
			{
				Notify(0u, 0u, 0L);
			}
			switch (GameStates.StartupState)
			{
			case SubState.LiveMode:
				if (((GameUtils.IsOnVacation() || GameUtils.IsFutureWorld()) && !EditTownModel.IsAnyLotBaseCampStatic()) || !flag)
				{
					GameUtils.EnableSceneDraw(enable: true);
					LoadingScreenController.Unload();
					GotoEditTown();
				}
				else if (flag)
				{
					GotoLiveMode();
				}
				else
				{
					GameUtils.EnableSceneDraw(enable: true);
					LoadingScreenController.Unload();
					GotoPlayFlow();
				}
				break;
			case SubState.EditTown:
				GameUtils.EnableSceneDraw(enable: true);
				LoadingScreenController.Unload();
				GotoEditTown();
				break;
			case SubState.PlayFlow:
				if (!World.IsEditInGameFromWBMode())
				{
					if (PlayFlowModel.PlayFlowEnabled && PlayFlowModel.Singleton.GameEntryLive)
					{
						GotoPlayFlow();
						break;
					}
					GameUtils.EnableSceneDraw(enable: true);
					LoadingScreenController.Unload();
					GotoLiveMode();
				}
				else
				{
					GameUtils.EnableSceneDraw(enable: true);
					LoadingScreenController.Unload();
					GotoLiveMode();
				}
				break;
			}
			if (Gameflow.sShowObjectReplacedWarning)
			{
				SimpleMessageDialog.Show(LocalizeString("Ui/Warning/LoadGame:Warning"), LocalizeString("Ui/Warning/LoadGame:ReplacedObjects"), ModalDialog.PauseMode.PauseSimulator);
				Gameflow.sShowObjectReplacedWarning = false;
			}
		}
		catch (Exception)
		{
		}
	}
