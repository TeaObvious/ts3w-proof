using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

internal sealed class CloneLotTool : WorldBuilderTool
{
	private WorldBuilderMainForm mMainForm;

	private Sims3.CSHost.World mWorld;

	private Lot mLot;

	private Sims3.Math.Vector3 mStartingPos;

	private Sims3.Math.Vector3 mSavedPos;

	private Sims3.Math.Vector3 mCurPosition;

	private float mCurRotationDegree;

	public CloneLotTool()
	{
		mMainForm = WorldBuilderMainForm.Instance;
		mWorld = mMainForm.GetCurrentWorld();
		mLot = null;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolCloneLot;
	}

	public override string GetStatusInfo()
	{
		return Strings.kLotTool_CloneStatusString;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_007e: Unknown result type (might be due to invalid IL or missing references)
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
			Sims3.Math.Vector3 mPoint = rayHit.mPoint;
			Lot lotAtLocation = mWorld.GetLotAtLocation(rayHit.mPoint.x, rayHit.mPoint.z);
			if (lotAtLocation != null)
			{
				if (lotAtLocation.IsModified())
				{
					MessageBox.Show(Strings.kLotClone_ModifiedWarning, Strings.kLotClone_WarningCaption, (MessageBoxButtons)0, (MessageBoxIcon)48);
					lotAtLocation.Dispose();
					lotAtLocation = null;
					return true;
				}
				mLot = lotAtLocation;
				mMainForm.SelectLot(mLot);
				mSavedPos = mLot.Position;
				mCurPosition = mSavedPos;
				mCurRotationDegree = mLot.RotationDegree;
				mStartingPos = mPoint;
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
			ulong lotId = mLot.Id;
			CmdCloneLot cmdCloneLot = new CmdCloneLot(mLot, mWorld, mCurPosition, Geometry.Radians(mCurRotationDegree), groupWithPreviousCommand: false);
			if (mMainForm.SubmitUndoCommand(cmdCloneLot))
			{
				lotId = cmdCloneLot.ClonedLotId;
			}
			mMainForm.SelectLot(mMainForm.GetLotNodeGivenId(lotId));
			mLot.EnableDrawPreliminaryLot(bEnable: false);
			mLot.Dispose();
			mLot = null;
			mMainForm.RefreshPropertyBrowser();
		}
		return true;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (mLot == null)
		{
			return false;
		}
		RayCastHit rayHit = default;
		if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit, bTryPickWater: true))
		{
			Sims3.Math.Vector3 vector = default;
			vector = rayHit.mPoint - mStartingPos;
			vector += mSavedPos;
			vector.y = mWorld.GetTerrainHeight(vector.x, vector.z);
			mMainForm.SnapToGridPosition(ref vector, bAboveWater: true);
			mCurPosition = vector;
			mLot.EnableDrawPreliminaryLot(bEnable: true, bTestSelf: true);
			mLot.MovePreliminary(ref mCurPosition, mCurRotationDegree);
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
