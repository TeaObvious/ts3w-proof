// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Actors.Sim selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	[Persistable(false)]
	private Dictionary<ulong, Pair<int, Dictionary<int, bool>>> mAllowedRooms;

	public bool IsOnAGreetedLot
	{
		get
		{
			if (Household == null)
			{
				return false;
			}
			return Household.IsGreetedOnLot(LotCurrent, ObjectId);
		}
	}

	public bool IsGreetedOnLot(Lot lotToCheck)
	{
		if (lotToCheck == null)
		{
			return false;
		}
		if (Household == null)
		{
			return false;
		}
		if (lotToCheck.CanSimTreatAsHome(this))
		{
			return true;
		}
		return Household.IsGreetedOnLot(lotToCheck, ObjectId);
	}

	public void GreetSimOnLot(Lot lotToBeGreetedOn)
	{
		if (lotToBeGreetedOn != null && Household != null)
		{
			Household.AddGreetedLotToHousehold(lotToBeGreetedOn, ObjectId);
			RecalculateAllowedRooms();
			if (lotToBeGreetedOn.HasVirtualResidentialSlots && Sims3.UI.Responder.Instance.HudModel is HudModel hudModel)
			{
				hudModel.OnLotLevelInfoChange(null, new World.LotLevelInfoChangeEventArgs(lotToBeGreetedOn.LotId));
			}
		}
	}

	public void RemoveSimGreetedOnLot(Lot lotToBeGreetedOn)
	{
		if (lotToBeGreetedOn != null && Household != null)
		{
			Household.RemoveGreetedLotForHousehold(lotToBeGreetedOn, ObjectId);
		}
	}

	public void GreetSimOnMyLotIfPossible(Sim simToGreet)
	{
		Lot lotCurrent = LotCurrent;
		if (simToGreet != null && lotCurrent != null && lotCurrent == LotHome && simToGreet.LotHome != LotHome && !simToGreet.IsGreetedOnLot(lotCurrent))
		{
			simToGreet.GreetSimOnLot(lotCurrent);
		}
	}

	private void RemoveGreetedLotForSim(Lot oldLot, bool ungreetIfOutside)
	{
		Household household = mSimDescription.Household;
		if (household == null)
		{
			return;
		}
		bool flag = false;
		foreach (Sim allActor in oldLot.GetAllActors())
		{
			if (allActor != this && allActor.Household == household && (ungreetIfOutside || !allActor.IsOutside))
			{
				flag = true;
				break;
			}
		}
		if (flag)
		{
			return;
		}
		foreach (Sim allActor2 in household.AllActors)
		{
			household.RemoveGreetedLotForHousehold(oldLot, allActor2.ObjectId);
		}
	}

	public override void LotChanged(Lot previousLot, int previousLevel, int previousRoomId)
	{
		base.LotChanged(previousLot, previousLevel, previousRoomId);
		if (!GameStates.IsGameShuttingDown)
		{
			if (mLotCurrent != null && mLotCurrent != LotHome && mLotCurrent.Household != null)
			{
				VisitSituation.Create(this, mLotCurrent);
			}
			FailedFlirtsOnLot = 0;
		}
		ActivateSetObjectBonusesOnMovement(SetObjectHelper.LocationType.Lot, previousRoomId, previousLot);
		if (IsScenarioForSetObjectWorklotBonus(LotCurrent))
		{
			ActivateDeactivateSetObjectHomelotWorkBonus(SetObjectHelper.AddRemove.Add);
		}
		if (IsScenarioForSetObjectWorklotBonus(previousLot))
		{
			ActivateDeactivateSetObjectHomelotWorkBonus(SetObjectHelper.AddRemove.Remove);
		}
		if (previousLot != null && previousLot.IsHouseboatLot())
		{
			Houseboat houseboat = previousLot.GetHouseboat();
			if (houseboat != null)
			{
				Seasickness.RemoveSeasicknessAlarm(houseboat, this);
			}
		}
		if (mLotCurrent != null && mLotCurrent.IsHouseboatLot())
		{
			Houseboat houseboat2 = mLotCurrent.GetHouseboat();
			if (houseboat2 != null && houseboat2.CurrentStatus != Houseboat.Status.Docked)
			{
				Seasickness.AddSeasicknessAlarm(houseboat2, this);
			}
		}
	}

	protected override void RoomChanged(int roomId, int previousRoomId, Lot previousLot)
	{
		base.RoomChanged(roomId, previousRoomId, previousLot);
		bool flag = LotCurrent != previousLot;
		if ((previousRoomId == 0 && roomId != 0) || (previousRoomId != 0 && roomId == 0))
		{
			EventTracker.SendEvent(EventTypeId.kChangedInsideOutsideStatus, this);
			mWhenArrivedInsideOrOutside = SimClock.ElapsedTime(TimeUnit.Minutes);
		}
		UpdateEnvironment = true;
		Lot lot = (flag ? previousLot : LotCurrent);
		if (previousLot != null)
		{
			LightGameObject.AutoLightsOff(this, lot, previousRoomId);
		}
		LightGameObject.AutoLightsOn(this);
		if (GameStates.IsInWorld())
		{
			if (GlobalFunctions.IsInside(Position.x, Position.y, Position.z, 0f) && Level >= 0 && !LotCurrent.IsResidentialOwnedBy(this) && LotCurrent.IsResidentialLot && !IsOnAGreetedLot && !IsInPublicResidentialRoom)
			{
				GreetSimOnLot(LotCurrent);
			}
			if (Household == Household.ActiveHousehold)
			{
				if (IsHorse)
				{
					Tutorialette.TriggerLesson(Lessons.HorseCare, this);
				}
				else if (IsCat || IsADogSpecies)
				{
					Tutorialette.TriggerLesson(Lessons.DogCatCare, this);
				}
			}
		}
		EventTracker.SendEvent(EventTypeId.kRoomChanged, this);
		if (LotCurrent.LotId != ulong.MaxValue)
		{
			RecalculateAllowedRooms();
		}
		if (LotCurrent.TombRoomManager != null)
		{
			LotCurrent.TombRoomManager.OnSimsRoomChanged(this, previousRoomId, previousLot);
		}
		mWhenArrivedInRoom = SimClock.ElapsedTime(TimeUnit.Minutes);
		if (roomId == 0 && previousRoomId != 0 && mCheckGotFleasAlarmHandle == AlarmHandle.kInvalidHandle && IsPet && (IsADogSpecies || IsCat))
		{
			mCheckGotFleasAlarmHandle = AddAlarmRepeating(BuffGotFleasPet.PetOutsideFleaCheckTime, TimeUnit.Minutes, CheckForGettingFleas, "CheckForGettingFleas", AlarmType.AlwaysPersisted);
		}
		if (roomId != 0 && previousRoomId == 0)
		{
			Camera.sCameraFollow.RequestLevelChangeDelegate(this);
			if (mCheckGotFleasAlarmHandle != AlarmHandle.kInvalidHandle)
			{
				RemoveAlarm(mCheckGotFleasAlarmHandle);
				mCheckGotFleasAlarmHandle = AlarmHandle.kInvalidHandle;
			}
		}
		bool flag2 = previousRoomId != roomId;
		if (flag || flag2)
		{
			VenueAmbienceManager venueAmbienceManager = previousLot?.VenueAmbienceManager;
			(flag ? venueAmbienceManager : mLotCurrent.VenueAmbienceManager)?.RemoveSimFromRoom(previousRoomId);
			mLotCurrent.VenueAmbienceManager?.AddSimToRoom(this);
		}
		if (!GameStates.IsGameShuttingDown && mLotCurrent != null && !mLotCurrent.IsResidentialOwnedBy(this) && mLotCurrent.Household != null)
		{
			VisitSituation.Create(this, mLotCurrent);
		}
		bool flag3 = false;
		if (!flag && mLotCurrent.HasVirtualResidentialSlots)
		{
			flag3 = !mLotCurrent.IsRoomPublic(previousRoomId);
		}
		if (flag3 && IsInPublicResidentialRoom)
		{
			bool flag4 = false;
			Occupation occupation = Occupation;
			if (occupation != null)
			{
				Job currentJob = occupation.CurrentJob;
				if (currentJob != null && currentJob.Lot == mLotCurrent)
				{
					flag4 = true;
				}
			}
			if (!flag4)
			{
				VisitSituation.OnSimLeavingLot(this);
			}
		}
		ActivateSetObjectBonusesOnMovement(SetObjectHelper.LocationType.Room, previousRoomId, previousLot);
		if (flag2)
		{
			_ = GameStates.IsLiveState;
		}
	}

	public bool IsAllowedInRoom(int roomId)
	{
		return IsAllowedInRoom(mLotCurrent.LotId, roomId);
	}

	public bool IsAllowedInRoom(ulong lotId, int roomId)
	{
		if (lotId != mLotCurrent.LotId && !IsAllowedInRoom(0))
		{
			return false;
		}
		if (roomId == -1)
		{
			roomId = 0;
		}
		RecalculateAllowedRoomsIfNecessary(lotId, out var versionedCache);
		if (versionedCache.Second.TryGetValue(roomId, out var value))
		{
			return value;
		}
		return false;
	}

	public IEnumerable<int> GetAllowedRooms(ulong lotId)
	{
		RecalculateAllowedRoomsIfNecessary(lotId, out var versionedCache);
		List<int> list = new List<int>();
		foreach (KeyValuePair<int, bool> item in versionedCache.Second)
		{
			if (item.Value)
			{
				list.Add(item.Key);
			}
		}
		return list;
	}

	private void RecalculateAllowedRoomsIfNecessary(ulong lotId, out Pair<int, Dictionary<int, bool>> versionedCache)
	{
		Lot lot = LotManager.GetLot(lotId);
		if (mAllowedRooms == null || !mAllowedRooms.TryGetValue(lotId, out versionedCache) || lot.GetObjectCacheVersion<IPortalConnectionObject>() != versionedCache.First)
		{
			RecalculateAllowedRooms(lotId, (lot == mLotCurrent) ? RoomId : 0);
		}
		versionedCache = mAllowedRooms[lotId];
	}

	public void RecalculateAllowedRooms()
	{
		RecalculateAllowedRooms(mLotCurrent.LotId, RoomId);
	}

	private void RecalculateAllowedRooms(ulong lotId, int initialRoomId)
	{
		if (mAllowedRooms == null)
		{
			mAllowedRooms = new Dictionary<ulong, Pair<int, Dictionary<int, bool>>>();
		}
		Lot lot = LotManager.GetLot(lotId);
		if (lot == null)
		{
			return;
		}
		Dictionary<int, bool> dictionary = new Dictionary<int, bool>();
		mAllowedRooms[lotId] = new Pair<int, Dictionary<int, bool>>(lot.GetObjectCacheVersion<IPortalConnectionObject>(), dictionary);
		Queue<Pair<int, bool>> queue = new Queue<Pair<int, bool>>();
		Dictionary<IPortalConnectionObject, bool> dictionary2 = new Dictionary<IPortalConnectionObject, bool>();
		queue.Enqueue(new Pair<int, bool>(initialRoomId, b: true));
		while (queue.Count != 0)
		{
			int first = queue.Peek().First;
			bool second = queue.Dequeue().Second;
			bool flag = lot.IsRoomRestricted(first, this);
			if (second || !dictionary.ContainsKey(first))
			{
				dictionary[first] = second && !flag;
			}
			if (flag)
			{
				continue;
			}
			foreach (IPortalConnectionObject item in lot.GetObjectsInRoom<IPortalConnectionObject>(first))
			{
				if (dictionary2.ContainsKey(item))
				{
					continue;
				}
				if (item is ElevatorInterior)
				{
					int[] roomConnections = item.GetRoomConnections();
					foreach (int num in roomConnections)
					{
						if (num != 36863)
						{
							bool b = second;
							if (item.IsAllowedThrough(first, num, this) == PortalRestriction.None)
							{
								queue.Enqueue(new Pair<int, bool>(num, b));
							}
						}
					}
				}
				else
				{
					int adjoiningRoom = item.GetAdjoiningRoom(first);
					if (adjoiningRoom != 36863)
					{
						bool b2 = second;
						if (item.IsAllowedThrough(first, adjoiningRoom, this) == PortalRestriction.None)
						{
							queue.Enqueue(new Pair<int, bool>(adjoiningRoom, b2));
						}
					}
				}
				dictionary2[item] = true;
			}
		}
	}

	public static void OnPortalPathPlan(PortalPlanEventArgs args)
	{
		if (args.Actor != null)
		{
			if (args.Actor.SimDescription.IsTombMummy)
			{
				args.Locked = true;
			}
			if (args.Actor.SimDescription.AssignedRole is Proprietor && args.PortalObject.LotCurrent == args.Actor.SimDescription.AssignedRole.RoleGivingObject.LotCurrent)
			{
				args.Locked = false;
			}
			if (args.PortalObject is Door door && (args.Locked || door.IsAllowedThrough(args.RoomFrom, args.RoomTo, args.Actor) == PortalRestriction.DoorRestriction))
			{
				args.Locked = true;
				args.Actor.SimRoutingComponent.LockedDoorsDuringPlan.Add(door);
			}
			if (args.PortalObject is FirefighterPole firefighterPole && firefighterPole.IsAllowedThrough(args.RoomFrom, args.RoomTo, args.Actor) == PortalRestriction.DoorRestriction)
			{
				args.Locked = true;
			}
			if (args.PortalObject is IBoxStall boxStall && !boxStall.IsAllowedThrough(args.Actor))
			{
				args.Locked = true;
			}
			if (args.PortalObject is IHorseJump horseJump && horseJump.IsAllowedThrough(args.RoomFrom, args.RoomTo, args.Actor) == PortalRestriction.DoorRestriction)
			{
				args.Locked = true;
			}
			if (args.PortalObject is ElevatorDoors elevatorDoors && elevatorDoors.IsAllowedThrough(args.RoomFrom, args.RoomTo, args.Actor) == PortalRestriction.DoorRestriction)
			{
				args.Locked = true;
			}
			if (!args.Locked && args.PortalObject is DivingBoard)
			{
				args.Locked = args.Actor.SimDescription.ToddlerOrBelow || args.Actor.SimDescription.IsVisuallyPregnant;
			}
			if (args.PortalObject is Ladder ladder && ladder.DiscourageSimFromUsing(args.Actor))
			{
				args.Discouraged = true;
			}
		}
	}

	public override void InternalOnSetRoomAndLevel(int roomId, int level, int previousRoomId, Lot previousLot)
	{
		if (SimRoutingComponent != null)
		{
			SimRoutingComponent.PreUpdateDynamicFootprint();
		}
		base.InternalOnSetRoomAndLevel(roomId, level, previousRoomId, previousLot);
		if (SimRoutingComponent != null)
		{
			SimRoutingComponent.PostUpdateDynamicFootprint();
		}
	}

	public bool NeedsToBeGreeted(Sim actor)
	{
		if (Household == actor.Household && Household.RoommateManager.IsNPCRoommate(actor) == Household.RoommateManager.IsNPCRoommate(SimDescription))
		{
			return false;
		}
		GroupingSituation situationOfType = GetSituationOfType<GroupingSituation>();
		if (situationOfType != null && situationOfType.IsSimInGroup(actor))
		{
			return false;
		}
		Relationship relationship = Relationship.Get(this, actor, createIfNone: false);
		if (relationship != null)
		{
			if (relationship.WhenLastGreeted.Ticks == 0 || SimClock.ElapsedTime(TimeUnit.Hours, relationship.WhenLastGreeted) > SocialComponent.HoursBeforeGreetingWearsOff)
			{
				if (LotCurrent == actor.LotCurrent && !IsAtHome && actor.IsAtHome)
				{
					if (!IsGreetedOnLot(LotCurrent))
					{
						return true;
					}
				}
				else if (LotCurrent == actor.LotCurrent && !actor.IsAtHome && IsAtHome)
				{
					if (!actor.IsGreetedOnLot(LotCurrent))
					{
						return true;
					}
				}
				else if (relationship.LTR.CurrentLTR == LongTermRelationshipTypes.Acquaintance || relationship.LTR.CurrentLTR == LongTermRelationshipTypes.Stranger)
				{
					return true;
				}
			}
			return false;
		}
		return true;
	}
