/* Analyst: original PC 1.67 UI.dll; Sims3.UI.BlueprintController.
   Complete original Dispose; calls UnloadHeightMapRelatedData(false) after unsubscribing tool/UI events, before base.Dispose.
   Original selected metadata tokens: 0x06000ce2.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using System;
using Sims3.SimIFace;
using Sims3.UI.Hud;

public override void Dispose()
{
	mPuckController.Dispose();
	mPuckController = null;
	DisposeSellPanel();
	mCatalogPreviewPanelReshowWin.FocusAcquired -= OnCatalogPreviewPanelReshowWinFocusAcquired;
	DisposeCatalogPreview();
	mHudModel = null;
	UnregisterDebugCommand();
	CameraController.OnCameraControllerSwitchCallback -= OnCameraControllerSwitch;
	UIManager.NewContentInstalled -= OnNewContentInstalled;
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
	if (mTriggerHandleBlueprintPreview != uint.MaxValue)
	{
		SceneMgrWindow sceneWindow2 = UIManager.GetSceneWindow();
		if (sceneWindow2 != null)
		{
			UIManager.GetSceneWindow().RemoveTriggerHook(mTriggerHandleBlueprintPreview);
			mTriggerHandleBlueprintPreview = uint.MaxValue;
		}
	}
	PuckController.OnModeChangeCallback = (PuckController.ModeChangeHandler)Delegate.Remove(PuckController.OnModeChangeCallback, new PuckController.ModeChangeHandler(OnModeChangeHandler));
	World.OnUndoRedoStateChangeCallback = (EventHandler)Delegate.Remove(World.OnUndoRedoStateChangeCallback, new EventHandler(OnUndoRedoStateChange));
	UnregisterBuyModeHandToolEvents();
	UserToolUtils.BuildBuyGenericEvent -= OnBuildBuyGenericEvent;
	UIManager.LocaleChanged -= OnLocaleChange;
	mBuyModel.FundsChanged -= OnFundsChanged;
	World.OnPlaceObjectIntoInventoryCallback = (World.InventoryEventHandler)Delegate.Remove(World.OnPlaceObjectIntoInventoryCallback, new World.InventoryEventHandler(OnPlaceObjectIntoInventory));
	World.UnloadHeightMapRelatedData(bForceRelease: false);
	base.Dispose();
}
