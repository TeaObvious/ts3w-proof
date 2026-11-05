// Original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Core.LotManager selected complete members.
// Original IL is authoritative; omitted siblings are outside this evidence extract.
	public static bool RoomIdIsOutside(int roomId)
	{
		if (roomId != 0)
		{
			return roomId == -1;
		}
		return true;
	}

	public static bool RoomIdIsOutOfLot(int roomId)
	{
		return roomId == -1;
	}

	private static uint PortalLockedCallback(ulong lotId, ulong routingObjectId, ulong portalObjectId, short roomFrom, short roomTo, bool initialLockedSetting)
	{
		Lot lot = GetLot(lotId);
		if (lot == null)
		{
			return 0u;
		}
		ObjectGuid objectGuid = new ObjectGuid(routingObjectId);
		ObjectGuid objectGuid2 = new ObjectGuid(portalObjectId);
		return (uint)lot.OnPortalPathPlan(objectGuid.ObjectFromId<Sim>(), objectGuid2.ObjectFromId<GameObject>(), roomFrom, roomTo, initialLockedSetting);
	}

	public static bool DoorRoutingEventHandler(object sender, World.DoorRoutingEventArgs args)
	{
		return args.DoorObjId.ObjectFromId<Door>()?.AddRoutingEvent(args) ?? false;
	}

	public static void PreWorldLoad()
	{
		if (sLotManager == null)
		{
			sLotManager = new LotManager();
		}
		sLots = new Dictionary<ulong, Lot>();
		sEventList = new Dictionary<Type, EventDelegate>();
		sActorList.Clear();
		sWorldLot = AddLot(ulong.MaxValue, editable: false);
		ActiveLot = sWorldLot;
		sActiveLotPending = null;
		sActiveLotLocked = false;
		LoadSaveManager.ObjectGroupSaving += LoadSaveManager_ObjectGroupSaving;
		World.OnLotAddedEventHandler += OnWorldEvent;
		World.OnLotRemovedEventHandler += OnWorldEvent;
		World.OnLotTypeChangedEventHandler += OnLotTypeChanged;
		World.OnLotBoundsChangedEventHandler += OnLotBoundsChanged;
		World.OnObjectLotUpdateEventHandler += OnWorldEvent;
		World.OnObjectPendingDestructionEventHandler += OnWorldEvent;
		World.OnObjectVideoStoppedEventHandler += OnWorldEvent;
		World.OnObjectSoundMaterialUpdatedEventHandler += OnWorldEvent;
		World.HandToolAllowIntersectionCallback = (World.HandToolQueryEventHandler)Delegate.Combine(World.HandToolAllowIntersectionCallback, new World.HandToolQueryEventHandler(HandToolAllowIntersection));
		World.HandToolAllowUserPickupCallback = (World.HandToolQueryEventHandler)Delegate.Combine(World.HandToolAllowUserPickupCallback, new World.HandToolQueryEventHandler(HandToolAllowUserPickup));
		World.HandToolAllowPlacementCallback = (World.HandToolAllowPlacementEventHandler)Delegate.Combine(World.HandToolAllowPlacementCallback, new World.HandToolAllowPlacementEventHandler(HandToolAllowPlacement));
		World.HandToolAllowPlacementInSlotCallback = (World.HandToolQueryEventHandler)Delegate.Combine(World.HandToolAllowPlacementInSlotCallback, new World.HandToolQueryEventHandler(HandToolAllowPlacementInSlot));
		World.HandToolCanBeSoldCallback = (World.HandToolQueryEventHandler)Delegate.Combine(World.HandToolCanBeSoldCallback, new World.HandToolQueryEventHandler(HandToolCanBeSold));
		World.HandToolLetScriptRotateObjectCallback = (World.HandToolEventHandler)Delegate.Combine(World.HandToolLetScriptRotateObjectCallback, new World.HandToolEventHandler(HandToolLetScriptRotateObject));
		World.HandToolLetScriptChangeModelCallback = (World.HandToolEventHandler)Delegate.Combine(World.HandToolLetScriptChangeModelCallback, new World.HandToolEventHandler(HandToolLetScriptChangeModel));
		World.OnHandToolWallAdjacencyChangedCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolWallAdjacencyChangedCallback, new World.HandToolEventHandler(OnHandToolWallAdjacencyChanged));
		World.OnHandToolMovementCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolMovementCallback, new World.HandToolEventHandler(OnHandToolMovement));
		World.OnHandToolInvalidMovementCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolInvalidMovementCallback, new World.HandToolEventHandler(OnHandToolInvalidMovement));
		World.OnHandToolPickupCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolPickupCallback, new World.HandToolEventHandler(OnHandToolPickup));
		World.OnHandToolUnslottedCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolUnslottedCallback, new World.HandToolEventHandler(OnHandToolUnslotted));
		World.OnHandToolEditCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolEditCallback, new World.HandToolEventHandler(OnHandToolEdit));
		World.OnHandToolMovementInSlotCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolMovementInSlotCallback, new World.HandToolEventHandler(OnHandToolMovementInSlot));
		World.OnHandToolPlacementInSlotCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolPlacementInSlotCallback, new World.HandToolEventHandler(OnHandToolPlacementInSlot));
		World.OnHandToolRotatedCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolRotatedCallback, new World.HandToolEventHandler(OnHandToolRotated));
		World.OnHandToolSoldCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolSoldCallback, new World.HandToolEventHandler(OnHandToolSold));
		World.OnHandToolPlacementValidityChangedCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolPlacementValidityChangedCallback, new World.HandToolEventHandler(OnHandToolPlacementValidityChanged));
		World.OnHandToolPlacementModeChangedCallback = (World.HandToolEventHandler)Delegate.Combine(World.OnHandToolPlacementModeChangedCallback, new World.HandToolEventHandler(OnHandToolPlacementModeChanged));
		World.DoesObjectHaveBuildBuyInteractionsCallback = (World.HandToolQueryEventHandler)Delegate.Combine(World.DoesObjectHaveBuildBuyInteractionsCallback, new World.HandToolQueryEventHandler(DoesObjectHaveBuildBuyInteractions));
		World.ShowBuildBuyInteractionsCallback = (World.HandToolEventHandler)Delegate.Combine(World.ShowBuildBuyInteractionsCallback, new World.HandToolEventHandler(ShowBuildBuyInteractions));
		World.OnFootprintChangedCallback = (World.FootprintEventHandler)Delegate.Combine(World.OnFootprintChangedCallback, new World.FootprintEventHandler(OnFootprintChanged));
		World.OnWallsChangedCallback = (World.WallsChangedEventHandler)Delegate.Combine(World.OnWallsChangedCallback, new World.WallsChangedEventHandler(OnWallsChanged));
		World.HandToolGetDepreciatedValueCallback = (World.HandToolGetDepreciatedValueEventHandler)Delegate.Combine(World.HandToolGetDepreciatedValueCallback, new World.HandToolGetDepreciatedValueEventHandler(HandToolGetDepreciatedValue));
		World.FamilyFundsQueryAvailableCallback = (World.FamilyFundsQueryAvailableEventHandler)Delegate.Combine(World.FamilyFundsQueryAvailableCallback, new World.FamilyFundsQueryAvailableEventHandler(FamilyFundsQueryAvailable));
		World.FamilyFundsMakeChangeCallback = (World.FamilyFundsMakeChangeEventHandler)Delegate.Combine(World.FamilyFundsMakeChangeCallback, new World.FamilyFundsMakeChangeEventHandler(FamilyFundsMakeChange));
		World.FamilyFundsCanBeChargedCallback = (World.FamilyFundsCanBeChargedEventHandler)Delegate.Combine(World.FamilyFundsCanBeChargedCallback, new World.FamilyFundsCanBeChargedEventHandler(FamilyFundsCanBeCharged));
		World.CanEyedropperPickObjectCallback = (World.CanEyedropperPickObjectEventHandler)Delegate.Combine(World.CanEyedropperPickObjectCallback, new World.CanEyedropperPickObjectEventHandler(CanEyedropperPickObject));
		World.IsIslandCounterCallback = (World.IsIslandCounterEventHandler)Delegate.Combine(World.IsIslandCounterCallback, new World.IsIslandCounterEventHandler(IsIslandCounter));
		World.DoesObjectBlockWallDragCallback = (World.DoesObjectBlockWallDragEventHandler)Delegate.Combine(World.DoesObjectBlockWallDragCallback, new World.DoesObjectBlockWallDragEventHandler(DoesObjectBlockWallDrag));
		World.DoorRoutingEventCallback = (World.DoorRoutingEventHandler)Delegate.Combine(World.DoorRoutingEventCallback, new World.DoorRoutingEventHandler(DoorRoutingEventHandler));
		World.ShouldDoorBeVisibleInLiveModeCallback = (World.ShouldDoorBeVisibleInLiveModeEventHandler)Delegate.Combine(World.ShouldDoorBeVisibleInLiveModeCallback, new World.ShouldDoorBeVisibleInLiveModeEventHandler(ShouldDoorBeVisibleInLiveMode));
		World.OnPortalLockedCallback += PortalLockedCallback;
		World.OnRoutingEventCallback = (World.OnRoutingEventHandler)Delegate.Combine(World.OnRoutingEventCallback, new World.OnRoutingEventHandler(OnRoutingEventHandler));
		World.OnRoutingEvent_ObstaclesEncountered_Callback = (World.OnRoutingEvent_ObstaclesEncountered_Handler)Delegate.Combine(World.OnRoutingEvent_ObstaclesEncountered_Callback, new World.OnRoutingEvent_ObstaclesEncountered_Handler(OnRoutingEvent_ObstaclesEncountered_Handler));
		World.OnBuildBuyFeedbackCallback = (EventHandler)Delegate.Combine(World.OnBuildBuyFeedbackCallback, new EventHandler(OnBuildBuyFeedback));
		World.OnHideAllBuildBuyFeedbackCallback = (EventHandler)Delegate.Combine(World.OnHideAllBuildBuyFeedbackCallback, new EventHandler(OnHideAllBuildBuyFeedback));
		LoadSaveManager.PreWorldBuilderSaveWorld += PreWorldBuilderSaveWorld;
		World.IsOkToTurnFaceToDestinationCallback = (World.IsOkToTurnFaceToDestinationEventHandler)Delegate.Combine(World.IsOkToTurnFaceToDestinationCallback, new World.IsOkToTurnFaceToDestinationEventHandler(IsOkToTurnFaceToDestination));
		World.ActiveSimIdCallback = (World.ActiveSimIdEventHandler)Delegate.Combine(World.ActiveSimIdCallback, new World.ActiveSimIdEventHandler(ActiveSimId));
		World.OnAddLotPostLoadCallback = (EventHandler)Delegate.Combine(World.OnAddLotPostLoadCallback, new EventHandler(PostLoadLot));
		ActiveLotChanged = (ActiveLotChangedHandler)Delegate.Combine(ActiveLotChanged, new ActiveLotChangedHandler(OnActiveLotChanged));
		World.OnLotLevelInfoChangeCallback = (EventHandler)Delegate.Combine(World.OnLotLevelInfoChangeCallback, new EventHandler(OnLotLevelInfoChanged));
		World.IsLotOwnedCallback = (World.IsLotOwnedEventHandler)Delegate.Combine(World.IsLotOwnedCallback, new World.IsLotOwnedEventHandler(IsLotOwned));
		World.HandToolGetObjectIdForCloneCallback = (World.HandToolGetObjectIdForCloneEventHandler)Delegate.Combine(World.HandToolGetObjectIdForCloneCallback, new World.HandToolGetObjectIdForCloneEventHandler(HandToolGetObjectIdForClone));
		World.HandToolCloneObjectCallback = (World.HandToolCloneObjectEventHandler)Delegate.Combine(World.HandToolCloneObjectCallback, new World.HandToolCloneObjectEventHandler(HandToolCloneObject));
		sWorldHasDiveLots = false;
	}

	public static void Shutdown()
	{
		ActiveLotChanged = (ActiveLotChangedHandler)Delegate.Remove(ActiveLotChanged, new ActiveLotChangedHandler(OnActiveLotChanged));
		World.OnLotLevelInfoChangeCallback = (EventHandler)Delegate.Remove(World.OnLotLevelInfoChangeCallback, new EventHandler(OnLotLevelInfoChanged));
		World.OnLotAddedEventHandler -= OnWorldEvent;
		World.OnLotRemovedEventHandler -= OnWorldEvent;
		World.OnLotTypeChangedEventHandler -= OnLotTypeChanged;
		World.OnLotBoundsChangedEventHandler -= OnLotBoundsChanged;
		World.OnObjectLotUpdateEventHandler -= OnWorldEvent;
		World.OnObjectPendingDestructionEventHandler -= OnWorldEvent;
		World.OnObjectVideoStoppedEventHandler -= OnWorldEvent;
		World.OnObjectSoundMaterialUpdatedEventHandler -= OnWorldEvent;
		World.HandToolAllowIntersectionCallback = (World.HandToolQueryEventHandler)Delegate.Remove(World.HandToolAllowIntersectionCallback, new World.HandToolQueryEventHandler(HandToolAllowIntersection));
		World.HandToolAllowUserPickupCallback = (World.HandToolQueryEventHandler)Delegate.Remove(World.HandToolAllowUserPickupCallback, new World.HandToolQueryEventHandler(HandToolAllowUserPickup));
		World.HandToolAllowPlacementCallback = (World.HandToolAllowPlacementEventHandler)Delegate.Remove(World.HandToolAllowPlacementCallback, new World.HandToolAllowPlacementEventHandler(HandToolAllowPlacement));
		World.HandToolAllowPlacementInSlotCallback = (World.HandToolQueryEventHandler)Delegate.Remove(World.HandToolAllowPlacementInSlotCallback, new World.HandToolQueryEventHandler(HandToolAllowPlacementInSlot));
		World.HandToolCanBeSoldCallback = (World.HandToolQueryEventHandler)Delegate.Remove(World.HandToolCanBeSoldCallback, new World.HandToolQueryEventHandler(HandToolCanBeSold));
		World.HandToolLetScriptRotateObjectCallback = (World.HandToolEventHandler)Delegate.Remove(World.HandToolLetScriptRotateObjectCallback, new World.HandToolEventHandler(HandToolLetScriptRotateObject));
		World.HandToolLetScriptChangeModelCallback = (World.HandToolEventHandler)Delegate.Remove(World.HandToolLetScriptChangeModelCallback, new World.HandToolEventHandler(HandToolLetScriptChangeModel));
		World.OnHandToolWallAdjacencyChangedCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolWallAdjacencyChangedCallback, new World.HandToolEventHandler(OnHandToolWallAdjacencyChanged));
		World.OnHandToolMovementCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolMovementCallback, new World.HandToolEventHandler(OnHandToolMovement));
		World.OnHandToolInvalidMovementCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolInvalidMovementCallback, new World.HandToolEventHandler(OnHandToolInvalidMovement));
		World.OnHandToolPickupCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolPickupCallback, new World.HandToolEventHandler(OnHandToolPickup));
		World.OnHandToolUnslottedCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolUnslottedCallback, new World.HandToolEventHandler(OnHandToolUnslotted));
		World.OnHandToolEditCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolEditCallback, new World.HandToolEventHandler(OnHandToolEdit));
		World.OnHandToolMovementInSlotCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolMovementInSlotCallback, new World.HandToolEventHandler(OnHandToolMovementInSlot));
		World.OnHandToolPlacementInSlotCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolPlacementInSlotCallback, new World.HandToolEventHandler(OnHandToolPlacementInSlot));
		World.OnHandToolRotatedCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolRotatedCallback, new World.HandToolEventHandler(OnHandToolRotated));
		World.OnHandToolSoldCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolSoldCallback, new World.HandToolEventHandler(OnHandToolSold));
		World.OnHandToolPlacementValidityChangedCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolPlacementValidityChangedCallback, new World.HandToolEventHandler(OnHandToolPlacementValidityChanged));
		World.OnHandToolPlacementModeChangedCallback = (World.HandToolEventHandler)Delegate.Remove(World.OnHandToolPlacementModeChangedCallback, new World.HandToolEventHandler(OnHandToolPlacementModeChanged));
		World.DoesObjectHaveBuildBuyInteractionsCallback = (World.HandToolQueryEventHandler)Delegate.Remove(World.DoesObjectHaveBuildBuyInteractionsCallback, new World.HandToolQueryEventHandler(DoesObjectHaveBuildBuyInteractions));
		World.ShowBuildBuyInteractionsCallback = (World.HandToolEventHandler)Delegate.Remove(World.ShowBuildBuyInteractionsCallback, new World.HandToolEventHandler(ShowBuildBuyInteractions));
		World.OnFootprintChangedCallback = (World.FootprintEventHandler)Delegate.Remove(World.OnFootprintChangedCallback, new World.FootprintEventHandler(OnFootprintChanged));
		World.HandToolGetDepreciatedValueCallback = (World.HandToolGetDepreciatedValueEventHandler)Delegate.Remove(World.HandToolGetDepreciatedValueCallback, new World.HandToolGetDepreciatedValueEventHandler(HandToolGetDepreciatedValue));
		World.FamilyFundsQueryAvailableCallback = (World.FamilyFundsQueryAvailableEventHandler)Delegate.Remove(World.FamilyFundsQueryAvailableCallback, new World.FamilyFundsQueryAvailableEventHandler(FamilyFundsQueryAvailable));
		World.FamilyFundsMakeChangeCallback = (World.FamilyFundsMakeChangeEventHandler)Delegate.Remove(World.FamilyFundsMakeChangeCallback, new World.FamilyFundsMakeChangeEventHandler(FamilyFundsMakeChange));
		World.FamilyFundsCanBeChargedCallback = (World.FamilyFundsCanBeChargedEventHandler)Delegate.Remove(World.FamilyFundsCanBeChargedCallback, new World.FamilyFundsCanBeChargedEventHandler(FamilyFundsCanBeCharged));
		World.CanEyedropperPickObjectCallback = (World.CanEyedropperPickObjectEventHandler)Delegate.Remove(World.CanEyedropperPickObjectCallback, new World.CanEyedropperPickObjectEventHandler(CanEyedropperPickObject));
		World.IsIslandCounterCallback = (World.IsIslandCounterEventHandler)Delegate.Remove(World.IsIslandCounterCallback, new World.IsIslandCounterEventHandler(IsIslandCounter));
		World.DoesObjectBlockWallDragCallback = (World.DoesObjectBlockWallDragEventHandler)Delegate.Remove(World.DoesObjectBlockWallDragCallback, new World.DoesObjectBlockWallDragEventHandler(DoesObjectBlockWallDrag));
		World.DoorRoutingEventCallback = (World.DoorRoutingEventHandler)Delegate.Remove(World.DoorRoutingEventCallback, new World.DoorRoutingEventHandler(DoorRoutingEventHandler));
		World.OnRoutingEventCallback = (World.OnRoutingEventHandler)Delegate.Remove(World.OnRoutingEventCallback, new World.OnRoutingEventHandler(OnRoutingEventHandler));
		World.OnRoutingEvent_ObstaclesEncountered_Callback = (World.OnRoutingEvent_ObstaclesEncountered_Handler)Delegate.Remove(World.OnRoutingEvent_ObstaclesEncountered_Callback, new World.OnRoutingEvent_ObstaclesEncountered_Handler(OnRoutingEvent_ObstaclesEncountered_Handler));
		World.OnBuildBuyFeedbackCallback = (EventHandler)Delegate.Remove(World.OnBuildBuyFeedbackCallback, new EventHandler(OnBuildBuyFeedback));
		World.OnHideAllBuildBuyFeedbackCallback = (EventHandler)Delegate.Remove(World.OnHideAllBuildBuyFeedbackCallback, new EventHandler(OnHideAllBuildBuyFeedback));
		LoadSaveManager.PreWorldBuilderSaveWorld -= PreWorldBuilderSaveWorld;
		World.IsOkToTurnFaceToDestinationCallback = (World.IsOkToTurnFaceToDestinationEventHandler)Delegate.Remove(World.IsOkToTurnFaceToDestinationCallback, new World.IsOkToTurnFaceToDestinationEventHandler(IsOkToTurnFaceToDestination));
		World.ActiveSimIdCallback = (World.ActiveSimIdEventHandler)Delegate.Remove(World.ActiveSimIdCallback, new World.ActiveSimIdEventHandler(ActiveSimId));
		World.OnAddLotPostLoadCallback = (EventHandler)Delegate.Remove(World.OnAddLotPostLoadCallback, new EventHandler(PostLoadLot));
		World.IsLotOwnedCallback = (World.IsLotOwnedEventHandler)Delegate.Remove(World.IsLotOwnedCallback, new World.IsLotOwnedEventHandler(IsLotOwned));
		ActiveLot = null;
		sActiveLotPending = null;
		sActiveLotLocked = false;
		sWorldLot.Dispose();
		sWorldLot = null;
		sEventList = null;
		ulong[] array = new ulong[sLots.Keys.Count];
		sLots.Keys.CopyTo(array, 0);
		for (int i = 0; i < array.Length; i++)
		{
			RemoveLot(array[i]);
		}
		sLots = null;
		sActorList.Clear();
		sLotManager = null;
		foreach (AlarmManager sDebugDestroyedAlarmManager in sDebugDestroyedAlarmManagers)
		{
			sDebugDestroyedAlarmManager.OnShutdown();
		}
		sDebugDestroyedAlarmManagers = new List<AlarmManager>();
	}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll; Sims3.Gameplay.Core.LotManager::AddLot; token 0x06009976.
   Actual complete ILSpy selected-member rendering. Duplicate key returns null; otherwise original constructors, editability, dictionary insertion and Simulator registration retain their exact order.
   Original paired CIL controls exact branches, constants and member identity; omitted siblings are outside this extract. */
	private static Lot AddLot(ulong lotId, bool editable)
	{
		if (sLots.ContainsKey(lotId))
		{
			return null;
		}
		Lot lot = ((lotId != ulong.MaxValue) ? new Lot(lotId) : new WorldLot());
		if (lot != null)
		{
			lot.IsEditable = editable;
			sLots[lotId] = lot;
			Simulator.AddObject(lot);
		}
		return lot;
	}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll; LotManager::OnLotTypeChanged; token 0x06009950.
   Actual complete ILSpy selected-member rendering. Only matching event arguments and a resolved lot reach the original lot notification.
   Sender is unused; original paired CIL controls null/type gates and exact callvirt at IL0020. */
	public static void OnLotTypeChanged(object sender, EventArgs args)
	{
		if (args is World.OnLotTypeChangedEventArgs e)
		{
			GetLot(e.LotId)?.OnLotTypeChanged(e.LotType);
		}
	}
