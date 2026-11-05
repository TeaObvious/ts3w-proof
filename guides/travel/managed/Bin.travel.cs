// Original PC 1.67 Sims3GameplaySystems.dll; selected complete original members.
// Actual ILSpy C# rendering; omitted siblings are outside this extract. Paired IL is authoritative.
	public static void ExportHouseholdForTravel(Household household)
	{
		foreach (Sim allActor in household.AllActors)
		{
			allActor.SetObjectToReset();
		}
		Simulator.Sleep(0u);
		ulong num = DownloadContent.GenerateGUID();
		HouseholdContents householdContents = new HouseholdContents(household);
		householdContents.ContentId = num;
		if (DownloadContent.StoreHouseholdContents(householdContents, num))
		{
			DownloadContent.ExportLotContentsToTravelBin(num);
		}
	}

	public static HouseholdContents ImportHouseholdForTravel()
	{
		ulong num = DownloadContent.ImportHouseholdContentsFromTravelBin();
		if (num != 0)
		{
			HouseholdContents householdContents = new HouseholdContents();
			if (DownloadContent.ImportHouseholdContents(householdContents, num))
			{
				householdContents.ContentId = num;
				return householdContents;
			}
		}
		return null;
	}

	internal static void ImportSim(SimDescription desc, Vector3 simPos, ulong inventoryIndex)
	{
		if (desc.Weight < 0f)
		{
			desc.ChangeBodyShape(0f, desc.Fitness, 0f - desc.Weight);
		}
		else
		{
			desc.ChangeBodyShape(desc.Weight, desc.Fitness, 0f);
		}
		desc.PushAgingEnabledToAgingManager();
		OutfitCategories category = OutfitCategories.Everyday;
		if (desc.TraitManager.HasElement(TraitNames.Insane))
		{
			category = OutfitCategories.Sleepwear;
		}
		SimOutfit outfit = desc.GetOutfit(category, 0);
		Sim sim = desc.CreatedSim;
		if (sim == null)
		{
			sim = desc.Instantiate(simPos, outfit.Key, addInitialObjects: false);
		}
		ImportInventory(inventoryIndex, sim.Inventory);
		sim.GrantSpecialObjects(bForce: false, simIsAgingUp: false);
	}

	internal static void ImportHouseholdInventories(HouseholdContents contents, Household household, uint fridgeIdx)
	{
		ImportHouseholdInventories(contents, household, fridgeIdx, bImportFridgeInventory: true);
	}

	internal static void ImportHouseholdInventories(HouseholdContents contents, Household household, uint fridgeIdx, bool bImportFridgeInventory)
	{
		if (fridgeIdx < contents.Inventories.Length)
		{
			if (bImportFridgeInventory)
			{
				ulong inventoryIndex = contents.Inventories[fridgeIdx];
				ImportInventory(inventoryIndex, household.SharedFridgeInventory.Inventory);
			}
			uint num = fridgeIdx + 1;
			ulong inventoryIndex2 = contents.Inventories[num];
			ImportInventory(inventoryIndex2, household.SharedFamilyInventory.Inventory);
		}
		if (GameStates.IsTravelling)
		{
			GameStates.ApplyInventoryUrnstoneMerging();
		}
	}

	private static void ImportInventory(ulong inventoryIndex, Inventory inventory)
	{
		if (inventoryIndex != 0)
		{
			if (GameStates.IsTravelling)
			{
				GameStates.AddUrnstonePendingRemovals(inventory);
				ImportInventoryInternal(inventoryIndex, inventory);
				GameStates.AddUrnstonePendingAdditions(inventory);
			}
			else
			{
				ImportInventoryInternal(inventoryIndex, inventory);
			}
		}
	}

	private static void ImportInventoryInternal(ulong inventoryIndex, Inventory inventory)
	{
		inventory.DestroyItems();
		DownloadContent.ImportInventory(inventoryIndex, inventory);
		DownloadContent.DeleteInventory(inventoryIndex);
	}
