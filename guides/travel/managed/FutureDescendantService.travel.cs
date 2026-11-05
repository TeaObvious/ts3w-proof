// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	[Persistable]
	protected class FutureDescendantServicePersistableData
	{
		public List<FutureDescendantHouseholdInfo> ActiveDescendantHouseholdsInfo = new List<FutureDescendantHouseholdInfo>();

		public List<FutureDescendantHouseholdInfo> InvalidDescendantHouseholdsInfo = new List<FutureDescendantHouseholdInfo>();

		public Dictionary<ulong, List<FutureDescendantHouseholdInfo>> DescendantHouseholdsMap = new Dictionary<ulong, List<FutureDescendantHouseholdInfo>>();
	}

	[PersistableStatic(true)]
	private static FutureDescendantServicePersistableData sPersistableData;

	public void PostFutureWorldLoadProcess()
	{
		try
		{
			PostWorldLoadFixupOfHouseholds();
			ProcessDescendantHouseholds();
			BuildAvailableLotLists();
			foreach (SimDescription simDescription in GameStates.TravelHousehold.SimDescriptions)
			{
				RemoveDescendantMapTags(simDescription.SimDescriptionId);
			}
			List<FutureDescendantHouseholdInfo> list = new List<FutureDescendantHouseholdInfo>();
			for (int i = 0; i < sPersistableData.ActiveDescendantHouseholdsInfo.Count; i++)
			{
				bool flag = true;
				FutureDescendantHouseholdInfo household = sPersistableData.ActiveDescendantHouseholdsInfo[i];
				if (household.DoesHouseholdLotRequireUpdate())
				{
					flag = UpdateHouseholdHomeLot(ref household);
					if (!flag)
					{
						list.Add(household);
					}
				}
				if (flag)
				{
					household.UpdateHouseholdRelationship();
					household.SetupDescendantAlarm();
					FixupOccults(household);
					UpdateHouseholdMapTags(household.mAncestorsSimIds, household.DescendantHousehold);
				}
			}
			foreach (FutureDescendantHouseholdInfo item in list)
			{
				sPersistableData.ActiveDescendantHouseholdsInfo.Remove(item);
				foreach (List<FutureDescendantHouseholdInfo> value in sPersistableData.DescendantHouseholdsMap.Values)
				{
					if (value.Contains(item))
					{
						value.Remove(item);
					}
				}
				sPersistableData.InvalidDescendantHouseholdsInfo.Add(item);
			}
			CleanupdAvailableLotLists();
			RemoveInactiveDescendantHouseholds();
		}
		catch (Exception)
		{
		}
	}

	private void FixupOccults(FutureDescendantHouseholdInfo descendantHouseholdInfo)
	{
		if (descendantHouseholdInfo == null || !descendantHouseholdInfo.mFutureDescendantHouseholdInfoDirty || descendantHouseholdInfo.DescendantHousehold == null)
		{
			return;
		}
		descendantHouseholdInfo.mFutureDescendantHouseholdInfoDirty = false;
		List<SimDescription> list = new List<SimDescription>();
		List<SimDescription> list2 = new List<SimDescription>();
		List<OccultTypes> list3 = new List<OccultTypes>();
		foreach (ulong mProgenitorSimId in descendantHouseholdInfo.mProgenitorSimIds)
		{
			SimDescription simDescription = SimDescription.Find(mProgenitorSimId);
			if (simDescription == null || simDescription.OccultManager == null || !simDescription.OccultManager.HasAnyOccultType())
			{
				continue;
			}
			CASSupernaturalData supernaturalData = simDescription.SupernaturalData;
			if (supernaturalData != null)
			{
				list3.Add(supernaturalData.OccultType);
				if (simDescription.IsFemale)
				{
					list.Add(simDescription);
				}
				else
				{
					list2.Add(simDescription);
				}
			}
		}
		float chance = (float)list3.Count * 25f;
		foreach (ulong mHouseholdMember in descendantHouseholdInfo.mHouseholdMembers)
		{
			SimDescription simDescription2 = SimDescription.Find(mHouseholdMember);
			OccultTypes occultTypes = OccultTypes.None;
			if (!RandomUtil.RandomChance(chance))
			{
				continue;
			}
			occultTypes = RandomUtil.GetRandomObjectFromList(list3);
			SimDescription mom = null;
			if (list.Count > 0)
			{
				mom = RandomUtil.GetRandomObjectFromList(list);
			}
			SimDescription dad = null;
			if (list2.Count > 0)
			{
				dad = RandomUtil.GetRandomObjectFromList(list2);
			}
			if (!OccultManager.DoesOccultTransferToOffspring(occultTypes))
			{
				continue;
			}
			if (occultTypes == OccultTypes.Fairy)
			{
				simDescription2.RemoveSupernaturalData();
				simDescription2.AddSupernaturalData(OccultTypes.Fairy);
				if (simDescription2.SupernaturalData is CASFairyData cASFairyData)
				{
					Genetics.InheritWings(simDescription2, mom, dad, new Random(), out var wingcolor, out var wingshape);
					cASFairyData.WingType = wingshape;
					cASFairyData.WingColor = wingcolor;
				}
			}
			if (occultTypes != OccultTypes.None)
			{
				simDescription2.SetAlienDNAPercentage(0f);
				simDescription2.OccultManager.AddOccultType(occultTypes, addOutfit: false, isReward: false, fromRestore: false);
			}
		}
	}

	public void BuildDescendantHouseholdSpecs()
	{
		try
		{
			if (Household.ActiveHousehold == null)
			{
				return;
			}
			List<SimDescription> simDescriptions = Household.ActiveHousehold.SimDescriptions;
			foreach (SimDescription item2 in simDescriptions)
			{
				ProcessSim(item2);
			}
			foreach (SimDescription item3 in simDescriptions)
			{
				GenerateAncestorMap(item3);
			}
			foreach (FutureDescendantHouseholdInfo item4 in sPersistableData.ActiveDescendantHouseholdsInfo)
			{
				if (item4.HasAncestorFromHousehold(Household.ActiveHousehold))
				{
					item4.CalculateHouseholdScores();
				}
				else
				{
					sPersistableData.InvalidDescendantHouseholdsInfo.Add(item4);
				}
			}
			for (int i = 0; i < sPersistableData.InvalidDescendantHouseholdsInfo.Count; i++)
			{
				FutureDescendantHouseholdInfo item = sPersistableData.InvalidDescendantHouseholdsInfo[i];
				sPersistableData.ActiveDescendantHouseholdsInfo.Remove(item);
			}
		}
		catch (Exception)
		{
		}
	}

	private bool ProcessSim(SimDescription simDesc)
	{
		try
		{
			if (sPersistableData == null)
			{
				return false;
			}
			if (simDesc == null)
			{
				return false;
			}
			if (!Household.ActiveHousehold.SimDescriptions.Contains(simDesc))
			{
				return false;
			}
			if (Household.RoommateManager != null && Household.RoommateManager.IsNPCRoommate(simDesc))
			{
				return false;
			}
			if (simDesc.IsRobot)
			{
				return false;
			}
			if (simDesc.Genealogy != null)
			{
				List<Genealogy> children = simDesc.Genealogy.Children;
				bool flag = false;
				if (children != null && children.Count > 0)
				{
					foreach (Genealogy item in children)
					{
						flag |= ProcessSim(item.SimDescription);
					}
				}
				if (flag)
				{
					return true;
				}
				foreach (FutureDescendantHouseholdInfo item2 in sPersistableData.ActiveDescendantHouseholdsInfo)
				{
					if (item2.IsSimAProgenitor(simDesc.SimDescriptionId) || item2.IsSimAnAncestor(simDesc.SimDescriptionId))
					{
						return true;
					}
				}
				FutureDescendantHouseholdInfo futureDescendantHouseholdInfo = new FutureDescendantHouseholdInfo();
				futureDescendantHouseholdInfo.AddProgenitorSim(simDesc.SimDescriptionId);
				if (simDesc.Genealogy.Spouse != null)
				{
					futureDescendantHouseholdInfo.AddProgenitorSim(simDesc.Genealogy.Spouse.SimDescription.SimDescriptionId);
				}
				sPersistableData.ActiveDescendantHouseholdsInfo.Add(futureDescendantHouseholdInfo);
				return true;
			}
			return false;
		}
		catch (Exception)
		{
			return false;
		}
	}

	private void GenerateAncestorMap(SimDescription otherSimDesc)
	{
		ulong simDescriptionId = otherSimDesc.SimDescriptionId;
		if (!sPersistableData.DescendantHouseholdsMap.ContainsKey(simDescriptionId))
		{
			List<FutureDescendantHouseholdInfo> value = new List<FutureDescendantHouseholdInfo>();
			sPersistableData.DescendantHouseholdsMap.Add(otherSimDesc.SimDescriptionId, value);
		}
		foreach (FutureDescendantHouseholdInfo item in sPersistableData.ActiveDescendantHouseholdsInfo)
		{
			for (int i = 0; i < item.mProgenitorSimIds.Count; i++)
			{
				ulong num = item.mProgenitorSimIds[i];
				IMiniSimDescription iMiniSimDescription = SimDescription.GetIMiniSimDescription(num);
				if (iMiniSimDescription != null && iMiniSimDescription.CASGenealogy is Genealogy genealogy && (genealogy.IsAncestor(otherSimDesc.Genealogy) || num == simDescriptionId) && !sPersistableData.DescendantHouseholdsMap[simDescriptionId].Contains(item))
				{
					sPersistableData.DescendantHouseholdsMap[simDescriptionId].Add(item);
					item.AddAncestorSim(simDescriptionId);
				}
			}
		}
	}

	private bool ProcessDescendantHouseholds()
	{
		for (int i = 0; i < sPersistableData.ActiveDescendantHouseholdsInfo.Count; i++)
		{
			FutureDescendantHouseholdInfo futureDescendantHouseholdInfo = sPersistableData.ActiveDescendantHouseholdsInfo[i];
			Household descendantHousehold = futureDescendantHouseholdInfo.DescendantHousehold;
			if (descendantHousehold == null)
			{
				futureDescendantHouseholdInfo.Instantiate();
			}
			else
			{
				while (descendantHousehold.NumMembers > futureDescendantHouseholdInfo.mCurrentDesiredHouseholdSize)
				{
					futureDescendantHouseholdInfo.RemoveDescendant();
				}
				while (descendantHousehold.NumMembers < futureDescendantHouseholdInfo.mCurrentDesiredHouseholdSize)
				{
					futureDescendantHouseholdInfo.CreateAndAddDescendant();
				}
			}
			foreach (ulong mDirtyNameSimId in Household.mDirtyNameSimIds)
			{
				if (!futureDescendantHouseholdInfo.IsSimAProgenitor(mDirtyNameSimId))
				{
					continue;
				}
				SimDescription simDescription = SimDescription.Find(mDirtyNameSimId);
				foreach (SimDescription simDescription2 in futureDescendantHouseholdInfo.DescendantHousehold.SimDescriptions)
				{
					simDescription2.LastName = simDescription.LastName;
				}
			}
		}
		Household.ClearDirtyNameSimIDs();
		return false;
	}

	private void PostWorldLoadFixupOfHouseholds()
	{
		for (int i = 0; i < sPersistableData.ActiveDescendantHouseholdsInfo.Count; i++)
		{
			sPersistableData.ActiveDescendantHouseholdsInfo[i]?.PostWorldLoadFixUp();
		}
		for (int j = 0; j < sPersistableData.InvalidDescendantHouseholdsInfo.Count; j++)
		{
			sPersistableData.InvalidDescendantHouseholdsInfo[j]?.PostWorldLoadFixUp();
		}
	}
