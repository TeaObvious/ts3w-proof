using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public class TerrainAutoPaintTool : WorldBuilderTool
{
	private WorldBuilderMainForm mMainForm;

	public TerrainAutoPaintTool(WorldBuilderMainForm mainForm)
	{
		mMainForm = mainForm;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolTerrainAutoPaint;
	}

	public override string GetStatusInfo()
	{
		return Strings.kTerrainAutoPaintTool_StatusString;
	}

	public override bool Init()
	{
		if (mMainForm != null)
		{
			mMainForm.ShowTerrainAutoPaintToolForm(this);
		}
		return true;
	}

	public override void Shutdown()
	{
		if (mMainForm != null)
		{
			mMainForm.HideTerrainAutoPaintToolForm();
		}
	}
}
