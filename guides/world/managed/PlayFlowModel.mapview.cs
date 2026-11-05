/* Analyst: original PC 1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.PlayFlowModel.
   Complete original household-placement/activation policy setters and flag cleanup members. Literal true/false arguments are verified by the paired IL. Helpers and other UI flow are outside this member slice.
   Original selected metadata tokens: 0x0600ab96, 0x0600ab97, 0x0600ab9e, 0x0600aba5, 0x0600aba6, 0x0600abac.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using Sims3.Gameplay.Actors;
using Sims3.Gameplay.CAS;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;
using Sims3.UI.GameEntry;

public bool PlayBinHouseholdScreenMaskedFunc(object tupleParam)
{
	if (tupleParam is Tuple tuple)
	{
		Lot lot = tuple.Param1 as Lot;
		IExportBinContents exportBinContents = tuple.Param2 as IExportBinContents;
		bool buyFurnished = (bool)tuple.Param3;
		if (lot != null && exportBinContents != null)
		{
			BinCommon.KickSimsOffLot(lot, bMoveToNearbyPos: true);
			Camera.SetMapViewActiveLotMode(allowActive: true);
			LotManager.LockActiveLot(lot);
			Sim newActiveSim = null;
			if (BinCommon.PlaceFromExportBin((ExportBinContents)exportBinContents, lot, PlaceAction.MoveInPayActivate, buyFurnished, ref newActiveSim) == PlaceResult.Success)
			{
				LotManager.SetWallsViewMode(302u);
				lot.SetDisplayLevel(lot.DoesFoundationExistOnLot() ? 1 : 0);
				Camera.FocusOnSelectedSim();
				Camera.SetView(CameraView.SimView, alsoFollowSelectedSim: false, useLerp: false);
				Sleep(1.5);
				if (GameStates.MovingBinID == mSelectedBinContentId)
				{
					ExportBinContents exportBinContents2 = BinModel.Singleton.FindExportBinItem(mSelectedBinContentId);
					BinModel.Singleton.DeleteFromExportBin(exportBinContents2.BinInfo);
				}
			}
			return true;
		}
	}
	return false;
}
public bool PlayTravelHouseholdScreenMaskedFunc(object tupleParam)
{
	if (tupleParam is Tuple tuple)
	{
		Lot lot = tuple.Param1 as Lot;
		Household household = tuple.Param2 as Household;
		_ = (bool)tuple.Param3;
		if (lot != null && household != null)
		{
			BinCommon.KickSimsOffLot(lot, bMoveToNearbyPos: true);
			Camera.SetMapViewActiveLotMode(allowActive: true);
			LotManager.LockActiveLot(lot);
			if (lot.IsDormitoryLot || lot.IsApartmentLot)
			{
				lot.MoveSelectableIntoRoommateLot(household);
			}
			else
			{
				lot.MoveIn(household);
			}
			LotManager.SetWallsViewMode(302u);
			lot.SetDisplayLevel(lot.DoesFoundationExistOnLot() ? 1 : 0);
			Sleep(1.5);
			return true;
		}
	}
	return false;
}
public bool ActivateSimScreenMaskedFuncFromHousehold(Household selectedHousehold, Lot selectedLot)
{
	if (selectedHousehold != null && selectedLot != null)
	{
		Camera.SetMapViewActiveLotMode(allowActive: true);
		LotManager.LockActiveLot(selectedLot);
		selectedHousehold.PrepareToBecomeActiveHousehold();
		Sim sim = BinCommon.ActivateSim(selectedHousehold, selectedLot);
		LotManager.SetWallsViewMode(302u);
		selectedLot.SetDisplayLevel(selectedLot.DoesFoundationExistOnLot() ? 1 : 0);
		if (sim.LotCurrent == sim.LotHome)
		{
			Camera.FocusOnSelectedSim();
			Camera.SetView(CameraView.SimView, alsoFollowSelectedSim: false, useLerp: false);
		}
		else
		{
			Camera.FocusOnLot(sim.LotHome.LotId, 0f);
			Camera.SetView(CameraView.HouseView, alsoFollowSelectedSim: false, useLerp: false);
		}
		selectedLot.CheckIfLotNeedsBabysitter();
		Sleep(1.5);
		return true;
	}
	return false;
}
private void TurnOffMapViewActiveLotMode()
{
	if (LotManager.ActiveLotLocked)
	{
		LotManager.UnlockActiveLot();
		if (!GameStates.PostZoomFunction(TurnOffActiveMapViewModeTask, 10f))
		{
			TurnOffActiveMapViewModeTask();
		}
	}
}
private void TurnOffActiveMapViewModeTask()
{
	Camera.SetMapViewActiveLotMode(allowActive: false);
}
public PlaceResult EndPlaceStartGame()
{
	Camera.OnExitBuildBuy();
	LotManager.UnlockActiveLot();
	PlaceResult placeResult = PlaceResult.ContentFailure;
	if (mPlacementLot != null && mHouseholdInfo != null)
	{
		Sim newActiveSim = null;
		ScreenCaptureOverlay.Display(show: true, synchronous: true);
		ProgressDialog.Show(Localization.LocalizeString("Ui/Caption/Options:Loading"), delay: false);
		placeResult = BinCommon.PlaceFromExportBin(mHouseholdInfo.Household, mHouseholdInfo, mPlacementLot, PlaceAction.MoveInActivate, buyFurnished: true, ref newActiveSim);
		if (placeResult == PlaceResult.Success)
		{
			mHouseholdInfo.Flush();
			PlayFlowController.Singleton.HidePlayFlowUI();
			Camera.SetMapViewActiveLotMode(allowActive: true);
			World.WaitForLot(mPlacementLot.LotId, waitForSims: true, waitForObjects: true);
			ScreenUnmaskedFunc(null);
			ProgressDialog.Close();
			ScreenCaptureOverlay.Display(show: false, synchronous: true);
			Simulator.Sleep(0u);
			mPlacementLot = null;
			mHouseholdInfo = null;
			return placeResult;
		}
	}
	mHouseholdInfo.Flush();
	ProgressDialog.Close();
	ScreenCaptureOverlay.Display(show: false, synchronous: true);
	Simulator.Sleep(0u);
	Camera.SetView(CameraView.MapView, alsoFollowSelectedSim: false, useLerp: true);
	return placeResult;
}
