/* Analyst: original PC 1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.LiveModeState.
   Complete original waiting/cleanup members. The flag is enabled for the active-Sim lot before locking/waiting, then disabled after unlock. Startup is already retained in the travel evidence. Sleep uses wall-clock DateTime while yielding, not simulation-time ticks.
   Original selected metadata tokens: 0x060032f4, 0x060032f5, 0x060032f6, 0x060032f7.
   Actual ILSpy member rendering; paired original IL controls exact semantics. */

using System;
using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Core;
using Sims3.SimIFace;
using Sims3.UI;

private void Sleep(double secs)
{
	if (secs == 0.0)
	{
		Simulator.Sleep(0u);
		return;
	}
	DateTime dateTime = DateTime.Now.AddSeconds(secs);
	while (DateTime.Now < dateTime)
	{
		Simulator.Sleep(0u);
	}
}
private void WaitForLotLoad(bool activeSimLot, bool cleanup)
{
	if (Sim.ActiveActor != null)
	{
		Lot lot = null;
		if (activeSimLot)
		{
			lot = Sim.ActiveActor.LotCurrent;
		}
		else if (!CameraController.IsMapViewModeEnabled())
		{
			Sleep(1.5);
			lot = LotManager.ActiveLot;
		}
		if (lot != null)
		{
			if (activeSimLot)
			{
				CameraController.TetherToLot(lot.LotId, forceImmediate: true);
				Simulator.Sleep(0u);
				Camera.SetMapViewActiveLotMode(allowActive: true);
				LotManager.LockActiveLot(lot);
				Camera.SetView(CameraView.HouseView, alsoFollowSelectedSim: true, useLerp: true);
				Sleep(1.5);
				World.WaitForLot(lot.LotId, waitForSims: true, waitForObjects: true);
				CameraController.Untether();
				Camera.SetView(CameraView.LotView, alsoFollowSelectedSim: true, useLerp: true);
				Sleep(3.0);
			}
			else
			{
				World.WaitForLot(lot.LotId, waitForSims: true, waitForObjects: true);
			}
		}
	}
	if (cleanup)
	{
		GameUtils.EnableSceneDraw(enable: true);
		LoadingScreenController.Unload();
		while (LoadingScreenController.Instance != null)
		{
			Sleep(0.0);
		}
		if (LotManager.ActiveLotLocked)
		{
			DelayedMapViewActiveLotMode();
		}
	}
}
private void DelayedMapViewActiveLotMode()
{
	LotManager.UnlockActiveLot();
	Camera.SetMapViewActiveLotMode(allowActive: false);
}
private void OnCameraFlyThroughFinishedEvent(uint pathIndex)
{
	CameraController.OnCameraFlyThroughFinishedCallback = (CameraController.CameraFlyThroughFinishedHandler)Delegate.Remove(CameraController.OnCameraFlyThroughFinishedCallback, new CameraController.CameraFlyThroughFinishedHandler(OnCameraFlyThroughFinishedEvent));
	Camera.SetView(CameraView.SimView, alsoFollowSelectedSim: true, useLerp: true);
	GameStates.PostZoomFunction(DelayedMapViewActiveLotMode, 10f);
	ShowUI(show: true);
	ShowMaptags(show: true);
	AudioManager.MusicMode = MusicMode.None;
	GameUtils.Unpause();
}
