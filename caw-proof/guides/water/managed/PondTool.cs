using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

public class PondTool : WorldBuilderTool, IPerFrameUpdateTarget
{
	private const float kInitialPondWaterDepth = 2f;

	private const float kWaterLevelChangeRate = 0.0001f;

	private WorldBuilderMainForm mApp;

	private bool mbActive;

	private Sims3.CSHost.World mWorld;

	private int mSeedVertX;

	private int mSeedVertZ;

	private Pond mPond;

	public PondTool(WorldBuilderMainForm app)
	{
		mApp = app;
		mWorld = mApp.GetCurrentWorld();
		mbActive = false;
	}

	public override eToolID GetID()
	{
		return eToolID.kToolPond;
	}

	public override string GetStatusInfo()
	{
		return Strings.kPondTool_StatusString;
	}

	public override bool MouseDown(object sender, MouseEventArgs e)
	{
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		int x = e.X;
		int y = e.Y;
		if ((e.Button & 0x100000) != 0 && !mbActive)
		{
			RayCastHit rayHit = default;
			if (Sims3.CSHost.World.Pick(x, y, CollisionLayer.Ground, ref rayHit))
			{
				float num = (int)rayHit.mPoint.x;
				float num2 = (int)rayHit.mPoint.z;
				mPond = mWorld.GetPondAtVertex(num, num2);
				if (mPond == null && !InDeletionMode())
				{
					float terrainHeight = mWorld.GetTerrainHeight(num, num2);
					Sea sea = mWorld.GetSea();
					if (sea == null)
					{
						return false;
					}
					float seaLevel = sea.GetSeaLevel();
					if (terrainHeight <= seaLevel)
					{
						return false;
					}
					float initialWaterLevel = terrainHeight + 2f;
					mPond = mWorld.CreateNewPond();
					if (!mPond.Init((int)num, (int)num2, initialWaterLevel))
					{
						mPond.Dispose();
						mPond = null;
						return false;
					}
					mWorld.AddPond(mPond);
				}
				if (mPond != null)
				{
					if (InDeletionMode())
					{
						mWorld.RemovePond(mPond);
						mPond.Shutdown();
						mPond.Dispose();
						mPond = null;
					}
					else
					{
						mbActive = true;
						mSeedVertX = (int)num;
						mSeedVertZ = (int)num2;
						mApp.AddPerFrameUpdateTarget(this);
					}
				}
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
		if ((e.Button & 0x100000) != 0 && mbActive)
		{
			mbActive = false;
			bRemoveTool = true;
			if (mPond != null)
			{
				mPond.Dispose();
				mPond = null;
			}
		}
		mApp.RemovePerFrameUpdateTarget(this);
		return true;
	}

	public void DoPerFrameUpdate(float elapsedMilliSecs)
	{
		if (mbActive && mPond != null)
		{
			float waterLevel = mPond.GetWaterLevel();
			bool flag = InDeletionMode();
			waterLevel = ((!flag) ? (waterLevel + elapsedMilliSecs * 0.0001f) : (waterLevel - elapsedMilliSecs * 0.0001f));
			bool bPondVanished = false;
			mPond.SetWaterLevel(mSeedVertX, mSeedVertZ, waterLevel, ref bPondVanished);
			if (flag && bPondVanished)
			{
				mWorld.RemovePond(mPond);
				mPond.Shutdown();
				mPond.Dispose();
				mPond = null;
				mApp.RemovePerFrameUpdateTarget(this);
			}
		}
	}

	private bool InDeletionMode()
	{
		//IL_0000: Unknown result type (might be due to invalid IL or missing references)
		//IL_000a: Invalid comparison between Unknown and I4
		return (int)Control.ModifierKeys == 131072;
	}
}
