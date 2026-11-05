// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	public override void Startup()
	{
		bool flag = false;
		bool flag2 = false;
		UIManager.BlackBackground(set: false);
		base.Startup();
		ShowUI(show: true);
		if (CameraController.IsMapViewModeEnabled() && !TutorialModel.Singleton.IsTutorialRunning())
		{
			CameraController.EnableCameraMapView(enabled: true);
		}
		CASExitLoadScreen.Close();
		if (GameStates.IsTravelling)
		{
			flag = true;
			if (GameUtils.GetCurrentWorldType() == WorldType.Future)
			{
				if (CauseEffectService.IsDystopiaWorld && !CauseEffectService.IsDystopiaWorldExperienced)
				{
					flag2 = true;
				}
				else if (CauseEffectService.IsUtopiaWorld && !CauseEffectService.IsUtopiaWorldExperienced)
				{
					flag2 = true;
				}
			}
			GameStates.OnArrivalAtVacationWorld();
		}
		if (GameStates.sNextSimToSelect != null)
		{
			PlumbBob.ForceSelectActor(GameStates.sNextSimToSelect);
			GameStates.sNextSimToSelect = null;
		}
		bool flag3 = false;
		if (LoadingScreenController.Instance != null)
		{
			if (GameStates.IsPerfTestRunning || CommandLine.FindSwitch("campos") != null || CommandLine.FindSwitch("camtarget") != null)
			{
				GameUtils.EnableSceneDraw(enable: true);
				LoadingScreenController.Unload();
			}
			else
			{
				bool flag4 = false;
				if (flag || flag4)
				{
					uint customFlyThroughIndex = CameraController.GetCustomFlyThroughIndex();
					if ((GameStates.IsNewGame || flag2) && customFlyThroughIndex != 0)
					{
						WaitForLotLoad(activeSimLot: true, cleanup: false);
						ShowUI(show: false);
						ShowMaptags(show: false);
						AudioManager.MusicMode = MusicMode.Flyby;
						CameraController.OnCameraFlyThroughFinishedCallback = (CameraController.CameraFlyThroughFinishedHandler)Delegate.Combine(CameraController.OnCameraFlyThroughFinishedCallback, new CameraController.CameraFlyThroughFinishedHandler(OnCameraFlyThroughFinishedEvent));
						CameraController.StartFlyThrough(customFlyThroughIndex, startFromCameraPosition: false);
						flag3 = true;
						GameUtils.EnableSceneDraw(enable: true);
						LoadingScreenController.Unload();
						while (LoadingScreenController.Instance != null)
						{
							Sleep(0.0);
						}
					}
					else
					{
						WaitForLotLoad(activeSimLot: true, cleanup: true);
						Camera.SetView(CameraView.SimView, alsoFollowSelectedSim: true, useLerp: true);
					}
				}
				else
				{
					Camera.RestorePersistedState();
					WaitForLotLoad(activeSimLot: false, cleanup: true);
					Camera.SetView(CameraView.SimView, alsoFollowSelectedSim: true, useLerp: true);
				}
			}
		}
		else if (flag)
		{
			bool activeSimLot = !GameUtils.IsUniversityWorld();
			WaitForLotLoad(activeSimLot, cleanup: true);
			Camera.SetView(CameraView.SimView, alsoFollowSelectedSim: true, useLerp: true);
		}
		UserToolUtils.UserToolGeneric(200u, new ResourceKey(0uL, 0u, 0u));
		if (!flag3)
		{
			GameUtils.Unpause();
		}
		if (AudioManager.MusicMode != MusicMode.Flyby)
		{
			AudioManager.MusicMode = MusicMode.None;
		}
		InWorldSubState.EdgeScrollCheck();
		InWorldSubState.OpportunityDialogCheck();
		DreamsAndPromisesManager.ValidateLifetimeWishes();
		LifeEventManager.ValidatePendingLifeEvents();
		if (GameUtils.IsInstalled(ProductVersion.EP9))
		{
			Tutorialette.TriggerLesson(Lessons.Degrees, Sim.ActiveActor);
		}
		if (GameUtils.GetCurrentWorldType() == WorldType.Base)
		{
			Tutorialette.TriggerLesson(Lessons.Traveling, Sim.ActiveActor);
		}
		if (Sims3.Gameplay.ActiveCareer.ActiveCareer.ActiveCareerShowGeneralLesson)
		{
			Tutorialette.TriggerLesson(Lessons.Professions, Sim.ActiveActor);
		}
		Tutorialette.TriggerLesson(Lessons.AgingStageLengths, Sim.ActiveActor);
		Sim selectedActor = PlumbBob.SelectedActor;
		if (selectedActor != null)
		{
			if (selectedActor.LotHome.HasVirtualResidentialSlots)
			{
				Tutorialette.TriggerLesson(Lessons.ApartmentLiving, selectedActor);
			}
			Household household = selectedActor.Household;
			foreach (SimDescription simDescription in household.SimDescriptions)
			{
				if (simDescription.Child || simDescription.Teen)
				{
					Tutorialette.TriggerLesson(Lessons.Pranks, null);
					break;
				}
			}
			if (selectedActor.BuffManager.GetElement(BuffNames.MummysCurse) is BuffMummysCurse.BuffInstanceMummysCurse buffInstanceMummysCurse)
			{
				BuffMummysCurse.SetCursedScreenFX(buffInstanceMummysCurse.CurseStage, playAudio: false);
			}
			if (selectedActor.CareerManager != null)
			{
				selectedActor.CareerManager.UpdateCareerUI();
			}
			Sims3.Gameplay.UI.Responder.Instance.TrySpawnWeatherStone();
		}
		GameStates.SetupPostMoveData();
		GameStates.ClearMovingData();
		MovingWorldsWizardCheck();
		PlaceLotWizardCheck();
		foreach (Sim actor in LotManager.Actors)
		{
			actor.OccultManager?.RestoreOccultIfNecessary();
		}
		if (!mNeedToForceSave)
		{
			return;
		}
		mNeedToForceSave = false;
		string saveName = Sims3.Gameplay.UI.Responder.Instance.OptionsModel.SaveName;
		ILocalizationModel localizationModel = Sims3.Gameplay.UI.Responder.Instance.LocalizationModel;
		do
		{
			saveName = StringInputDialog.Show(localizationModel.LocalizeString("Gameplay/Passport/Passport:ForceSaveTitle"), localizationModel.LocalizeString("Ui/Caption/Moving:ForceGameSaveText"), string.Empty, StringInputDialog.Validation.ForceSaveGame);
			if (SaveFileNameExists(saveName))
			{
				string promptText = localizationModel.LocalizeString("Ui/Caption/Options:SaveConfirm");
				if (!AcceptCancelDialog.Show(promptText, forceShowDialog: true))
				{
					saveName = null;
				}
				else
				{
					GameUtils.DeleteSaveFile(saveName);
				}
			}
		}
		while (saveName == null || saveName == string.Empty);
		SetForcedFilenameForSave_OnMovingWorlds(saveName);
		SaveWhenModalExits();
	}
