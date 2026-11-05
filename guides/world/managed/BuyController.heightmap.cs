/* Analyst: original PC 1.67 UI.dll; Sims3.UI.BuyController.
   Complete original Dispose; calls UnloadHeightMapRelatedData(false) during controller teardown, following compositor/inventory/event cleanup.
   Original selected metadata tokens: 0x06001c0f.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using System;
using Sims3.SimIFace;
using Sims3.UI.CAS;
using Sims3.UI.Hud;

public override void Dispose()
{
	foreach (WindowBase item in mBuyCatalogGridItemCache)
	{
		CustomContentIcon customContentIcon = item.GetChildByID(35u, recursive: true) as CustomContentIcon;
		customContentIcon.Dispose();
	}
	foreach (WindowBase item2 in mBuildCatalogPatternGridItemCache)
	{
		CustomContentIcon customContentIcon2 = item2.GetChildByID(35u, recursive: true) as CustomContentIcon;
		customContentIcon2.Dispose();
	}
	foreach (ItemGridCellItem item3 in mCatalogGrid.Items)
	{
		CustomContentIcon customContentIcon3 = item3.mWin.GetChildByID(35u, recursive: true) as CustomContentIcon;
		if (customContentIcon3 != null)
		{
			customContentIcon3.Dispose();
		}
	}
	mPuckController.Dispose();
	mPuckController = null;
	DisposeSellPanel();
	UserToolUtils.OnCollectionChanged -= UserToolUtils_OnCollectionChanged;
	mCatalogPreviewPanelReshowWin.FocusAcquired -= OnCatalogPreviewPanelReshowWinFocusAcquired;
	DisposeCatalogPreview();
	mHudModel = null;
	UnregisterDebugCommand();
	CameraController.OnCameraControllerSwitchCallback -= OnCameraControllerSwitch;
	UIManager.NewContentInstalled -= OnNewContentInstalled;
	Responder.Instance.StoreUI.OnFeaturedItemRemoveError -= OnFeaturedItemRemoveErrorHandler;
	if (mbTriggersCallbackConnected)
	{
		SceneMgrWindow sceneWindow = UIManager.GetSceneWindow();
		if (sceneWindow != null)
		{
			sceneWindow.AreaChange -= OnResolutionChanged;
			sceneWindow.TriggerDown -= OnTriggerDown;
			sceneWindow.AreaChange -= OnResolutionChanged;
			sceneWindow.MouseUp -= OnMouseUp;
		}
		mbTriggersCallbackConnected = false;
	}
	PuckController.OnModeChangeCallback = (PuckController.ModeChangeHandler)Delegate.Remove(PuckController.OnModeChangeCallback, new PuckController.ModeChangeHandler(OnModeChangeHandler));
	FocusAcquired -= OnFocusChange;
	FocusLost -= OnFocusChange;
	World.OnEyedropperPickCallback = (EventHandler)Delegate.Remove(World.OnEyedropperPickCallback, new EventHandler(OnEyedropperPick));
	World.OnUndoRedoStateChangeCallback = (EventHandler)Delegate.Remove(World.OnUndoRedoStateChangeCallback, new EventHandler(OnUndoRedoStateChange));
	World.OnLotEditZonesChangedCallback = (World.OnLotEditZonesChangedEventHandler)Delegate.Remove(World.OnLotEditZonesChangedCallback, new World.OnLotEditZonesChangedEventHandler(OnLotEditZonesChanged));
	World.StoreFeaturedItemPurchaseResultCallback = (EventHandler)Delegate.Remove(World.StoreFeaturedItemPurchaseResultCallback, new EventHandler(OnStoreFeaturedItemPurchaseResult));
	UnregisterBuyModeHandToolEvents();
	UserToolUtils.BuildBuyGenericEvent -= OnBuildBuyGenericEvent;
	UIManager.LocaleChanged -= OnLocaleChange;
	mBuyModel.StoreTNSItemSelected -= OnStoreTNSItemSelected;
	mBuyModel.FundsChanged -= OnFundsChanged;
	if (CASCompositorController.Instance != null)
	{
		CASCompositorController.Instance.EnterFullEditMode -= OnEnterFullEditMode;
		CASCompositorController.Instance.ExitFullEditMode -= OnExitFullEditMode;
	}
	BBCompositorManager.Unload();
	SetInventoryMode(bTurnOn: false);
	World.OnPlaceObjectIntoInventoryCallback = (World.InventoryEventHandler)Delegate.Remove(World.OnPlaceObjectIntoInventoryCallback, new World.InventoryEventHandler(OnPlaceObjectIntoInventory));
	World.UnloadHeightMapRelatedData(bForceRelease: false);
	if (mManualAutoPlaceTask.IsValid)
	{
		Simulator.DestroyObject(mManualAutoPlaceTask);
	}
	if (mManualAutoPlaceNotification != null)
	{
		mManualAutoPlaceNotification.CloseNow();
		mManualAutoPlaceNotification = null;
	}
	base.Dispose();
}
