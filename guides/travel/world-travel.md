# Vacation and future world travel — PC 1.67

## Scope and authority

World Adventures trips to China, Egypt and France, university visits, and Into the Future trips to Oasis Landing share the original `GameStates` world-switch pipeline. The time portal's local routing/animation is the entry interaction; the world switch saves one world, unloads it, loads another, imports the travelling household, and later merges its changed state back into the home world. It is a different contract from a stair, door, elevator or other routing portal inside an already loaded world.

This is static original-code evidence. Selected complete original managed members and their IL are indexed in [managed evidence](managed/README.md); native storage/loading instructions are in [travel databases](travel-databases.md). No original game trip, save/reload cycle or OpenTS3 comparison was executed.

## Actors, identity and persistent state

[GameStates C#](managed/GameStates.travel.cs) ([original IL](managed/GameStates.travel.il.txt)) defines a `[Persistable] TravelData` and a `[PersistableStatic(true)] sTravelData`. Its enum is `StartVacation=0`, `OnVacation=1`, `EndVacation=2`. The separate `sIsChangingWorlds` flag answers `IsTravelling`; a loaded destination can retain TravelData while that flag is false.

| Data | Producer and consumer |
| --- | --- |
| Home world name and home metadata name | Departure captures the current filename with/without the `_0xWorldId` extension. Return constructs the original save member from the retained home name. |
| Destination, original save name, trip length/day | Departure fills destination/length/day 0. `SwitchWorlds` stores the original save name before selecting the destination. Arrival changes only the travel phase, and return uses the same data to select home. |
| `mTravelerIds` | Stable `ulong SimDescriptionId` values supplied by the travel interaction; membership controls export/import selection. These are not native object GUIDs for the newly instantiated Sim objects. |
| Travelling relationships | Before each switch, existing relationships among selected travellers are retained by source/target description IDs. Arrival and return copy them onto descriptions in the newly loaded world. |
| `mTravelHouse`, real estate, home time and aging elapsed | Retained across the switch; arrival restores property ownership/alarms and synchronizes world aging. This includes information outside a Sim's inventory. |
| Early departures, deaths and age changes | Early departure IDs are restored to the exported household before the last return. Return records missing traveller IDs as deaths and defers changed-age instantiation/fixup. |
| Phone stache, pending urnstone removals/additions | Smartphone skin/broken state and ringtone are keyed by description ID and restored after import. Urnstones are merged by the dead Sim's description ID before duplicate imported objects are destroyed. |

`ClearTravelStatics` clears the travel data, switching flag, edit-other-world state, travel callbacks, old household/next selection and the pending player travel request. `PostTravelingFixUp` clears TravelData and the switching flag after the completed return merges. It keeps TravelData during the destination visit; it does not call the broader ClearTravelStatics helper at that point.

## Departure, destination selection and world loading

The corresponding originals are [TravelUtil](managed/TravelUtil.travel.cs) ([IL](managed/TravelUtil.travel.il.txt)), [GameStates](managed/GameStates.travel.cs) ([IL](managed/GameStates.travel.il.txt)), and [the departure state](managed/TravelDepartureState.cs) ([IL](managed/TravelDepartureState.il.txt)).

1. The original vacation phone/computer interactions call `ShowTravelToVacationWorldDialog` and `TriggerTravelToVacationWorld`; the latter schedules the car departure interaction with selected description IDs, followers, duration, destination and cost. The direct original callsites are in [call edges](managed/call-edges.tsv).
2. `SitInCarToTriggerTravel.Run` charges the cost, organizes the vehicle/followers and installs a force-transition alarm if driving is still underway. Its authored default is 20 Sim minutes, marked `[Tunable]`; it is a gameplay departure fallback, not a native planning timeout. Before actually switching, `FinalBoardingCall` rechecks every supplied traveller's eligibility and household membership.
3. `GameStates.TravelToVacationWorld` stops incompatible recording/capture/tool/service operations, constructs TravelData, sets `StartVacation` and `sIsChangingWorlds=true`, captures home/time/property/aging state, and schedules the one-shot `SwitchWorlds` task. For FutureWorld it additionally performs cause/effect pre-load work and builds descendant household specifications.
4. `SwitchWorlds` resolves selected descriptions in the active or retained old household; preserves their relationships, buffs, opportunities and phone state; resets departing actors; yields; then calls `LoadSaveManager.SaveTravel()`. ScriptCore supplies `(handle 0,isTravelSave=true,isTraveling=true)` to the native save entry. The complete original save wrapper is [ASM](../../evidence/native/functions/00742C40_ScriptCore_LoadSaveManager_LoadSaveManager_SaveGame_Impl.asm) ([annotated pseudocode](../../evidence/native/functions/00742C40_ScriptCore_LoadSaveManager_LoadSaveManager_SaveGame_Impl.c)); it forwards the original uint status. **This managed switch method does not branch on that status.**
5. Destination selection first constructs `originalSave:destinationMember`. If `GameUtils.IsValidSavegame` rejects it, it falls back to the installed pristine `.world`. A future reset deliberately chooses `Oasis Landing.world` and clears `ShouldResetTheFuture`. An unsupported WorldName returns false, clears TravelData/switching and ends that departure task.
6. After save selection, `MiniSimDescription.AddMiniSims` updates portable world/relationship records; `Bin.ExportHouseholdForTravel` writes household content and its inventories into the temporary native travel bin. These are separate operations from the world save and from permanent TravelDB Sim records.
7. `GotoState(TravelDeparture)` enters managed state 9. `LeaveInWorldState` freezes lot LOD changes and requests `TransitionToNotInWorld`. It waits for the original `OnEnterNotInWorld` event before choosing the destination's metadata. A filename containing `:` uses save metadata; a raw filename uses world metadata. `TravelArrivalState`, state 10, extends `ToInWorldState` and reuses the already-open travel loading screen.

| Destination | Installed fresh world | Save member |
| --- | --- | --- |
| China | `China.world` | `China_0x0859db4c` |
| Egypt | `Egypt.world` | `Egypt_0x0859db48` |
| France | `France.world` | `France_0x0859db50` |
| University | `Sims University.world` | `Sims University_0x0e41c954` |
| Future | `Oasis Landing.world` | `Oasis Landing_0x0f36012a` |

`SetLoadFileName` retains the portion of the original save name before its first colon and appends the selected member. The suffixes above are literal original managed constants; world/save identity must not be inferred from the displayed localized location name.

### Native load scheduling and readiness

The void bridge [TransitionToLoadWorld ASM](../../evidence/native/functions/00EC1300_ScriptCore_GameUtils_GameUtils_TransitionToLoadWorldImpl.asm) ([pseudocode](../../evidence/native/functions/00EC1300_ScriptCore_GameUtils_GameUtils_TransitionToLoadWorldImpl.c)) obtains a UTF-16 filename from the managed host and queues a 0x24-byte native InWorld state. Its [producer ASM](../../evidence/native/functions/00EC7650_GameState_QueueWorldLoad.asm) ([pseudocode](../../evidence/native/functions/00EC7650_GameState_QueueWorldLoad.c)) copies that filename, stores the state machine and starts with no World pointer. The [load consumer ASM](../../evidence/native/functions/00EC7250_GameState_LoadRequestedWorldOrSave.asm) ([pseudocode](../../evidence/native/functions/00EC7250_GameState_LoadRequestedWorldOrSave.c)) distinguishes colon-qualified saves from raw worlds, invokes the corresponding load path, configures travel/export storage after success, and unloads/deletes the newly allocated World on failure.

[ToInWorldState](managed/ToInWorldState.cs) ([IL](managed/ToInWorldState.il.txt)) subscribes to load-start/status/finish/failure events before starting the native transition. Load completion restores the camera and schedules a SceneReadyTask that waits, in order, for frame evaluation, detailed lots and the `SceneMaskFlags.Sim` readiness condition before entering InWorld. [Native readiness ASM](../../evidence/native/functions/00EC1D70_ScriptCore_GameUtils_GameUtils_WaitForSceneReadiness.asm) ([pseudocode](../../evidence/native/functions/00EC1D70_ScriptCore_GameUtils_GameUtils_WaitForSceneReadiness.c)) creates a notifier and passes the managed delegate into the host wait path. Its virtual predicate and complete callback timing remain outside this proof.

Load failure schedules a task retained to the main menu, unloads the loading screen, displays the error, shuts down pre-world initializers and transitions to `ToMainMenu`. A successful scheduling call is therefore not proof of a successfully loaded destination.

## Household import and arrival

[InWorldState.Startup](managed/InWorldState.travel.cs) ([IL](managed/InWorldState.travel.il.txt)) runs description-ID remapping first, then `ImportTravellingHousehold`, then post-world initializers, then `PostTravelingFixUp`. The later [LiveModeState.Startup](managed/LiveModeState.travel.cs) ([IL](managed/LiveModeState.travel.il.txt)) calls `OnArrivalAtVacationWorld` while the switching flag remains set. These stages must stay ordered.

The [Bin writer/reader](managed/Bin.travel.cs) ([IL](managed/Bin.travel.il.txt)) reset household actors and yield; generate a fresh content ID; store `HouseholdContents`; export its content to the native travel bin; import and remap it into the destination content database; then read the managed household by that returned ID. Native import failure uses `0` and managed `ImportHouseholdForTravel` returns null. `ImportTravellingHousehold` sets `Household.IsTravelImport=true` only around this read and resets it in `finally`.

At `StartVacation`, the imported household initially contains descriptions for the household export. Nontravellers are counted, removed and disposed in the destination. A traveller already present in `PreviousTravelerHousehold` is merged by `SimDescriptionId`, imports the corresponding inventory and buffs/pregnancy, and replaces the temporary description. Remaining travellers instantiate/import normally. Household family inventory is restored; **fridge inventory is explicitly not imported for travel**. Then VacationArrival restores property management, records the world visit and installs vacation alarms.

`OnArrivalAtVacationWorld` restores travelling relationships, chooses the home/base-camp lot, places Sims at safe spots, selects an actor, performs future post-load hooks when applicable, sends `kSimEnteredVacationWorld`, performs the original special story progression, then sets `sIsChangingWorlds=false` and `mState=OnVacation`.

[TravelUtil arrival placement](managed/TravelUtil.travel.cs) ([IL](managed/TravelUtil.travel.il.txt)) uses university move-in or vacation/future deed and home selection. Default camp selection is `GetBaseCampLot()` for other destinations and `GetBaseCampLotFuture()` for Future. Re-zoned owned vacation properties are removed/refunded. Safe placement may use a time portal containment slot, a door, mailbox or base-camp postbox; failure on the preferred placement invokes the original fallback placement.

[Arrival behaviour](managed/ArriveHomeBehaviorInVacationWorld.cs) ([IL](managed/ArriveHomeBehaviorInVacationWorld.il.txt)) schedules its one-minute arrival alarm. Future arrival uses an available home time portal; otherwise it submits `repoTeleport` effects and fades Sims in. Other trips enqueue the appropriate home-lot/car or university-van interaction. This visual arrival is distinct from loading/import completion.

## Into the Future entry, variants and return portal

[TimePortal travel interactions](managed/TimePortal.travel.cs) ([IL](managed/TimePortal.travel.il.txt)) check prior time-traveller summoning, portal availability/broken state, player travel requests and EP 11 eligibility; gather companions; ask the travel confirmation; disable saving for the interaction; route to the portal; run the original `timeportal` state machine; and call `TravelToFuture`. Cleanup always clears the player request and re-enables saving. A failed final boarding check runs the original spit-out path rather than switching worlds.

`TravelToFuture` appends the actor's stable description ID if absent, terminates foreign/holographic visitor situations, changes to map view, returns reserved vehicles to inventories, stops portal effects, and calls **`GameStates.TravelToVacationWorld(FutureWorld,ids,0,0)`**. It records the departure portal ObjectGuid in CauseEffectService. From the future, the interaction calls `ReturnFromVacationWorld()` after its return animation.

[CauseEffectService](managed/CauseEffectService.travel.cs) ([IL](managed/CauseEffectService.travel.il.txt)) persists current/previous variant, discovered/experienced variants, triggered changes, departure portal ID, future visit count and dirty state. [The original uint enum](managed/CauseEffectWorldState.cs) ([IL](managed/CauseEffectWorldState.il.txt)) is Invalid 0, Dystopia 1, Utopia 2, Normal 4. `ToInWorldState.OnWorldLoadStarted` forwards the current variant to `World.SetVisualOverride`; these are not numeric phase 0/1/2.

Future post-load increments the visit count, grants future objects to appropriate Sims, removes Singed, updates variant spawners when dirty, starts/disposes dystopia meteor showers, updates lots, replaces the sky VFX helper and builds time statues. [FutureDescendantService](managed/FutureDescendantService.travel.cs) ([IL](managed/FutureDescendantService.travel.il.txt)) builds specifications from home genealogy before departure, then after loading fixes household references, creates/resizes descendant households, updates available lots, relationships, alarms, occults and map tags. Descendant generation and lot-scoring internals beyond the retained methods remain a separate implementation boundary.

[ReturnHomeBehaviorInHomeWorld](managed/ReturnHomeBehaviorInHomeWorld.cs) ([IL](managed/ReturnHomeBehaviorInHomeWorld.il.txt)) first tries the persisted departure time portal for a Future return. If it cannot queue that arrival, it falls back to the original home return/vehicle sequence. A portal's continued existence is therefore not the only return path.

## Return and merging the changed travellers

`ReturnFromVacationWorld` starts the return loading screen, checks shutdown, captures the current WorldType, invokes PreReturnHome, copies phone photographs into Sim inventories, stops incompatible operations and removes vacation alarms. It resets actors and reinserts early departures before export. World Adventures household-owned tents are moved into the travelling Sim inventory; university move-out/roommates have their own cleanup. It sets `EndVacation` and schedules `SwitchWorlds`.

The return switch updates MiniSims, exports the household, moves it to `PreviousTravelerHousehold`, resets other instantiated Sims away from home, yields, calls SaveTravel for the destination world, then selects `originalSave:homeWorld` and enters the same departure/load pipeline. The destination world save preserves that visit's world objects for a later trip; detailed native object serialization remains in the [persistence contract](../persistence/README.md).

At `EndVacation`, import resolves each returned description in the already loaded home world by its stable ID. It restores travel and pregnancy data; imports each Sim inventory; handles age/species changes through deferred re-instantiation; records early-return groups; schedules return-home behaviours; replaces family inventory; merges household travel data; and destroys temporary imported descriptions/household. `PostTravelingFixUp` restores deferred age/buff/selection state, relationships and MiniSim information, finalizes missing travellers' deaths, restores phone state and owed gifts, then clears TravelData/switching.

[SimDescription merge C#](managed/SimDescription.travel.cs) ([IL](managed/SimDescription.travel.il.txt)) proves transfer of core appearance/name/home-world state, aging, opportunity history, buffs-related exports, happiness, outfits, traits, skills, visa data, occults, degrees, celebrity, trait chips, genealogy and other retained fields. **RelicStats and TombStats are transferred and their owner is rebound with SetSimDescription(this)**. Puzzle/visited-tomb statistics must therefore survive return alongside skills and inventory. Pregnancy has a separate merge/start/clear path.

[Bin inventory import](managed/Bin.travel.cs) ([IL](managed/Bin.travel.il.txt)) destroys existing items, imports the saved inventory and deletes the consumed native inventory resource. During travel it first retains existing urnstones, collects imported urnstones and calls `ApplyInventoryUrnstoneMerging`: matching dead-description IDs merge travel data into the original urnstone, destroy the duplicate and reinsert the original; unmatched retained urnstones are destroyed. This is ownership-sensitive replacement, not additive copying.

## Failure and implementation boundaries

Eligibility is checked both at the UI/interaction gate and at final boarding. Pregnancy, dying/jail/boarding-school/passport states, relevant buffs/transformations and wrong household can block travel. Future allows some transformation states and toddler travel that ordinary vacation rejects; it must use the corresponding original gate.

Several original managed methods catch broad exceptions; SaveTravel's returned status is discarded in SwitchWorlds. Its empty `catch (Exception)` falls through to `sOldActiveHousehold=null` and `GotoState(TravelDeparture)`: an exception during the try body does not provide an abort gate. `ImportTravellingHousehold` resets `Household.IsTravelImport` in `finally`, then dereferences the imported household contents without a null guard. A null import can reach its outer empty catch. Because that method returns void, `InWorldState.Startup` still continues with post-world initialization and `PostTravelingFixUp` after it returns. MiniSim packing/unpacking likewise do not use the native Boolean return as a complete success guarantee. These are static original continuation paths; reaching a later state does not prove export/import completion.

The proof establishes writer/reader ordering, stable identity, key layouts, mode flags, temporary-bin ownership, managed import/merge rules and native load guards. It does not establish a runtime trip, a reloadable destination save, the full indirect DBPF implementation, cause/effect rendering parity, or all descendant-generation rules. Acceptance still requires real departure/arrival/return, save/quit/reload and a repeat visit with relationships, inventories, tomb progress and future variants measured before and after.

[Library session original lifecycle and warning join](../persistence/library-session-lifecycle-and-warning.md) distinguishes native Init/Shutdown, memory-bin retain/release, real inventory producers and UI prevalidation from host deferred import-failure policy; complete selected CIL and remaining boundaries are recorded there.
