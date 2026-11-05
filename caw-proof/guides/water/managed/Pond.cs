using System;
using Sims3.RevisionControl;
using ToolUtil.RevisionControl;
using WorldBuilderCS.Localization;

namespace Sims3.CSHost;

public class Pond : RevisionControlObject, IDisposable
{
	private World mWorld;

	private PondWrap mWrapObj;

	public PondWrap GetWrapObject()
	{
		return mWrapObj;
	}

	public Pond(PondWrap wrapObj, World worldObj)
	{
		mWorld = worldObj;
		mWrapObj = wrapObj;
	}

	public bool Init(int seedVertX, int seedVertZ, float initialWaterLevel)
	{
		if (mWrapObj != null)
		{
			return mWrapObj.Init(seedVertX, seedVertZ, initialWaterLevel);
		}
		return false;
	}

	public void Shutdown()
	{
		if (mWrapObj != null)
		{
			mWrapObj.Shutdown();
		}
	}

	public float GetWaterLevel()
	{
		if (mWrapObj != null)
		{
			return mWrapObj.GetWaterLevel();
		}
		return float.NaN;
	}

	public bool SetWaterLevel(int seedVertX, int seedVertZ, float newLevel, ref bool bPondVanished)
	{
		if (mWrapObj != null && TryEdit())
		{
			return mWrapObj.SetWaterLevel(seedVertX, seedVertZ, newLevel, ref bPondVanished);
		}
		return false;
	}

	public void Dispose()
	{
		if (mWrapObj != null)
		{
			mWrapObj.Dispose();
		}
		mWorld = null;
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
