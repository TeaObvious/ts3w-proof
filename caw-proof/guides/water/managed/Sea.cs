using Sims3.RevisionControl;
using ToolUtil.RevisionControl;
using WorldBuilderCS.Localization;

namespace Sims3.CSHost;

public class Sea : RevisionControlObject
{
	private World mWorld;

	private SeaWrap mWrapObj;

	public Sea(SeaWrap wrapObj, World worldObj)
	{
		mWorld = worldObj;
		mWrapObj = wrapObj;
	}

	public void SetSeaLevel(float level)
	{
		if (mWrapObj != null && TryEdit())
		{
			mWrapObj.SetSeaLevel(level);
		}
	}

	public float GetSeaLevel()
	{
		if (mWrapObj != null)
		{
			return mWrapObj.GetSeaLevel();
		}
		return float.NaN;
	}

	public void BeginEditMode()
	{
		if (mWrapObj != null && TryEdit())
		{
			mWrapObj.BeginEditMode();
		}
	}

	public void EndEditMode(bool bWholeWorldUpdated, int updateRectLeft, int updateRectTop, int updateRectRight, int updateRectBottom)
	{
		if (mWrapObj != null)
		{
			mWrapObj.EndEditMode(bWholeWorldUpdated, updateRectLeft, updateRectTop, updateRectRight, updateRectBottom);
		}
	}

	public void RebuildWaterGeometry(int updateRectLeft, int updateRectTop, int updateRectRight, int updateRectBottom)
	{
		if (mWrapObj != null && TryEdit())
		{
			mWrapObj.RebuildWaterGeometry(updateRectLeft, updateRectTop, updateRectRight, updateRectBottom);
		}
	}

	public override void InitRCS()
	{
		throw new RCSException(null, Strings.kError_InitRCSInvalid, null);
	}

	public override void UpdateRCS()
	{
		throw new RCSException(null, Strings.kError_UpdateRCSInvalid, null);
	}

	public override bool TryEdit()
	{
		return mWorld.TryEdit();
	}
}
