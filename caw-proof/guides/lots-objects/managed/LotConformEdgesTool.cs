using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

internal sealed class LotConformEdgesTool : WorldBuilderTool
{
	private WorldBuilderMainForm mMainForm;

	private Sims3.CSHost.World mWorld;

	private Lot mLot;

	public LotConformEdgesTool()
	{
		mMainForm = WorldBuilderMainForm.Instance;
		mWorld = mMainForm.GetCurrentWorld();
		mLot = null;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolLotConformEdges;
	}

	public override string GetStatusInfo()
	{
		return Strings.kLotTool_ConformEdgesStatusString;
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
			return true;
		}
		RayCastHit rayHit = default;
		if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			Lot lotAtLocation = mWorld.GetLotAtLocation(rayHit.mPoint.x, rayHit.mPoint.z);
			if (lotAtLocation != null)
			{
				mLot = lotAtLocation;
				mMainForm.SelectLot(mLot);
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
			return true;
		}
		if (mLot != null)
		{
			mLot.ConformEdgesToTerrain();
			CmdLotConformEdges cmd = new CmdLotConformEdges();
			mMainForm.SubmitUndoCommand(cmd);
			bRemoveTool = true;
		}
		return true;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		return true;
	}

	public override bool KeyDown(object sender, KeyEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0011: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((int)e.KeyCode == 27 && mLot != null)
		{
			mMainForm.SelectLot(mMainForm.GetLotNodeGivenId(mLot.Id));
			mLot.EnableDrawPreliminaryLot(bEnable: false);
			mLot.Dispose();
			mLot = null;
		}
		return false;
	}
}
