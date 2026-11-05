using Sims3;
using Sims3.CSHost;

namespace WorldBuilderCS;

internal class SeaLevelCommand : Command
{
	private float mPrevSeaLevel;

	private float mNewSeaLevel;

	public SeaLevelCommand(float newSeaLevel, float prevSeaLevel)
	{
		mPrevSeaLevel = prevSeaLevel;
		mNewSeaLevel = newSeaLevel;
	}

	public override bool Execute()
	{
		SetSeaLevel(mNewSeaLevel);
		return true;
	}

	public override void Undo()
	{
		SetSeaLevel(mPrevSeaLevel);
	}

	private static void SetSeaLevel(float seaLevel)
	{
		World currentWorld = WorldBuilderMainForm.Instance.GetCurrentWorld();
		if (currentWorld != null)
		{
			Sea sea = currentWorld.GetSea();
			if (sea != null)
			{
				sea.BeginEditMode();
				sea.SetSeaLevel(seaLevel);
				sea.EndEditMode(bWholeWorldUpdated: true, 0, 0, 0, 0);
			}
		}
	}
}
