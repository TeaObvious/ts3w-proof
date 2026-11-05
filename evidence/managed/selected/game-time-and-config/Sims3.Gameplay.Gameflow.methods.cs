// Analyst: Actual original rendering; context/lock gates and event dispatch remain with managed Gameflow, not the native time hook.
using Sims3.SimIFace;

public static void SetGameSpeed(GameSpeed requestedSpeed, SetGameSpeedContext setGameSpeedContext)
{
	if (setGameSpeedContext != SetGameSpeedContext.GameStates)
	{
		if ((setGameSpeedContext == SetGameSpeedContext.Gameplay && CommandLine.FindSwitch("speed") != null) || (Environment.HasEditInGameModeSwitch && CommandLine.FindSwitch("eigpauseoverride") == null) || mGameSpeedLocked)
		{
			return;
		}
		if (requestedSpeed == GameSpeed.Pause)
		{
			if (CurrentGameSpeed == GameSpeed.Pause)
			{
				requestedSpeed = mGameSpeedNonPaused;
			}
			else
			{
				mGameSpeedNonPaused = CurrentGameSpeed;
			}
		}
	}
	SetGameSpeed(requestedSpeed, lockSpeed: false);
}

using Sims3.Gameplay.Actors;
using Sims3.Gameplay.Interactions;
using Sims3.Gameplay.Tutorial;
using Sims3.SimIFace;

protected static void SetGameSpeed(GameSpeed requestedSpeed, bool lockSpeed)
{
	float gameTimeScale = 0f;
	mGameSpeedLocked = lockSpeed;
	if (requestedSpeed != GameSpeed.Pause)
	{
		IntroTutorial.StateComplete(TutorialStates.UnPaused);
	}
	switch (requestedSpeed)
	{
	case GameSpeed.Pause:
	case GameSpeed.Normal:
	case GameSpeed.Double:
	case GameSpeed.Triple:
		gameTimeScale = GetTimeRateForGameSpeed(requestedSpeed);
		mGameSpeed = requestedSpeed;
		break;
	case GameSpeed.Skip:
		if (Sim.ActiveActor != null)
		{
			InteractionInstance headInteraction = Sim.ActiveActor.InteractionQueue.GetHeadInteraction();
			if (headInteraction != null)
			{
				mInteractionInstanceToSkip = headInteraction;
				gameTimeScale = GetTimeRateForGameSpeed(GameSpeed.Skip);
				mGameSpeed = requestedSpeed;
			}
			else
			{
				gameTimeScale = GetTimeRateForGameSpeed(GameSpeed.Normal);
				mGameSpeed = GameSpeed.Normal;
			}
		}
		break;
	}
	if (!lockSpeed)
	{
		sPersistedGameSpeed = mGameSpeed;
	}
	GameUtils.SetGameTimeScale(gameTimeScale);
	switch (requestedSpeed)
	{
	case GameSpeed.Pause:
		GameUtils.SetGameTimeSpeedLevel(0);
		break;
	case GameSpeed.Normal:
		GameUtils.SetGameTimeSpeedLevel(1);
		break;
	case GameSpeed.Double:
		GameUtils.SetGameTimeSpeedLevel(2);
		break;
	case GameSpeed.Triple:
	case GameSpeed.Skip:
		GameUtils.SetGameTimeSpeedLevel(3);
		break;
	}
	if (GameSpeedChanged != null)
	{
		GameSpeedChanged(mGameSpeed, lockSpeed);
	}
}

