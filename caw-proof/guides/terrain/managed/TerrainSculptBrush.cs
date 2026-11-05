using Sims3.CSHost;
using Sims3.Math;

namespace WorldBuilderCS;

public class TerrainSculptBrush : TerrainBrushBase
{
	private HeightMapBrushParameters mSculptBrushParams;

	private HeightMapUpdateRect mUpdateRect;

	private float mTerrainHeight;

	private SculptingBrushCmd mSculptingBrushCmd;

	public TerrainSculptBrush(PaintTerrainTool curTool)
		: base(curTool)
	{
		mUpdateRect.mBottom = (mUpdateRect.mLeft = (mUpdateRect.mRight = (mUpdateRect.mTop = 0)));
	}

	public TerrainSculptBrush(PaintTerrainTool curTool, float terrainHeight)
		: base(curTool)
	{
		mUpdateRect.mBottom = (mUpdateRect.mLeft = (mUpdateRect.mRight = (mUpdateRect.mTop = 0)));
		mTerrainHeight = terrainHeight;
	}

	public override bool BeginApply(Vector2 posXZ, Vector2 mousePt, TerrainBrushesManager.Brush brush)
	{
		TerrainBrushForm toolForm = mTool.ToolForm;
		if (toolForm == null)
		{
			return false;
		}
		int modifierId = 0;
		if (!toolForm.GetSelectedSculptingModifier(ref modifierId))
		{
			return false;
		}
		if (!base.BeginApply(posXZ, mousePt, brush))
		{
			return false;
		}
		mUpdateRect.mLeft = int.MaxValue;
		mUpdateRect.mTop = int.MaxValue;
		mUpdateRect.mRight = int.MinValue;
		mUpdateRect.mBottom = int.MinValue;
		mSculptBrushParams.mHeightAtFirstClickPoint = CurTool.CurWorld.GetTerrainHeight(posXZ.x, posXZ.y);
		mSculptBrushParams.mCurPt.Set(posXZ.x, posXZ.y);
		mSculptBrushParams.mLastPt = mSculptBrushParams.mCurPt;
		mSculptBrushParams.mBrushID = (uint)modifierId;
		mSculptBrushParams.mStrengthMultiplier = (float)brush.opacity / 100f;
		mSculptBrushParams.mWidthMultiplier = (float)brush.size * 2f;
		mSculptBrushParams.mFallOff = (float)brush.fallOff / 100f;
		mSculptBrushParams.mShape = (uint)brush.shape;
		mSculptingBrushCmd = new SculptingBrushCmd(CurTool.CurWorldTerrain, mUpdateRect, bUpdateObjectsYPos: false);
		ApplyBrushAndUpdate();
		mSculptingBrushCmd.SetDirtyRectForSea(mUpdateRect);
		return true;
	}

	public override void FinishApply()
	{
		base.FinishApply();
		if (mSculptingBrushCmd != null)
		{
			WorldBuilderMainForm.Instance.SubmitUndoCommand(mSculptingBrushCmd);
		}
	}

	public override void Apply(Vector2 posXZ)
	{
		mSculptBrushParams.mLastPt = mSculptBrushParams.mCurPt;
		mSculptBrushParams.mCurPt = posXZ;
		ApplyBrushAndUpdate();
	}

	private void ApplyBrushAndUpdate()
	{
		WorldTerrain.ReadTerrainEditIniIfModified();
		mTool.CurWorldTerrain.ApplyBrush(ref mSculptBrushParams);
		if (mSculptBrushParams.mUpdateRect.mLeft <= mSculptBrushParams.mUpdateRect.mRight && mSculptBrushParams.mUpdateRect.mTop <= mSculptBrushParams.mUpdateRect.mBottom)
		{
			if (mSculptBrushParams.mUpdateRect.mLeft < mUpdateRect.mLeft)
			{
				mUpdateRect.mLeft = mSculptBrushParams.mUpdateRect.mLeft;
			}
			if (mSculptBrushParams.mUpdateRect.mTop < mUpdateRect.mTop)
			{
				mUpdateRect.mTop = mSculptBrushParams.mUpdateRect.mTop;
			}
			if (mSculptBrushParams.mUpdateRect.mRight > mUpdateRect.mRight)
			{
				mUpdateRect.mRight = mSculptBrushParams.mUpdateRect.mRight;
			}
			if (mSculptBrushParams.mUpdateRect.mBottom > mUpdateRect.mBottom)
			{
				mUpdateRect.mBottom = mSculptBrushParams.mUpdateRect.mBottom;
			}
		}
	}
}
