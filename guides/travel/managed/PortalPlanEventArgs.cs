// Original PC1.67 Sims3GameplaySystems.dll; complete original type export.
using System;
using Sims3.Gameplay.Abstracts;
using Sims3.Gameplay.Actors;

namespace Sims3.Gameplay.Core;

public class PortalPlanEventArgs : EventArgs
{
	private bool mbLocked;

	private int mRoomFrom;

	private int mRoomTo;

	private Sim mActor;

	private GameObject mPortalObject;

	private Lot mLot;

	private bool mbDiscouraged;

	public Lot Lot => mLot;

	public int RoomFrom => mRoomFrom;

	public int RoomTo => mRoomTo;

	public Sim Actor => mActor;

	public GameObject PortalObject => mPortalObject;

	public bool Locked
	{
		get
		{
			return mbLocked;
		}
		set
		{
			mbLocked = value;
		}
	}

	public bool Discouraged
	{
		get
		{
			return mbDiscouraged;
		}
		set
		{
			mbDiscouraged = value;
		}
	}

	public PortalPlanEventArgs(Sim actor, GameObject portalObject, Lot lot, int roomFrom, int roomTo, bool initialLockedSetting)
	{
		mbLocked = initialLockedSetting;
		mActor = actor;
		mPortalObject = portalObject;
		mRoomFrom = roomFrom;
		mRoomTo = roomTo;
		mLot = lot;
		mbDiscouraged = false;
	}
}
