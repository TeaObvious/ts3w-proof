// Original PC 1.67 Sims3GameplaySystems.dll; actual complete ILSpy type export.
using Sims3.SimIFace;
using Sims3.UI;
using Sims3.UI.GameEntry;

namespace Sims3.Gameplay;

public class TravelDepartureState : LeaveInWorldState
{
	public TravelDepartureState()
		: base(9, 9, "Travel Departure")
	{
	}

	protected TravelDepartureState(int enterId, int exitId, string name)
		: base(enterId, exitId, name)
	{
	}

	protected override void SendToNextState()
	{
		bool flag = GameStates.sEditOtherWorldData != null && GameStates.sEditOtherWorldData.mOrigWorld == WorldName.University;
		bool flag2 = GameStates.DestinationTravelWorld == WorldName.University && GameStates.ReturningFromWorld != WorldType.University && !flag;
		if (!GameStates.HasAFamilyBeenSeclectedAtHome || flag2)
		{
			SendToNextState(InWorldState.SubState.PlayFlow);
		}
		else
		{
			SendToNextState(InWorldState.SubState.LiveMode);
		}
	}

	protected void SendToNextState(InWorldState.SubState startupState)
	{
		if (!GameStates.LoadFileName.Contains(":"))
		{
			WorldFileMetadata info = new WorldFileMetadata();
			info.mWorldFile = GameStates.LoadFileName;
			Responder.Instance.MainMenuModel.GetWorldFileDetails(ref info);
			GameStates.TransitionToGameStateToInWorld(GameStates.LoadFileName, info, startupState, force: true);
		}
		else
		{
			SaveGameMetadata info2 = new SaveGameMetadata();
			string loadFileName = GameStates.LoadFileName;
			info2.mSaveFile = loadFileName.Substring(0, loadFileName.IndexOf(':'));
			Responder.Instance.MainMenuModel.GetSaveFileDetails(ref info2);
			GameStates.TransitionToGameStateToInWorld(GameStates.LoadFileName, info2, startupState, force: true);
		}
	}
}
