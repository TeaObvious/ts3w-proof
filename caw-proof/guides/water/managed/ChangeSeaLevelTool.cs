using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public class ChangeSeaLevelTool : WorldBuilderTool
{
	private const float kSeaLevelChangeRate = 0.0003f;

	private WorldBuilderMainForm mApp;

	private bool mbActive;

	private Sims3.CSHost.World mWorld;

	private Sea mSea;

	public ChangeSeaLevelTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mWorld = mApp.GetCurrentWorld();
		mSea = mWorld.GetSea();
		mbActive = false;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolChangeSeaLevel;
	}

	public override string GetStatusInfo()
	{
		return Strings.kChangeSeaLevelTool_StatusString;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		if (!mbActive)
		{
			RayCastHit rayHit = default;
			if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
			{
				mbActive = true;
				float y = rayHit.mPoint.y;
				float seaLevel = mSea.GetSeaLevel();
				WorldBuilderMainForm.Instance.SubmitUndoCommand(new SeaLevelCommand(y, seaLevel));
			}
		}
		return true;
	}

	public override bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		if (mbActive)
		{
			mbActive = false;
			bRemoveTool = true;
		}
		return true;
	}
}
