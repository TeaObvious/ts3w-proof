// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	[Persistable]
	protected class CauseEffectServicePersistableData
	{
		public CauseEffectWorldState CurrentCauseEffectWorldState = CauseEffectWorldState.kNormalState;

		public CauseEffectWorldState PreviousCauseEffectWorldState = CauseEffectWorldState.kNormalState;

		public uint DiscoveredCauseEffectWorldStates = uint.MaxValue;

		public uint ExperiencedCauseEffectWorldStates;

		public Dictionary<ulong, uint> TriggeredCauseEffectWorldStates;

		public Dictionary<TimeStatueType, TimeStatueRecordData> CurrentStatueRecords;

		public bool IsTimeAlmanacButtonEnabled;

		public int TimesTraveledToFuture;

		public ulong TimeTravelerSimID;

		public ObjectGuid DepartureTimePortalID = ObjectGuid.InvalidObjectGuid;

		public bool WorldStateDirty;

		public CauseEffectServicePersistableData()
		{
			TriggeredCauseEffectWorldStates = new Dictionary<ulong, uint>();
			CurrentStatueRecords = new Dictionary<TimeStatueType, TimeStatueRecordData>();
			CurrentStatueRecords.Add(TimeStatueType.TimeKeeper, new TimeKeeperRecordData());
			CurrentStatueRecords.Add(TimeStatueType.ParentOfRobotics, new ParentOfRoboticsRecordData());
			CurrentStatueRecords.Add(TimeStatueType.Entertainer, new EntertainerRecordData());
			CurrentStatueRecords.Add(TimeStatueType.Philanthropist, new PhilanthropistRecordData());
			CurrentStatueRecords.Add(TimeStatueType.Trendsetter, new TrendsetterRecordData());
		}
	}

	[PersistableStatic(true)]
	private static CauseEffectServicePersistableData sPersistableData;

	public static CauseEffectWorldState CurrentFutureWorldState => sInstance.GetCurrentCauseEffectWorldState();

	public static CauseEffectWorldState PreviousFutureWorldState => sInstance.GetPreviousCauseEffectWorldState();

	private static string LocalizeString(string name, params object[] parameters)
	{
		return Localization.LocalizeString("Gameplay/TimeTravel/CauseEffect:" + name, parameters);
	}

	public CauseEffectWorldState GetCurrentCauseEffectWorldState()
	{
		return sPersistableData.CurrentCauseEffectWorldState;
	}

	public void SetCurrentCauseEffectWorldState(CauseEffectWorldState newWorldState, Sim actor)
	{
		if (sPersistableData.CurrentCauseEffectWorldState == newWorldState)
		{
			return;
		}
		sPersistableData.WorldStateDirty = true;
		sPersistableData.PreviousCauseEffectWorldState = sPersistableData.CurrentCauseEffectWorldState;
		sPersistableData.CurrentCauseEffectWorldState = newWorldState;
		sPersistableData.DiscoveredCauseEffectWorldStates |= (uint)newWorldState;
		if (actor != null)
		{
			if (sPersistableData.TriggeredCauseEffectWorldStates.TryGetValue(actor.SimDescription.SimDescriptionId, out var value))
			{
				value |= (uint)newWorldState;
				sPersistableData.TriggeredCauseEffectWorldStates[actor.SimDescription.SimDescriptionId] = value;
			}
			else
			{
				value = (uint)newWorldState;
				sPersistableData.TriggeredCauseEffectWorldStates.Add(actor.SimDescription.SimDescriptionId, value);
			}
		}
	}

	public CauseEffectWorldState GetPreviousCauseEffectWorldState()
	{
		return sPersistableData.PreviousCauseEffectWorldState;
	}

	public void PreFutureWorldLoadProcess()
	{
		CheckForTimeStatueUpdates();
		EnableTimeAlmanacButton();
	}

	public void CheckForTimeStatueUpdates()
	{
		foreach (TimeStatueRecordData value in sPersistableData.CurrentStatueRecords.Values)
		{
			value.GetCurrentRecordHolderDescription();
		}
	}

	public void PostFutureWorldLoadProcess()
	{
		sPersistableData.TimesTraveledToFuture++;
		Sim[] objects = Queries.GetObjects<Sim>();
		foreach (Sim sim in objects)
		{
			if (!sim.Household.IsFutureDescendantHousehold)
			{
				sim.GrantFutureObjects(simIsAgingUp: false);
			}
			if (sim.BuffManager != null)
			{
				sim.BuffManager.RemoveElement(BuffNames.Singed);
			}
		}
		if (sPersistableData.WorldStateDirty)
		{
			sPersistableData.WorldStateDirty = false;
			ICauseEffectSpawner[] objects2 = Queries.GetObjects<ICauseEffectSpawner>();
			foreach (ICauseEffectSpawner causeEffectSpawner in objects2)
			{
				if (sPersistableData.PreviousCauseEffectWorldState != sPersistableData.CurrentCauseEffectWorldState)
				{
					causeEffectSpawner.ClearSpawnedObjects();
					causeEffectSpawner.PopulateSpawnerWithObjects();
				}
				causeEffectSpawner.DoUpdateSpawnAlarm();
			}
			if (sPersistableData.CurrentCauseEffectWorldState == CauseEffectWorldState.kDystopiaState)
			{
				MeteorShower.InitRandomMeteorShowerTimer();
			}
			else
			{
				MeteorShower.DisposeRandomMeteorShowerTimer();
				MeteorShower.DisposeMeteorShowerRocks();
			}
			foreach (Lot allLot in LotManager.AllLots)
			{
				allLot.CleanUpForMoving();
			}
		}
		SkyVFXholder[] objects3 = Queries.GetObjects<SkyVFXholder>();
		if (objects3 != null && objects3.Length > 0)
		{
			SkyVFXholder[] array = objects3;
			foreach (SkyVFXholder skyVFXholder in array)
			{
				skyVFXholder.RemoveFromWorld();
				skyVFXholder.StopVFX();
				skyVFXholder.Destroy();
			}
		}
		IGameObject gameObject = GlobalFunctions.CreateObject("genericHelper", new Vector3(668f, 44.5f, 701f), 0, Vector3.UnitX, "Sims3.Gameplay.TimeTravel.SkyVFXholder", null);
		gameObject.SetOpacity(0f, 0f);
		gameObject.AddToWorld();
		BuildTimeStatues();
	}

	public void SetDepartureTimePortal(ObjectGuid portal)
	{
		sPersistableData.DepartureTimePortalID = portal;
	}

	public GameObject GetDepartureTimePortal()
	{
		if (GameUtils.IsFutureWorld())
		{
			return null;
		}
		if (sPersistableData == null || sPersistableData.DepartureTimePortalID == ObjectGuid.InvalidObjectGuid)
		{
			return null;
		}
		return GameObject.GetObject(sPersistableData.DepartureTimePortalID);
	}
