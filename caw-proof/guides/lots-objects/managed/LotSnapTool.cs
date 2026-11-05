using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

internal sealed class LotSnapTool : WorldBuilderTool
{
	private WorldBuilderMainForm mApp;

	private Sims3.CSHost.World mWorld;

	private Lot mLot;

	private bool mbKeepTerrain = true;

	private Sims3.Math.Vector3 mStartingPos;

	private Sims3.Math.Vector3 mSavedPos;

	private Sims3.Math.Vector3 mCurPosition = default;

	internal LotSnapTool()
	{
		mApp = WorldBuilderMainForm.Instance;
		mApp.EnableSnapLotSettingsForm(bEnable: true);
		mWorld = mApp.GetCurrentWorld();
	}

	public override void Shutdown()
	{
		mApp.EnableSnapLotSettingsForm(bEnable: false);
		if (mLot != null)
		{
			mLot.Dispose();
			mLot = null;
		}
		base.Shutdown();
	}

	public override eToolID GetID()
	{
		return eToolID.kToolSnapLot;
	}

	public override string GetStatusInfo()
	{
		return Strings.kSnapLotTool_Active;
	}

	private bool PickAndSelectLot(MouseEventArgs e, ref Sims3.Math.Vector3 rayHitPoint)
	{
		RayCastHit rayHit = default;
		if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			rayHitPoint = rayHit.mPoint;
			mLot = mWorld.GetLotAtLocation(rayHit.mPoint.x, rayHit.mPoint.z);
			if (mLot != null)
			{
				mApp.SelectLot(mLot);
				return true;
			}
		}
		return false;
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
		Sims3.Math.Vector3 rayHitPoint = default;
		if (mLot == null && PickAndSelectLot(e, ref rayHitPoint))
		{
			mLot.KeepTerrain = mbKeepTerrain;
			mSavedPos = mLot.Position;
			mCurPosition = mSavedPos;
			mStartingPos = rayHitPoint;
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
			MoveLot();
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
		if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit))
		{
			Sims3.Math.Vector3 vector = default;
			vector = rayHit.mPoint - mStartingPos;
			vector += mSavedPos;
			vector.y = mWorld.GetTerrainHeight(vector.x, vector.z);
			mApp.SnapToClosestLot(mLot, ref vector);
			mCurPosition = vector;
			mLot.EnableDrawPreliminaryLot(bEnable: true);
			mLot.MovePreliminary(ref mCurPosition, mLot.RotationDegree);
		}
		return true;
	}

	private void MoveLot()
	{
		mLot.Move(ref mCurPosition, mLot.RotationDegree);
		mApp.SelectLot(mApp.GetLotNodeGivenId(mLot.Id));
		mLot.EnableDrawPreliminaryLot(bEnable: false);
		mLot.Dispose();
		mLot = null;
		mApp.RefreshPropertyBrowser();
	}
}
