using System;
using System.Windows.Forms;
using Sims3.CSHost;
using Sims3.Math;
using Sims3.SimIFace;
using WorldBuilderCS.Localization;

namespace WorldBuilderCS;

internal sealed class PlaceNewLotTool : WorldBuilderTool
{
	private enum LotBuildSteps
	{
		kNone,
		kStartPoint,
		kLength,
		kHeight
	}

	private sealed class LotRect
	{
		private const uint kBorderColor = 4278190335u;

		private const uint kRestrictedPlacementColor = 4294901760u;

		private uint mColor = 4278190335u;

		public Sims3.Math.Vector3[] mPoints = new Sims3.Math.Vector3[4];

		public uint mLength;

		public uint mHeight;

		public Sims3.Math.Vector3 mHeightDir = default;

		public bool CalculateHeightDir()
		{
			if (mLength != 0)
			{
				mHeightDir.Set(mPoints[0].z - mPoints[1].z, 0f, mPoints[1].x - mPoints[0].x);
				mHeightDir.Normalize();
				return true;
			}
			return false;
		}

		public bool SwapSides(uint srcSideStartIdx, uint srcSideEndIdx, uint targetSideStartIdx, uint targetSideEndIdx)
		{
			if (srcSideStartIdx >= 4 || srcSideEndIdx >= 4 || targetSideStartIdx >= 4 || targetSideEndIdx >= 4)
			{
				return false;
			}
			Sims3.Math.Vector3 vector = mPoints[srcSideStartIdx];
			ref Sims3.Math.Vector3 reference = ref mPoints[srcSideStartIdx];
			reference = mPoints[targetSideStartIdx];
			mPoints[targetSideStartIdx] = vector;
			vector = mPoints[srcSideEndIdx];
			ref Sims3.Math.Vector3 reference2 = ref mPoints[srcSideEndIdx];
			reference2 = mPoints[targetSideEndIdx];
			mPoints[targetSideEndIdx] = vector;
			return true;
		}

		public void Transpose()
		{
			Sims3.Math.Vector3 vector = mPoints[1];
			ref Sims3.Math.Vector3 reference = ref mPoints[1];
			reference = mPoints[3];
			mPoints[3] = vector;
			uint num = mLength;
			mLength = mHeight;
			mHeight = num;
			CalculateHeightDir();
		}

		public void UpdateOuterLimitBorder(Sims3.CSHost.World curWorld)
		{
			mColor = (curWorld.IsValidLotLocation(ref mPoints) ? 4278190335u : 4294901760u);
		}

		public void Draw(bool bFullRect)
		{
			if (mLength != 0)
			{
				Sims3.Math.Matrix44 transform = Sims3.Math.Matrix44.gIdentity;
				GraphicsUtil.DrawClampedLine(ref mPoints[0], ref mPoints[1], ref transform, mColor);
				if (bFullRect && mHeight != 0)
				{
					GraphicsUtil.DrawClampedLine(ref mPoints[1], ref mPoints[2], ref transform, mColor);
					GraphicsUtil.DrawClampedLine(ref mPoints[2], ref mPoints[3], ref transform, mColor);
					GraphicsUtil.DrawClampedLine(ref mPoints[3], ref mPoints[0], ref transform, mColor);
				}
			}
		}
	}

	private static uint sMaxLotSize = Lot.GetMaxSize();

	private WorldBuilderMainForm mMainForm;

	private Sims3.CSHost.World mWorld;

	private bool mbActive;

	private LotBuildSteps mBuildSteps;

	private LotRect mPendingLotRect = new LotRect();

	private Sims3.Math.Vector3 mMouseHitPoint = default;

	public PlaceNewLotTool(WorldBuilderMainForm mainForm)
	{
		mMainForm = mainForm;
		mWorld = mMainForm.GetCurrentWorld();
	}

	public override eToolID GetID()
	{
		return eToolID.kToolPlaceNewLot;
	}

	public override string GetStatusInfo()
	{
		return Strings.kNewLotTool_StatusString;
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
			if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit, bTryPickWater: true))
			{
				mMainForm.SnapToGridPosition(ref rayHit.mPoint, bAboveWater: true);
				mPendingLotRect = new LotRect();
				ref Sims3.Math.Vector3 reference = ref mPendingLotRect.mPoints[0];
				reference = rayHit.mPoint;
				ref Sims3.Math.Vector3 reference2 = ref mPendingLotRect.mPoints[1];
				reference2 = rayHit.mPoint;
				mMouseHitPoint = rayHit.mPoint;
				mbActive = true;
				mBuildSteps = LotBuildSteps.kStartPoint;
			}
		}
		return true;
	}

	public override bool MouseUp(object sender, MouseEventArgs e, ref bool bRemoveTool)
	{
		//IL_000a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0303: Unknown result type (might be due to invalid IL or missing references)
		//IL_0309: Invalid comparison between Unknown and I4
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if ((e.Button & 0x100000) == 0 || !mbActive)
		{
			return false;
		}
		if (!mMainForm.IsObjectManagerAvailableForLot())
		{
			RemoveActiveStatus();
			return true;
		}
		switch (mBuildSteps)
		{
		case LotBuildSteps.kStartPoint:
			mBuildSteps = LotBuildSteps.kLength;
			break;
		case LotBuildSteps.kLength:
			UpdatePendingLotRect(e);
			if (mPendingLotRect.CalculateHeightDir())
			{
				mBuildSteps = LotBuildSteps.kHeight;
			}
			else
			{
				RemoveActiveStatus();
			}
			break;
		case LotBuildSteps.kHeight:
			if (!mWorld.IsValidLotLocation(ref mPendingLotRect.mPoints))
			{
				break;
			}
			if (mPendingLotRect.mLength != 0 && mPendingLotRect.mHeight != 0)
			{
				Sims3.Math.Vector3 vector = new Sims3.Math.Vector3(1f, 0f, 0f);
				Sims3.Math.Vector3 b = new Sims3.Math.Vector3(0f, 0f, 1f);
				Sims3.Math.Vector3 a = mPendingLotRect.mPoints[1] - mPendingLotRect.mPoints[0];
				if ((int)(Sims3.Math.Vector3.DotProduct(a, vector) * 1000f) == 0)
				{
					mPendingLotRect.Transpose();
				}
				a = mPendingLotRect.mPoints[1] - mPendingLotRect.mPoints[0];
				if ((int)(Sims3.Math.Vector3.DotProduct(a, vector) * 1000f) < 0)
				{
					mPendingLotRect.SwapSides(0u, 3u, 1u, 2u);
				}
				a = mPendingLotRect.mPoints[3] - mPendingLotRect.mPoints[0];
				if ((int)(Sims3.Math.Vector3.DotProduct(a, b) * 1000f) < 0)
				{
					mPendingLotRect.SwapSides(0u, 1u, 3u, 2u);
				}
				tNewLotDescription lotDesc = default;
				lotDesc.mPosition = mPendingLotRect.mPoints[0];
				lotDesc.mPosition.y = mWorld.GetTerrainHeight(lotDesc.mPosition.x, lotDesc.mPosition.z);
				lotDesc.mWidth = mPendingLotRect.mLength;
				lotDesc.mHeight = mPendingLotRect.mHeight;
				lotDesc.mAdditionalPropertyValue = 0f;
				lotDesc.mBeautifulVistaBuf = 50f;
				lotDesc.mLotSubtype = 0u;
				a = mPendingLotRect.mPoints[1] - mPendingLotRect.mPoints[0];
				a.y = 0f;
				a.Normalize();
				lotDesc.mRotation = Sims3.Math.Vector3.ComputeAngle(a, vector);
				if ((int)(Sims3.Math.Vector3.DotProduct(a, b) * 1000f) >= 0)
				{
					lotDesc.mRotation = 0f - lotDesc.mRotation;
				}
				NewLotInfoDialog newLotInfoDialog = new NewLotInfoDialog();
				if ((int)((Form)newLotInfoDialog).ShowDialog() == 1)
				{
					lotDesc.mLotType = newLotInfoDialog.LotType;
					lotDesc.mAdditionalPropertyValue = newLotInfoDialog.LotAdditionalPropertyValue;
					lotDesc.mBeautifulVistaBuf = newLotInfoDialog.BeautifulVistaBuf;
					lotDesc.mLotSubtype = newLotInfoDialog.LotSubType;
				}
				mMainForm.SubmitUndoCommand(new CmdPlaceNewLot(mWorld, lotDesc, groupWithPreviousCommand: false));
			}
			RemoveActiveStatus();
			break;
		}
		return true;
	}

	public override bool MouseMove(object sender, MouseEventArgs e)
	{
		if (!WorldBuilderTool.sbEnabled)
		{
			return false;
		}
		if (mbActive)
		{
			UpdatePendingLotRect(e);
		}
		return true;
	}

	public override void Draw()
	{
		if (mbActive)
		{
			switch (mBuildSteps)
			{
			case LotBuildSteps.kLength:
				mPendingLotRect.Draw(bFullRect: false);
				break;
			case LotBuildSteps.kHeight:
				mPendingLotRect.Draw(bFullRect: true);
				break;
			}
		}
	}

	private void RemoveActiveStatus()
	{
		mbActive = false;
		mBuildSteps = LotBuildSteps.kNone;
		mMainForm.UpdatableStatusInfo = string.Empty;
	}

	private bool UpdatePendingLotRect(MouseEventArgs e)
	{
		RayCastHit rayHit = default;
		if (Sims3.CSHost.World.Pick(e.X, e.Y, CollisionLayer.Ground, ref rayHit, bTryPickWater: true))
		{
			mMouseHitPoint = rayHit.mPoint;
		}
		Sims3.Math.Vector3 a = default;
		switch (mBuildSteps)
		{
		case LotBuildSteps.kLength:
		{
			mMainForm.SnapToGridPosition(ref mMouseHitPoint, bAboveWater: true);
			a.Set(mMouseHitPoint.x - mPendingLotRect.mPoints[0].x, 0f, mMouseHitPoint.z - mPendingLotRect.mPoints[0].z);
			uint num3 = Math.Min((uint)(a.Length() + 0.5f), sMaxLotSize);
			a.Normalize();
			a *= (float)num3;
			float x = a.x + mPendingLotRect.mPoints[0].x;
			float z = a.z + mPendingLotRect.mPoints[0].z;
			float terrainHeight3 = GetTerrainHeight(x, z, bAboveWater: true);
			if (terrainHeight3 == float.NaN)
			{
				return false;
			}
			mPendingLotRect.mPoints[1].Set(x, terrainHeight3, z);
			mPendingLotRect.mLength = num3;
			break;
		}
		case LotBuildSteps.kHeight:
		{
			a.Set(mMouseHitPoint.x - mPendingLotRect.mPoints[0].x, 0f, mMouseHitPoint.z - mPendingLotRect.mPoints[0].z);
			float num = Sims3.Math.Vector3.DotProduct(a, mPendingLotRect.mHeightDir);
			int num2 = 0;
			num2 = ((!(num >= 0f)) ? Math.Max((int)(num - 0.5f), (int)(0 - sMaxLotSize)) : Math.Min((int)(num + 0.5f), (int)sMaxLotSize));
			mPendingLotRect.mHeight = (uint)Math.Abs(num2);
			if (mPendingLotRect.mHeight != 0)
			{
				Sims3.Math.Vector3 vector = mPendingLotRect.mHeightDir * num2;
				Sims3.Math.Vector3 vector2 = mPendingLotRect.mPoints[1] + vector;
				Sims3.Math.Vector3 vector3 = mPendingLotRect.mPoints[0] + vector;
				float terrainHeight = GetTerrainHeight(vector2.x, vector2.z, bAboveWater: true);
				float terrainHeight2 = GetTerrainHeight(vector3.x, vector3.z, bAboveWater: true);
				if (terrainHeight == float.NaN || terrainHeight2 == float.NaN)
				{
					return false;
				}
				mPendingLotRect.mPoints[2].Set(vector2.x, terrainHeight, vector2.z);
				mPendingLotRect.mPoints[3].Set(vector3.x, terrainHeight2, vector3.z);
			}
			else
			{
				ref Sims3.Math.Vector3 reference = ref mPendingLotRect.mPoints[2];
				reference = mPendingLotRect.mPoints[1];
				ref Sims3.Math.Vector3 reference2 = ref mPendingLotRect.mPoints[3];
				reference2 = mPendingLotRect.mPoints[0];
			}
			mPendingLotRect.UpdateOuterLimitBorder(mWorld);
			break;
		}
		}
		mMainForm.UpdatableStatusInfo = string.Format("x:{0:0.00} y:{1:0.00} z:{2:0.00}; {3}x{4}", new object[5]
		{
			mPendingLotRect.mPoints[0].x,
			mPendingLotRect.mPoints[0].y,
			mPendingLotRect.mPoints[0].z,
			mPendingLotRect.mLength,
			mPendingLotRect.mHeight
		});
		return true;
	}

	private float GetTerrainHeight(float x, float z, bool bAboveWater)
	{
		if (bAboveWater)
		{
			return mWorld.GetTerrainHeightAboveWater(x, z);
		}
		return mWorld.GetTerrainHeight(x, z);
	}
}
