// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.CAS.Household selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	private List<Lot> mGreetedLots = new List<Lot>();

	private Dictionary<ulong, List<ObjectGuid>> mSimsGreetedOnLot = new Dictionary<ulong, List<ObjectGuid>>();

	public bool HasMemberOnLot(Lot lot)
	{
		if (lot != null)
		{
			List<Sim> allActors = AllActors;
			foreach (Sim allActor in lot.GetAllActors())
			{
				if (allActors.Contains(allActor))
				{
					return true;
				}
			}
		}
		return false;
	}

	public void AddGreetedLotToHousehold(Lot lot, ObjectGuid simBeingGreeted)
	{
		if (lot == null || lot.IsWorldLot)
		{
			return;
		}
		AddLearnRichInformation(lot, simBeingGreeted);
		if (!mGreetedLots.Contains(lot))
		{
			mGreetedLots.Add(lot);
		}
		if (simBeingGreeted != ObjectGuid.InvalidObjectGuid)
		{
			if (!mSimsGreetedOnLot.ContainsKey(lot.LotId))
			{
				mSimsGreetedOnLot.Add(lot.LotId, new List<ObjectGuid>());
			}
			if (!mSimsGreetedOnLot[lot.LotId].Contains(simBeingGreeted))
			{
				mSimsGreetedOnLot[lot.LotId].Add(simBeingGreeted);
			}
		}
	}

	private void AddLearnRichInformation(Lot lot, ObjectGuid simBeingGreeted)
	{
		bool sSuppressTNS = InformationLearnedAboutSim.sSuppressTNS;
		if (lot.Household != null)
		{
			foreach (Sim sim2 in Sims)
			{
				if (sim2.LotCurrent != lot || (IsTouristHousehold && !(sim2.ObjectId == simBeingGreeted)))
				{
					continue;
				}
				Sim sim = sim2.SocialComponent.FindSimIKnowBest(lot.Household.Sims);
				foreach (Sim sim3 in lot.Household.Sims)
				{
					InformationLearnedAboutSim.sSuppressTNS = !sim2.IsActiveSim || sim3 != sim;
					Relationship relationship = Relationship.Get(sim2, sim3, createIfNone: false);
					if (relationship != null)
					{
						relationship.InformationAbout(sim3).IsRichKnown = true;
					}
				}
			}
		}
		InformationLearnedAboutSim.sSuppressTNS = sSuppressTNS;
	}

	public void RemoveGreetedLotForHousehold(Lot lot, ObjectGuid simBeingUngreeted)
	{
		if (mGreetedLots.Remove(lot))
		{
			lot.LastDisplayedLevel = lot.CurrentLotDisplayLevel;
		}
		if (mSimsGreetedOnLot.ContainsKey(lot.LotId))
		{
			mSimsGreetedOnLot[lot.LotId].Remove(simBeingUngreeted);
			if (mSimsGreetedOnLot[lot.LotId].Count == 0)
			{
				mSimsGreetedOnLot.Remove(lot.LotId);
			}
		}
		if (!IsActive || !lot.HasVirtualResidentialSlots)
		{
			return;
		}
		Lot lot2 = ((PlumbBob.SelectedActor != null) ? PlumbBob.SelectedActor.LotHome : null);
		if (lot != lot2)
		{
			int num = (lot.DoesFoundationExistOnLot() ? 1 : 0);
			BuildableShell[] buildableShells = lot.BuildableShells;
			foreach (BuildableShell buildableShell in buildableShells)
			{
				num = Math.Min(buildableShell.Level, num);
			}
			if (LotManager.ActiveLot == lot)
			{
				lot.SetDisplayLevel(num);
			}
			lot.LastDisplayedLevel = num;
		}
	}

	public bool IsGreetedOnLot(Lot lot, ObjectGuid simToCheck)
	{
		if (lot.IsBaseCampLotType)
		{
			return true;
		}
		bool result = false;
		if (!IsServiceNpcHousehold && !IsTouristHousehold)
		{
			result = mGreetedLots.Contains(lot);
		}
		else if (simToCheck != ObjectGuid.InvalidObjectGuid && mSimsGreetedOnLot.ContainsKey(lot.LotId))
		{
			result = mSimsGreetedOnLot[lot.LotId].Contains(simToCheck);
		}
		return result;
	}
