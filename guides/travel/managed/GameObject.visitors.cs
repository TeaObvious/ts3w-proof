// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Abstracts.GameObject selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	[Persistable(false)]
	protected int mLevel = int.MaxValue;

	[Persistable(false)]
	private int mRoomId = -1;

	[Persistable(false)]
	protected Lot mLotCurrent;

	public int StaleRoomId => mRoomId;

	public int RoomId => mRoomId;

	public virtual bool IsOutside => World.IsPositionOutside(Position);

	public virtual bool IsInPublicResidentialRoom
	{
		get
		{
			Lot lotCurrent = LotCurrent;
			if (lotCurrent != null && lotCurrent.HasVirtualResidentialSlots)
			{
				return lotCurrent.IsRoomPublic(RoomId);
			}
			return false;
		}
	}

	public int GetRoomId(eRoomDefinition roomDef)
	{
		return World.GetRoomId(Position, roomDef);
	}

	public virtual void InternalOnSetLevel(int level)
	{
		mLevel = level;
	}

	public virtual void InternalOnSetRoomAndLevel(int roomId, int level, int previousRoomId, Lot previousLot)
	{
		Lot lotCurrent = LotCurrent;
		InternalOnSetLevel(level);
		if (previousLot != lotCurrent || previousRoomId != roomId)
		{
			if (CanBeLookedAt)
			{
				previousLot?.RemoveRoomLookAt(this, previousRoomId);
				lotCurrent?.AddRoomLookAt(this, roomId);
			}
			mRoomId = roomId;
			RoomChanged(roomId, previousRoomId, previousLot);
			UpdateCommodityInteractionMap();
		}
	}

	private void UpdateCommodityInteractionMap()
	{
		Lot lotCurrent = LotCurrent;
		if (RoomId == -1 || lotCurrent == null)
		{
			ChangeCommodityInteractionMap(null);
		}
		else
		{
			ChangeCommodityInteractionMap(lotCurrent.Map);
		}
	}
