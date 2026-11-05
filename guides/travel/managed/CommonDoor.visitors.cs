// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Abstracts.CommonDoor selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	public enum tLock : uint
	{
		Nobody,
		SelectedActor,
		SelectedHousehold,
		Anybody,
		Pets,
		OwnerList,
		VIPRoom
	}

	private tLock mLockType = tLock.Anybody;

	private SimDescription mLockOwner;

	private List<ulong> mOwnerList = new List<ulong>();

	private int mOneWayDestinationRoomId = 36863;

	private bool CanServiceIgnoreLock(ServiceType serviceType)
	{
		if (serviceType != ServiceType.Firefighter && serviceType != ServiceType.GrimReaper && serviceType != ServiceType.Police && serviceType != ServiceType.SocialWorkerChildProtection && serviceType != ServiceType.Burglar)
		{
			return serviceType == ServiceType.Repoman;
		}
		return true;
	}

	public bool IsAllowedThrough(Sim actor)
	{
		int[] roomConnections = GetRoomConnections();
		PortalRestriction portalRestriction = IsAllowedThrough(roomConnections[0], roomConnections[1], actor) | IsAllowedThrough(roomConnections[1], roomConnections[0], actor);
		return (portalRestriction & PortalRestriction.DoorRestriction) != PortalRestriction.DoorRestriction;
	}

	public virtual PortalRestriction IsAllowedThrough(int srcRoomId, int destRoomId, Sim actor)
	{
		Lot lotCurrent = LotCurrent;
		if (lotCurrent.IsRoomHidden(srcRoomId) || lotCurrent.IsRoomHidden(destRoomId))
		{
			return PortalRestriction.DoorRestriction;
		}
		if (actor.Service != null && CanServiceIgnoreLock(actor.Service.ServiceType))
		{
			return PortalRestriction.None;
		}
		if (actor.IsStray && !actor.IsGreetedOnLot(lotCurrent))
		{
			return PortalRestriction.DoorRestriction;
		}
		if (mOneWayDestinationRoomId != 36863 && destRoomId != mOneWayDestinationRoomId)
		{
			return PortalRestriction.DoorRestriction;
		}
		bool flag = this is IBarnDoor;
		if (actor.IsHorse && !flag && ((!(this is GateDouble) && !(this is IElectronicGate)) || !CanLargeAnimalUse))
		{
			return PortalRestriction.DoorRestriction;
		}
		bool flag2 = (flag || actor.IsPet) && LotCurrent.IsFireOnLot();
		if (!actor.FlagIsSet(Sim.SimFlags.IgnoreDoorLocks) && !flag2)
		{
			switch (mLockType)
			{
			case tLock.Anybody:
				return PortalRestriction.None;
			case tLock.Nobody:
				return PortalRestriction.DoorRestriction;
			case tLock.SelectedActor:
				if (actor.SimDescription != mLockOwner)
				{
					return PortalRestriction.DoorRestriction;
				}
				break;
			case tLock.SelectedHousehold:
				if (actor.SimDescription.Household != mLockOwner.Household)
				{
					return PortalRestriction.DoorRestriction;
				}
				break;
			case tLock.VIPRoom:
			{
				if (LotCurrent.CommercialLotSubType != CommercialLotSubType.kEP10_Resort || ResortManager.IsResortWorker(actor) || actor.SimDescription.IsBonehilda)
				{
					break;
				}
				ResortManager resortManager = LotCurrent.ResortManager;
				if (mLockOwner != null)
				{
					if (mLockOwner == actor.SimDescription)
					{
						return PortalRestriction.None;
					}
					if (resortManager != null)
					{
						ResortManager.VIPRoomData vIPRoomData = resortManager.FindVIPRoomDataBySimId(mLockOwner.SimDescriptionId);
						if (vIPRoomData != null && vIPRoomData.IsGuest(actor.SimDescription.SimDescriptionId))
						{
							return PortalRestriction.None;
						}
					}
				}
				if (resortManager.Closed && LotCurrent.IsControllable)
				{
					return PortalRestriction.None;
				}
				return PortalRestriction.DoorRestriction;
			}
			case tLock.Pets:
				if (actor.SimDescription.IsPet)
				{
					return PortalRestriction.DoorRestriction;
				}
				break;
			case tLock.OwnerList:
				if (!mOwnerList.Contains(actor.SimDescription.SimDescriptionId))
				{
					return PortalRestriction.DoorRestriction;
				}
				break;
			}
		}
		return PortalRestriction.None;
	}

	protected void OnPortalRestrictionChanged()
	{
		if (LotCurrent != null)
		{
			LotCurrent.RefreshObjectCacheUsers();
		}
	}

	public void SetLockType(tLock lockType)
	{
		SetLockTypeAndOwner(lockType, null);
	}

	public void SetLockTypeAndOwner(tLock lockType, SimDescription lockOwner)
	{
		SetLockTypeAndOwner(lockType, lockOwner, 36863);
	}

	public void SetLockTypeOwnerList(List<SimDescription> ownerList)
	{
		SetLockType(tLock.OwnerList);
		mOwnerList.Clear();
		foreach (SimDescription owner in ownerList)
		{
			mOwnerList.Add(owner.SimDescriptionId);
		}
		SetHouseholdCallback();
	}

	public void SetLockTypeAndOwner(tLock lockType, SimDescription lockOwner, int oneWayDestinationRoomId)
	{
		tLock previousLockType = mLockType;
		mLockType = lockType;
		mLockOwner = lockOwner;
		mOneWayDestinationRoomId = oneWayDestinationRoomId;
		OnPortalRestrictionChanged();
		OnLockChanged(previousLockType);
	}
