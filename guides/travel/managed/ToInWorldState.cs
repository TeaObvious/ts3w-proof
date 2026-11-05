// Original PC 1.67 Sims3GameplaySystems.dll; actual complete ILSpy type export.
using System;
using Sims3.Gameplay.Core;
using Sims3.Gameplay.TimeTravel;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;

namespace Sims3.Gameplay;

public class ToInWorldState : StateMachineState
{
	public class SceneReadyTask : Task
	{
		private SceneMaskFlags mSceneMaskFlags;

		private GameState mTargetState;

		public SceneReadyTask(SceneMaskFlags sceneMaskFlags, GameState targetState)
		{
			mSceneMaskFlags = sceneMaskFlags;
			mTargetState = targetState;
		}

		public override void Simulate()
		{
			GameUtils.WaitForFrameEvaluation();
			World.WaitForDetailedLots();
			GameUtils.WaitForSceneReadiness(mSceneMaskFlags);
			GameStates.GotoState(mTargetState);
			Simulator.DestroyObject(ObjectId);
		}
	}

	private class WorldLoadFailed : OneShotFunctionTask
	{
		public bool PersistToMainMenu => true;

		public WorldLoadFailed()
			: base(WorldLoadFailedTask)
		{
		}
	}

	private const string sLocalizationKey = "Gameplay/ToInWorldState";

	private static ObjectGuid[] sMenuObjectGuids;

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/ToInWorldState:" + name, parameters);
	}

	public ToInWorldState()
		: base(3, 3, "To In World")
	{
	}

	protected ToInWorldState(int enterId, int exitId, string name)
		: base(enterId, exitId, name)
	{
	}

	public override void Startup()
	{
		base.Startup();
		World.OnWorldLoadStartedEventHandler += OnWorldLoadStarted;
		World.OnWorldLoadStatusEventHandler += OnWorldLoadStatus;
		World.OnWorldLoadFinishedEventHandler += OnWorldLoadFinished;
		World.OnWorldLoadFailedEventHandler += OnWorldLoadFailed;
		Gameflow.SetGameSpeed(Sims3.SimIFace.Gameflow.GameSpeed.Pause, Gameflow.SetGameSpeedContext.GameStates);
		Initializers initializers = new Initializers("PreWorldInitializers", this);
		initializers.Initialize();
		OnlineFeatures.LogTelemetryEvent(TelemetryModuleId.kModule_Test, TelemetryGroupId.kGroup_Test, GameStates.LoadFileName);
		GameUtils.TransitionToLoadWorld(GameStates.LoadFileName);
		StartLoadingScreen();
	}

	public virtual void StartLoadingScreen()
	{
		if (GameStates.IsNewGame)
		{
			LoadingScreenController.LoadNewGameLoadingScreen(GameStates.WorldFileMetadata);
		}
		else
		{
			LoadingScreenController.LoadSaveGameLoadingScreen(GameStates.SaveGameMetadata);
		}
	}

	public override void Shutdown()
	{
		base.Shutdown();
		World.OnWorldLoadStartedEventHandler -= OnWorldLoadStarted;
		World.OnWorldLoadStatusEventHandler -= OnWorldLoadStatus;
		World.OnWorldLoadFinishedEventHandler -= OnWorldLoadFinished;
		World.OnWorldLoadFailedEventHandler -= OnWorldLoadFailed;
	}

	private static void OnWorldLoadStarted(object sender, EventArgs args)
	{
		if (GameStates.IsStartingVacation && GameStates.DestinationTravelWorld == WorldName.FutureWorld)
		{
			CauseEffectWorldState currentCauseEffectWorldState = CauseEffectService.GetInstance().GetCurrentCauseEffectWorldState();
			World.SetVisualOverride((uint)currentCauseEffectWorldState);
		}
	}

	private static void OnWorldLoadStatus(object sender, EventArgs args)
	{
	}

	private static void OnWorldLoadFinished(object sender, EventArgs args)
	{
		Camera.RestorePersistedState();
		Simulator.AddObject(new SceneReadyTask(SceneMaskFlags.Sim, GameState.InWorld));
	}

	private static void OnWorldLoadFailed(object sender, EventArgs args)
	{
		Simulator.AddObject(new WorldLoadFailed());
	}

	private static void WorldLoadFailedTask()
	{
		string messageText = LocalizeString("WorldLoadDialogText", GameStates.LoadFileName);
		LoadingScreenController.Unload();
		SimpleMessageDialog.Show(string.Empty, messageText);
		Initializers initializers = new Initializers("PreWorldInitializers", null);
		initializers.Shutdown();
		GameStates.GotoState(GameState.ToMainMenu);
	}

	private static ObjectGuid[] GetCurrentTasks()
	{
		ITask[] objects = Queries.GetObjects<ITask>();
		ObjectGuid[] array = new ObjectGuid[objects.Length];
		int num = 0;
		ITask[] array2 = objects;
		foreach (ITask task in array2)
		{
			ref ObjectGuid reference = ref array[num++];
			reference = task.ObjectId;
		}
		return array;
	}

	public static void RecordMenuObjects()
	{
		sMenuObjectGuids = GetCurrentTasks();
	}

	public static void ValidateMenuObjects()
	{
		if (sMenuObjectGuids != null)
		{
			Simulator.Sleep(0u);
			sMenuObjectGuids = null;
		}
	}

	private static string LogSimulationObject(ObjectGuid guid)
	{
		ITask task = Simulator.GetTask(guid);
		IScriptProxy scriptProxy = task as IScriptProxy;
		string text = null;
		if (scriptProxy != null)
		{
			IScriptLogic target = scriptProxy.Target;
			if (target != null)
			{
				return string.Concat("Leaking proxy. type: '", target.GetType().FullName, "' guid: ", guid, " ToString: '", target.ToString(), "'");
			}
			return "Leaking proxy with null logic. class: '" + scriptProxy.ClassName + "' guid: " + guid;
		}
		if (task != null)
		{
			return string.Concat("Leaking task. type: '", task.GetType().FullName, "' guid: ", guid, " ToString: '", task.ToString(), "'");
		}
		return "Leaking simulation guid " + guid;
	}
}
