# Map view, active lots and heightmap cleanup: managed callers

The reference is the original PC 1.67 game. The [central managed identities](../../evidence/managed/README.md#matching-original-assembly-identities) identify the pristine S3SA DLLs. Each new extract preserves complete selected method bodies and original IL; omitted siblings are outside that extract. C# is the actual ILSpy member rendering with analyst notes. Numeric constants, bool arguments and branches below were checked against original IL. These are static contracts; no gameplay, visual or memory-residency test was performed.

## Search boundary and bridge identity

Every method body in the ten assemblies decoded from the original `scripts.package`, `gameplay.package` and `simcore.package` was scanned for direct metadata references to the selected setters, priority producer, load/unload and active-lot lock chain. This covers ScriptCore, SimIFace, Sims3GameplaySystems, Sims3GameplayObjects, UI, Sims3Metadata, Sims3StoreObjects and the original mscorlib/System/System.Xml. Gameflow is a type in SimIFace; gameplay state transitions are in Sims3GameplaySystems. Prepared/retargeted assemblies and a differing loose StoreObjects DLL were excluded.

| Assembly | Method definitions | Bodies decoded |
| --- | ---: | ---: |
| ScriptCore | 4,625 | 2,635 |
| SimIFace | 5,990 | 3,492 |
| Sims3GameplaySystems | 75,877 | 72,706 |
| Sims3GameplayObjects | 55,580 | 54,875 |
| UI | 14,926 | 11,421 |
| Sims3Metadata | 959 | 910 |
| Sims3StoreObjects | 6,732 | 6,705 |
| mscorlib | 8,256 | 6,731 |
| System | 1,340 | 1,278 |
| System.Xml | 5,177 | 5,013 |

The [90 decoded sites](managed/map-view-call-sites.tsv) are a lookup table, including active-lot UI selection/override and lock users. A row establishes a static metadata reference; it does not imply every enclosing interaction was reviewed. Same-assembly MethodDef targets are exact. Cross-assembly MemberRefs retain the source token and declared owner; the retained callee IL establishes the relevant signature. Reflection-generated calls, native callers and invocation frequency are outside this managed search.

| Facade | Original downstream contract | Existing native lookup |
| --- | --- | --- |
| `World.SetMapViewActiveLotMode(bool)` | Null-guarded `IWorld.SetMapViewActiveLotMode(bool)` → ScriptCore forwards bool | [registration](../../api/ScriptCore.World/0x01163488.md) |
| `World.SetActiveLot(ulong)` | Null-guarded `IWorld.SetActiveLot(ulong)` → ScriptCore forwards GUID | [registration](../../api/ScriptCore.World/0x011633f0.md) |
| `World.LotSetDetailPriority(ulong, LotDetailPriority)` | Null-guarded `IWorld` call; priority underlying type is signed int32 | [registration](../../api/ScriptCore.World/0x01163cd0.md) |
| `World.LoadHeightMapRelatedData(bool)` | Null-guarded `IWorld.LoadHeightMapRelatedData(bool)` | [registration](../../api/ScriptCore.World/0x01163c18.md) |
| `World.UnloadHeightMapRelatedData(bool)` | Null-guarded `IWorld.UnloadHeightMapRelatedData(bool)` | [registration](../../api/ScriptCore.World/0x01163c20.md) |
| `GameUtils.FreezeLotLODs(bool)` | Unconditionally calls `gGameUtils.FreezeLotLODs(bool)` | [registration](../../api/ScriptCore.GameUtils/0x011972b8.md) |

Facade evidence reuses the existing complete [World C#](../callbacks/managed/Sims3.SimIFace.World.cs) with the newly retained [selected original World IL](managed/World.mapview.il.txt). Freeze uses [GameUtils C#](managed/GameUtils.lod.cs) ([original IL](managed/GameUtils.lod.il.txt)). The [ScriptCore callers](../../evidence/managed/callers.il.txt) retain the exact native-bridge forwarding bodies. `World.WaitForLot(ulong,bool,bool)` returns bool and directly dereferences `gWorld`; the reviewed callers below ignore that return. Its signature alone does not establish which native loading stages are complete.

## The camera map-view state and allow-active policy

[Camera C#](managed/Camera.mapview.cs) ([original IL](managed/Camera.mapview.il.txt)) contains two distinct controls:

- `SetView(MapView)` calls `CameraController.EnableMapViewMode()` and returns. Sim/Lot/House views disable map view. `ToggleMapView` uses the native camera's `IsMapViewModeEnabled`, only in LiveMode when the next state is neither BuildMode nor BuyMode.
- `SetMapViewActiveLotMode(allowActive)` stores `sbMapViewActive` and forwards the same bool to `World.SetMapViewActiveLotMode`. Its callback `OnCameraMapViewEnabledEvent(bool)` is empty. It is not a stored copy of ordinary map-view enabled state.

The existing [SimIFace camera C#](../camera/managed/Sims3-SimIFace-CameraController.decompiled.cs) ([original IL](../camera/managed/Sims3-SimIFace-CameraController.il.txt)) and [ScriptCore camera C#](../camera/managed/ScriptCore-CameraController.decompiled.cs) ([original IL](../camera/managed/ScriptCore-CameraController.il.txt)) retain the camera-controller wrappers.

### Ordinary active-lot evaluation

`Camera.StartUp` registers a simulation task; `ShutDown` destroys it and removes callbacks. In `Simulate`:

1. Build/Buy or Edit-in-Game skips selection and yields. An explicit `sActiveLotOverride` instead writes that lot and yields.
2. The interest point comes from **`CameraController.GetLODInterestPosition()`**. Re-evaluation occurs when position, interest point or selected actor changes, or elapsed simulation ticks are strictly greater than the tunable evaluation period. The original static default is 60 ticks.
3. If `sbMapViewActive` is false and camera Y minus terrain height at the interest point is **at least** the tunable height threshold, both ActiveLot and FocusLot are cleared. The original static default is 200; installed tuning may override it.
4. Otherwise `GetClosestVisibleLot` chooses an eligible lot around that interest point, then the houseboat/diving filter runs. ActiveLot receives the result. A non-null, non-world focus lot receives FocusLot; that branch does not clear a previously stored FocusLot when the candidate is null/world.

Eligibility comes from the selected actor's household. Candidates include its greeted lots, private move-to lots, peeped-in current lot, home lot, qualifying community venues and owned lots. Shell/apartment and closed-venue cases consult household/hosted Sims, their inside/level state and the current active lot. No selected household means no eligible result from this method. Greeting is **consumed**, not written, here; see the separate [visitor contract](../travel/visitors-and-door-greeting.md).

Selection classifies the target against transformed lot bounds in X/Z, then compares squared edge/corner distance. Containing lots score zero; a containing houseboat can replace another zero-distance result. Houseboat display-to-world adjustment has original padding 10 except over a diving lot, where it becomes zero. The subsequent filter substitutes the underlying diving lot when the camera is below sea level. Its complete arithmetic helpers are retained in the Camera pair; these facts do not establish a frustum, visibility-ray or geometric occlusion test.

### Locking, deferred updates and priority

[LotManager C#](managed/LotManager.mapview.cs) ([original IL](managed/LotManager.mapview.il.txt)) separates selection from application. While locked, a requested lot overwrites `sActiveLotPending`. An unlocked change updates `sActiveLot`, forwards its uint64 GUID to `World.SetActiveLot` (or zero for null), then emits `ActiveLotChanged` if subscribed. A same-lot assignment has no native call/event. `LockActiveLot` saves the previous lot as pending before selecting and locking the requested lot; `UnlockActiveLot` clears the lock, applies pending through the property, then clears pending.

World initialization/shutdown callers are already retained in [LotManager visitor C#](../travel/managed/LotManager.visitors.cs) ([original IL](../travel/managed/LotManager.visitors.il.txt)): PreWorldLoad selects the world lot and resets pending/lock; shutdown clears them. This is separate from a loaded-resource residency guarantee.

[Lot priority C#](managed/Lot.detail-priority.cs) ([original IL](managed/Lot.detail-priority.il.txt)) establishes the regular producer: every `Lot.Simulate` iteration calls `UpdateDetailPriority`, which sends `CalculateDetailPriority()` to native code. The [enum C#](managed/LotDetailPriority.cs) ([original IL](managed/LotDetailPriority.il.txt)) declares `None=0`, `PlayerSim=1`, `Home=2`, `Camera=3`, `Active=4` and has `[Flags]`. The reviewed producer returns **Home first** if this is the active household's home; otherwise PlayerSim if an instantiated member is on the lot with `RabbitHoleCurrent == null`; otherwise None. It does not emit Camera/Active or combine Home/PlayerSim. The enum attribute and decompiler expression `Camera=PlayerSim|Home` do not by themselves make the native policy bitwise.

## Literal allow-active callers and lifecycle

| Caller | Exact bool / ordering | Evidence |
| --- | --- | --- |
| `LiveModeState.WaitForLotLoad` | `true` at IL0051, only with an active actor and selected active-Sim lot; tether → yield → enable → lock → HouseView → sleep1.5 → `WaitForLot(id,true,true)` → untether → LotView → sleep3 | [C#](managed/LiveModeState.mapview.cs) ([IL](managed/LiveModeState.mapview.il.txt)) |
| `LiveModeState.DelayedMapViewActiveLotMode` | Unlock first, then `false` at IL0006. Normal loading-screen cleanup invokes it if locked; fly-through completion queues it through `PostZoomFunction(...,10f)` | [C#](managed/LiveModeState.mapview.cs) ([IL](managed/LiveModeState.mapview.il.txt)) |
| `PlayFlowModel.PlayBinHouseholdScreenMaskedFunc` | `true` at IL0046 before lock and export-bin placement | [C#](managed/PlayFlowModel.mapview.cs) ([IL](managed/PlayFlowModel.mapview.il.txt)) |
| `PlayFlowModel.PlayTravelHouseholdScreenMaskedFunc` | `true` at IL0040 before lock and household move-in | [C#](managed/PlayFlowModel.mapview.cs) ([IL](managed/PlayFlowModel.mapview.il.txt)) |
| `PlayFlowModel.ActivateSimScreenMaskedFuncFromHousehold` | `true` at IL000d before lock/preparation/activation | [C#](managed/PlayFlowModel.mapview.cs) ([IL](managed/PlayFlowModel.mapview.il.txt)) |
| `PlayFlowModel.EndPlaceStartGame` | `true` at IL007b after successful placement, before `WaitForLot(id,true,true)` | [C#](managed/PlayFlowModel.mapview.cs) ([IL](managed/PlayFlowModel.mapview.il.txt)) |
| `PlayFlowModel.TurnOffActiveMapViewModeTask` | `false` at IL0001. Its scheduling owner unlocks and posts at10f; if posting returns false, executes immediately | [C#](managed/PlayFlowModel.mapview.cs) ([IL](managed/PlayFlowModel.mapview.il.txt)) |

The original [LiveMode Startup C#](../travel/managed/LiveModeState.travel.cs) ([original IL](../travel/managed/LiveModeState.travel.il.txt)) retains the entry/load/fly-through branch selection. `LiveModeState.Sleep` uses wall-clock `DateTime.Now` while yielding; the separate active-lot re-evaluation uses simulation ticks. The static call graph does not establish task delivery timing or a gameplay loading timeout.

[LeaveInWorldState C#](../travel/managed/LeaveInWorldState.cs) ([original IL](../travel/managed/LeaveInWorldState.il.txt)) is the only gameplay caller of `FreezeLotLODs` in the scan: Startup calls `true` at IL000c before subscribing the not-in-world event and `TransitionToNotInWorld`; Shutdown calls `false` at IL0007 before removing that event and shutting down pre-world initializers. It is a world-leave lifecycle, not the ordinary map-view toggle.

## Heightmap load/release owners

| Owner | Exact original sequence | Evidence |
| --- | --- | --- |
| `EditTownModel.Initialize` and thumbnail task | Sets `sLoadHeightMapData=true`. At `UpdateDirtyLotThumbnailsTask` tail, if requested and not already loaded, calls `LoadHeightMapRelatedData(true)` at IL005b. Then clears request and sets `sbHtMapLoaded=true` | [C#](managed/EditTownModel.heightmap.cs) ([IL](managed/EditTownModel.heightmap.il.txt)) |
| `EditTownModel.UpdateRoutingDataAndUnloadHeightMap` | Only if `sbHtMapLoaded`: clears the bool first, displays processing UI, calls `BuildRoutingData()`, then `UnloadHeightMapRelatedData(true)` at IL0030, then closes UI | [C#](managed/EditTownModel.heightmap.cs) ([IL](managed/EditTownModel.heightmap.il.txt)) |
| `EditTownModel.Shutdown` / `ExitEditTown` | Call that guarded release helper. Exit also forces Sims' route replanning afterward. This helper is not wrapped in a finally; an exception after clearing the flag is not shown as a guaranteed completed release | [C#](managed/EditTownModel.heightmap.cs) ([IL](managed/EditTownModel.heightmap.il.txt)) |
| `BlueprintController.Dispose` | `UnloadHeightMapRelatedData(false)` at IL019a after tool/event cleanup, before base.Dispose | [C#](managed/BlueprintController.heightmap.cs) ([IL](managed/BlueprintController.heightmap.il.txt)) |
| `BuyController.Dispose` | `UnloadHeightMapRelatedData(false)` at IL0363 during controller teardown, after compositor/inventory/event cleanup | [C#](managed/BuyController.heightmap.cs) ([IL](managed/BuyController.heightmap.il.txt)) |

These are the **three direct non-facade unload sites** found in the decoded managed bodies. No direct ordinary LiveMode/world-entry/world-exit unload site was found in that boundary. This does not exclude native cleanup, callbacks through native state transitions or reflective invocation. Passing `false` versus `true` is proven here; the native consumer controls whether a call actually releases retained data. A managed `sbHtMapLoaded` bool alone is not measured native memory ownership.

## Proof limits

The executed checks decoded original package assemblies, matched their DLL identity, decoded the bounded IL call graph and re-exported the selected original bodies. No Engine build, original-game run, OpenTS3 reproduction, GPU comparison or save/reload test was performed. Native admission/ranking, asynchronous lot loading and heightmap destruction must be read with their paired original native evidence; this managed guide does not infer those details from API names. Additional interactions in the lookup table remain lookup context unless described above.
