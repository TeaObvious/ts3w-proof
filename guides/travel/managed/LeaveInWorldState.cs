// Original PC 1.67 Sims3GameplaySystems.dll; actual complete ILSpy type export.
using System;
using Sims3.Gameplay.Utilities;
using Sims3.SimIFace;
using Sims3.UI;

namespace Sims3.Gameplay;

public class LeaveInWorldState : StateMachineState
{
	public LeaveInWorldState()
		: base(5, 5, "Leave In World")
	{
	}

	protected LeaveInWorldState(int enterId, int exitId, string name)
		: base(enterId, exitId, name)
	{
	}

	public override void Startup()
	{
		base.Startup();
		PopupMenu.CloseOptions();
		GameUtils.FreezeLotLODs(enable: true);
		World.OnEnterNotInWorldEventHandler += OnEnterNotInWorld;
		GameUtils.TransitionToNotInWorld();
	}

	public override void Shutdown()
	{
		base.Shutdown();
		GameUtils.FreezeLotLODs(enable: false);
		World.OnEnterNotInWorldEventHandler -= OnEnterNotInWorld;
		Initializers initializers = new Initializers("PreWorldInitializers", null);
		initializers.Shutdown();
	}

	private void OnEnterNotInWorld(object sender, EventArgs args)
	{
		GameUtils.EnableSceneDraw(enable: false);
		if (!GameStates.HasPendingState())
		{
			SendToNextState();
		}
	}

	protected virtual void SendToNextState()
	{
		GameStates.GotoState(GameState.MainMenu);
	}
}
