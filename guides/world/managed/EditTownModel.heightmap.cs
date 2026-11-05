/* Analyst: original PC 1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.EditTownModel.
   Complete original heightmap load/release owners. Initialize requests delayed load; thumbnail-task tail loads with keep=true. Guarded teardown rebuilds routing then force-unloads. These methods concern Edit Town editing lifecycle.
   Original selected metadata tokens: 0x0601039b, 0x0601039c, 0x0601039e, 0x060103aa, 0x060103ac, 0x0400b4e6, 0x0400b4e7.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using System;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Autonomy;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Controllers;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;
using Sims3.UI.GameEntry;

public void Initialize()
{
	if (GameStates.PrevInWorldStateId != InWorldState.SubState.CASFullMode && GameStates.PrevInWorldStateId != InWorldState.SubState.BuildMode && GameStates.PrevInWorldStateId != InWorldState.SubState.BuyMode)
	{
		sItemAddedToUserFlag = false;
	}
	GameEntryMaptagManager.Instance.MaptagServer = this;
	sLoadHeightMapData = true;
	UpdateDirtyLotThumbnails(showScreenCap: true);
	Camera.SetView(CameraView.MapView, alsoFollowSelectedSim: false, useLerp: true);
	CameraController.SetGameEntryMode(enable: true);
	Bin.ContentsChanged += OnGameBinChanged;
	World.OnAddLotPostLoadCallback = (EventHandler)Delegate.Combine(World.OnAddLotPostLoadCallback, new EventHandler(OnLotAddedToWorld));
	BinModel.Singleton.PopulateExportBin();
	BinModel.Singleton.FreeRealEstate = World.IsEditInGameFromWBMode();
}
public void Shutdown()
{
	Bin.ContentsChanged -= OnGameBinChanged;
	World.OnAddLotPostLoadCallback = (EventHandler)Delegate.Remove(World.OnAddLotPostLoadCallback, new EventHandler(OnLotAddedToWorld));
	UpdateRoutingDataAndUnloadHeightMap();
	GameEntryMaptagManager.Instance.MaptagServer = null;
	GameEntryMaptagManager.Instance.ShowMaptags(MaptagTypes.None);
	GameEntryMaptagManager.Destroy();
	mGameBin = null;
	mInWorldLotBin = null;
	mInWorldHouseholdBin = null;
	BinModel.Singleton.ClearExportBin();
	DirtyWorldBins();
	UpdateView();
}
public bool ExitEditTown(bool cancelled)
{
	if (!GameStates.IsGameShuttingDown && !GameStates.IsCurrentlySwitchingSubStates && !GameStates.mQuitting)
	{
		if (!IsCurrentWorldActive() && !World.IsEditInGameFromWBMode())
		{
			if (!EditTownController.PromptForNonEmptyClipboard())
			{
				return false;
			}
			GameStates.EditWorld(WorldName.Undefined, returnToLiveMode: true);
		}
		else
		{
			GameStates.TransitionToReturnState();
			if (PlaceLotsWizardFlow)
			{
				Camera.OnExitBuildBuy();
				LotManager.UnlockActiveLot();
			}
			if (Household.ActiveHousehold != null && Household.ActiveHousehold.LotHome.CheckIfLotNeedsBabysitter())
			{
				StyledNotification.Format format = new StyledNotification.Format(Localization.LocalizeString("Gameplay/Services/Requested:Babysitter"), StyledNotification.NotificationStyle.kSimTalking);
				IPhoneFuture phoneFuture = null;
				Sim sim = Household.ActiveHousehold.Sims[0];
				if (sim != null)
				{
					phoneFuture = sim.Inventory.Find<IPhoneFuture>();
				}
				if (GameUtils.IsInstalled(ProductVersion.EP11) && phoneFuture != null)
				{
					StyledNotification.Show(format, "w_future_phone", null, ProductVersion.EP11, ProductVersion.EP11);
				}
				else if (GameUtils.IsInstalled(ProductVersion.EP9))
				{
					StyledNotification.Show(format, "w_smart_phone", null, ProductVersion.EP9, ProductVersion.EP9);
				}
				else
				{
					StyledNotification.Show(format, "glb_tns_phone_r2");
				}
			}
			MetaAutonomyManager.CalculateTotalDesiredNumSims();
		}
		LeavingUpdate();
	}
	UpdateRoutingDataAndUnloadHeightMap();
	LotManager.ForceReplanOfAllSimRoutes();
	return GameStates.NextInWorldStateId == GameStates.ReturnState;
}
private static void UpdateDirtyLotThumbnailsTask(object showScreenCapParam)
{
	bool flag = (bool)showScreenCapParam;
	if (flag)
	{
		bool synchronous = Simulator.CheckYieldingContext(shouldThrowException: false);
		ScreenCaptureOverlay.Display(show: true, synchronous);
		ProgressDialog.Show(Localization.LocalizeString("Ui/Caption/Options:Loading"));
	}
	try
	{
		ThumbnailManager.UpdateDirtyLotThumbnails();
	}
	finally
	{
		if (flag)
		{
			ProgressDialog.Close();
			bool synchronous2 = Simulator.CheckYieldingContext(shouldThrowException: false);
			ScreenCaptureOverlay.Display(show: false, synchronous2);
		}
	}
	if (sLoadHeightMapData)
	{
		if (!sbHtMapLoaded)
		{
			World.LoadHeightMapRelatedData(bKeepLoaded: true);
		}
		sLoadHeightMapData = false;
		sbHtMapLoaded = true;
	}
}
public void UpdateRoutingDataAndUnloadHeightMap()
{
	if (sbHtMapLoaded)
	{
		sbHtMapLoaded = false;
		ScreenCaptureOverlay.Display(show: true, synchronous: true);
		ProgressDialog.Show(Localization.LocalizeString("Ui/Caption/Global:Processing"), delay: false);
		World.BuildRoutingData();
		World.UnloadHeightMapRelatedData(bForceRelease: true);
		ProgressDialog.Close();
		ScreenCaptureOverlay.Display(show: false);
	}
}
private static bool sLoadHeightMapData;
private static bool sbHtMapLoaded;
