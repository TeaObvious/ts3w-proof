using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

internal sealed class LotLevelRectTool : WorldBuilderTool
{
	private WorldBuilderMainForm mApp;

	private Sims3.CSHost.World mWorld;

	private Lot mLot;

	public LotLevelRectTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mWorld = mApp.GetCurrentWorld();
		mLot = null;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolLotLevelRect;
	}

	public override string GetStatusInfo()
	{
		return Strings.kLotLevelRectTool_StatusString;
	}

	public void SetLot(Lot lotObj)
	{
		mLot = lotObj;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0089: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0)
		{
			return false;
		}
		int x = e.X;
		int y = e.Y;
		RayCastHit rayHit = default;
		if (Sims3.CSHost.World.Pick(x, y, CollisionLayer.Ground, ref rayHit))
		{
			mLot = mWorld.GetLotAtLocation(rayHit.mPoint.x, rayHit.mPoint.z);
			if (mLot != null)
			{
				if (mLot.ModifiedByBuildMode())
				{
					MessageBox.Show(Strings.kLotTool_CanNotReFlatten, Strings.kLotTool_Warning, (MessageBoxButtons)0, (MessageBoxIcon)48);
				}
				else
				{
					CmdFlattenLot cmd = new CmdFlattenLot(mLot, mWorld, mWorld.GetTerrainHeight(rayHit.mPoint.x, rayHit.mPoint.z), groupWithPreviousCommand: false);
					mApp.SubmitUndoCommand(cmd);
				}
				mLot.Dispose();
				mLot = null;
			}
		}
		return true;
	}

	public override bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		return false;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		return false;
	}
}
