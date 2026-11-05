# Tomb puzzles, secret rooms and discovery

## Contract boundary

World Adventures tombs include puzzles in the currently loaded world's lots and
rooms. Their switches, doors, traps, discovery and object links are managed
GameplaySystems/GameplayObjects code. Native contracts supply object identity,
footprint trigger volumes, room geometry, routing portals and render visibility.
No world loader is called by the linked trigger dispatcher or room-discovery
methods reviewed here. Actual vacation/future-world loading is a separate
travel contract. Sources and complete focused type pairs are in the
[evidence index](README.md).

All conclusions below are **static original-code evidence**. Original IL,
instructions and envelope bytes were checked; no original game execution,
complete tomb playthrough or fresh-process save/reload was performed.

## Linked trigger and action graph

[TombObjectData C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectData.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.TombObjectData.il.txt)) owns two dictionaries: registered
`Trigger -> TriggerInfo` and registered `ActivatedBehavior -> ActivatedBehaviorInfo`.
Each trigger has an **ordered list** of `(ObjectGuid, ActivatedBehavior)` target
links and optional notification text. Each action has a runtime callback,
notification text and a cause/effect flag. The callback is explicitly
`Persistable(false)` and must be re-registered by the target's
`OnAddTombObjectComponent`. Static and dynamic component wrappers delegate to
this same data owner; dynamic addition also supports ordinary eligible objects.

The original typed domains are [Trigger C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.Trigger.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.Trigger.il.txt)) and
[ActivatedBehavior C#](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.ActivatedBehavior.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.ObjectComponents.ActivatedBehavior.il.txt)). Values are uint32 and contain
both small IDs and large fixed IDs; they are neither dense indexes nor a
bitmask. For example `InsertKeystone=1`, `StepOn=4`, `StepOff=5`,
`Out0..Out7=146171217..146171224`; input actions
`In0..In7=146171252..146171259` and `In0_Reset..In7_Reset=146171284..146171291`.

`ActivateTrigger(trigger, sim)`:

1. Applies `CanTriggerBeActivated`: default NPC activation is enabled. If
   disabled, a null Sim or Sim in the active household remains allowed.
2. Looks up registered trigger; traverses every link in list order.
3. Resolves target by full ObjectGuid. A missing object is skipped. Eligible
   target lacking the component receives a dynamic tomb component; otherwise
   missing component is skipped.
4. Invokes its registered action callback synchronously. Missing action,
   missing action data or null callback produces false. Successful callbacks
   can emit their own text and cause/effect visual.
5. ORs all action results **without short circuit**. Original IL at
   `ActivateTrigger IL_008b..0091` calls, `or`, stores.
6. Shows trigger text only when at least one action succeeded. Sends
   `kTombObjectTrigger` when the trigger exists, even if no action succeeds.

There is no general one-shot latch or cycle guard in this dispatcher. Such
state belongs to each action/object. The inspected method supplies direct
callback ordering, not deferred graph execution. Recursive/cyclic authoring
behavior beyond those local guards has not been runtime-tested.

`DeactivateTrigger` maps each linked action through the registered opposite
map and invokes it. It **does not run the NPC gate**, and its return is the
**last invoked callback's result**, not OR of all results: the original IL
`IL_008e..0093` calls then stores without `or`. Important pairs include
Open/Close, Lock/Unlock, Hide/Unhide, Appear/Disappear, SetToFire/Deactivate,
Arm/Disarm, LightTurnOn/Off and every InN/InN_Reset. An action with no opposite
is skipped. Reversal is an explicit new action, not automatic state rollback.

## Authoring and portable persistence

`RegisterTrigger` preserves an existing link list. `RegisterBehavior` updates
an existing callback while preserving action text/FX settings. Original
registration before import therefore matters: import only loads trigger/action
keys that are both valid enum members and already registered on the object.
It does not manufacture arbitrary behavior capabilities.

`ExportContent` creates child **143210195**, storing:

| Field/child | Key | Contract |
| --- | --- | --- |
| Adventure key | 1747874836 | string |
| NPC activation | 147457040 | bool; reader default true |
| Trigger dictionary | 143210335 | signed count at0, alternating uint trigger and child keys |
| Action dictionary | 143210338 | signed count at0, alternating uint action and child keys |
| Trigger links child | 143226131 | count at0; alternating ObjectIdTable int index and uint action |
| Trigger text | 144756107 | string |
| Action text / FX | 143212363 / 144417052 | string / bool, FX reader default false |

Each destination GUID is exported as `ObjectIdTable.AddId`, then remapped
through the reader's table. Original GUID values cannot simply be copied into
a newly imported lot. Invalid table index -1, unresolved target, undefined
behavior and None action are skipped. Existing registered lists are appended
to by this reader; no unconditional replacement/clear appears here. Missing
root child returns success. Nested child null/malformed safety is not
established by this code.

WorldBuilder data is a separate path: `SaveWorldBuilderData` stores dictionaries,
AdventureKey and NPC flag under `TombObjectComponent`. Loading iterates current
objects, creates eligible dynamic components, restores links only for existing
registered triggers and restores action text/FX only for registered actions.
It also accepts the older `TombObjectComponent.WorldBuilderSaveInfo` form.
`RemoveLinksToDeletedObjects` removes unresolved, destroyed or different-lot
targets when component changes. This establishes the intended lot-scoped link
maintenance, while activation itself performs no additional same-lot test.

These readers/writers prove **portable object/lot export and WorldBuilder
configuration**, not successful running-game save restoration. Persistable
object fields, callback re-registration, object identity remapping and native
world storage are distinct parts of the complete save system.

## Concrete puzzle producers and state machines

| Object | Trigger/action and local state | Original evidence |
| --- | --- | --- |
| FloorSwitch | `StepOn`, `StepOff`, Reset, Appear/Disappear; int occupancy count | [FloorSwitch C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.FloorSwitch.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.FloorSwitch.il.txt)) |
| TriggerPanel | invisible gameplay footprint volume emits HiddenSwitch while InWorld | [TriggerPanel C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TriggerPanel.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TriggerPanel.il.txt)) |
| KeystonePanel | correct inventory key, animated insertion and InsertKeystone; travel-household named-key reset | [KeystonePanel C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.il.txt)) |
| PushableStatue | Pushed/Pulled/Moved/ActivatedSomethingElse; nearby switch and trap consumers | [PushableStatue C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.PushableStatue.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.PushableStatue.il.txt)) |
| LogicGate | eight inputs/outputs, clock/tick/reset and inverse input actions | [LogicGate C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.LogicGate.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.LogicGate.il.txt)) |
| SecretDoor / rotating wall | discovery, openness, lock, deferred close and portal producer | [SecretDoor C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.SecretDoor.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.SecretDoor.il.txt)); [RotatingWallDoor C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.RotatingWallDoor.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Door.RotatingWallDoor.il.txt)) |
| TombTrap | dormant/armed/visible/firing/disarmed state, footprint entry and alarms | [TombTrap C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TombTrap.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TombTrap.il.txt)) |
| Wall lamp / small hole | PullLever / HiddenSwitch interactions and inspected/pulled state | [WallLampLever C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.WallLampLever.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.WallLampLever.il.txt)); [SmallHole C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.SmallHole.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.SmallHole.il.txt)) |
| Rubble | remaining work -> geometry/footprint state -> RubbleCleared | [RubblePile C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.RubblePile.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.RubblePile.il.txt)) |
| TreasureChest | Open/InsertKeystone plus loot-specific opening state | [TreasureChest C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TreasureChest.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.TreasureChest.il.txt)) |
| Sarcophagus | Open trigger, ReleaseTombMummy action, AlreadyCreated guard | [Sarcophagus C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.Sarcophagus.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.Sarcophagus.il.txt)) |

### Floor switch and statue occupancy

`CurrentlyPressed` means `mNumPresses > 0`. `PushSwitch` increments count
**before** checking whether it was already pressed or visible. Only a visible
0-to1 transition activates StepOn. Additional pushes return false while still
increasing occupancy. A switch is temporary exactly when StepOff is linked;
there is no separate temporary flag. Normal release affects a visible temporary
switch, or a visible switch during BuildBuy. Last release sets count0, stops
FX and activates StepOff; larger count decrements only. Forced hide can clear
all presses. Permanent gameplay release leaves its latched state.

`ResetSwitchState` clears count/FX then replays one push per nearby statue
within its1.2 search radius. Pushable statue movement separately calls
`ReleaseSwitch` around old position and `PushSwitch` around new position with
0.8 search radius when switch activation is allowed; matching floor traps are
covered/disarmed, wall traps can fire. Exact object footprints and placement
still use the [original footprint contract](../objects/footprint-queries.md).

Portable FloorSwitch state includes signed count147274329 and alternate
model146845013, plus base visibility. Reader accepts the old bool142619494;
true maps to count1, otherwise the current count is read. WorldBuilder loading
supports old CurrentlyPressed and queues activation until PostLoad so links
exist first. Preserve count, startup ordering and inverse actions together.

### Logic gates and clocks

There are eight bool input lanes and eight bool output lanes; a byte counter;
mode, clock state/reset clock state; period and jitter; alarm handle; and cached
connected-input flags. Aggregate logic considers only linked pins.

| Mode | Exact static rule |
| --- | --- |
| AND / OR | all / any connected inputs true |
| NAND / NOR | any connected input false / none true |
| XOR / NXOR | exactly one connected input true / true count is not1; **not parity** |
| NOT | per lane complement of input, including unconnected lanes |
| Toggle | each true input flips its corresponding output |
| Counter / RandomByte | increment byte then emit its eight bits; random first assigns a random byte |
| Cycler / RandomBit | increment byte then select `(count-1) % 8`; random first assigns a random byte |

Every true output activates its OutN trigger **on each tick**, even if it stayed
true. Optional fall/reset deactivation calls the inverse dispatcher. The default
options are23: deactivate outputs on tick and reset, clear inputs on
inverse/deactivate and reset; ClearInputsOnTick bit8 is initially off. Auto
clock ticks on input change unless an external Tick pin is connected.

Original IL uses `conv.u1` for byte increment and signed `rem` for cycler.
Consequently count255->0 makes `(0-1)%8 == -1`: that tick selects **no lane**.
This is not an assumed modulo8 wrap. Empty connected-pin sets yield AND/NOR
true, OR/NAND/XOR false, NXOR true.

Clock period clamps to at least2 seconds. Jitter is reduced to period-2, then
values below2 become0. Enabled clock installs a repeating AlwaysPersisted
alarm; optional jitter schedules a separate NeverPersisted tick. Reset clears
outputs, optionally inputs, count0, and restores reset-clock mode. Portable
reader/writer stores configuration and registers a post-import callback;
those methods do **not** serialize transient arrays/count/alarm state. Original
field metadata and whole IL are retained for game persistence analysis.

### Named keystone restoration

`KeystonePanel.OnAdventureReset(true)` creates a key and activates its linked
trigger only when containment is empty. The false case destroys the key and
deactivates the trigger only when a key is present. Already-correct containment
replays neither action. This idempotence is separate from traveller TombStats
merging; the [original KeystonePanel type](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.cs)
([IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.il.txt))
retains the writer and guard.

### Trap state transitions

TrapState uint values are0 DormantAndHidden,1 ArmedAndHidden,
2 ArmedAndVisible,3 FiringAndVisible,4 DisarmedAndVisible. EnterState rejects
unchanged transitions when requested and rejects when `CanTrapChangeInAnyMajorWay()` returns false.
Accepted transitions preserve previous state, remove one-shot off alarm,
update visual/music state, remove old armed broadcaster or firing FX, and
install new broadcaster/FX according to state. Firing emits TurnOn, checks
current Sims against routing footprint and begins sustained firing.

Arm only accepts dormant -> armed hidden. Appear can reveal an armed trap.
SetToFire accepts a state other than firing/disarmed; Deactivate only accepts
firing -> armed visible. Disarm sends any non-disarmed state to disarmed
visible. Dormant sends any non-dormant state to dormant hidden. FireOnce rejects
disarmed, enters firing and schedules DeleteOnReset alarm to return to recorded
previous state. Public behavior callbacks can return true after requesting a
transition even if the inner major-change predicate rejects it; a true callback
is not independent proof that geometry changed.

Armed traps register a lot trigger-volume callback by routing-footprint hash;
worldlot is excluded. Entry ignores child/below, carrying-child, unavailable
trap changes, the trap's own crossing interaction and an already queued
GetCaughtByTrap. A routing adult is emergency-interrupted and receives an
uncancellable fire-priority caught interaction. Tomb mummies only react to fire
and follow the sarcophagus disintegration path. This is a footprint/state rule,
not a timer-expiry result. No gameplay timeout was reproduced.

### Secret doors and remaining puzzle state

SecretDoor has separate discoverable, discovered and open/closed states.
Undiscovered or closed rejects passage; unhide alone does not open it. Open
behavior schedules a OneShotFunction, Close requests CloseWhenAble; Hide while
open waits for close and then hides at OnDoneMoving. NonAnimatedDoor animation
callbacks set openness and add/remove route portals, notify restrictions and
then update geometry. OnOpen also notifies TombRoomManager for adjacent-room
unfogging. Relevant producer: [NonAnimatedDoor C#](../../evidence/managed/types/Sims3.Gameplay.Abstracts.NonAnimatedDoor.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Abstracts.NonAnimatedDoor.il.txt)).

RotatingWallDoor adds inspected/auto-open and minimum/recommended athletic
requirements. Its inspection text distinguishes an Unlock link from a
KeystonePanel from a generic trigger lock. TreasureChest animated opening
emits Open and increments treasury statistics; loot state is separate from
inventory display. Rubble preserves total/remaining work and emits RubbleCleared
when geometry state reaches cleared, with footprint hidden. Sarcophagus marks
AlreadyCreated only after a mummy exit interaction is successfully queued;
failed exit destroys the new mummy. Complete combat, loot weighting and all
reward/object variants remain outside the reviewed subset.

## Room discovery, fog and route restrictions

[TombRoomManager C#](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomManager.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomManager.il.txt)) owns a short-room-ID table,
lot GUID, desired object opacities and world hooks.
[TombRoomInfo C#](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomInfo.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Controllers.TombRoomInfo.il.txt)) has FogStatus, name, tomb type,
final-room/text configuration, a per-SimDescriptionId visited dictionary and
completion-credit list; owner marker is Persistable(false). Marker collection
rebuilds ownership/table: a HiddenRoomMarker is NonTomb and wins a conflicting
room entry. TombRoomMarker count controls manager creation/removal.

`IsRoomFogged` is false for unknown/outside rooms. For EnabledAndDrawing it
requires a selected actor and returns true only if **none** of its household
member IDs has visited. Discovery is therefore shared across household members,
not one global room bool. Entering a tomb room unfogs and records all household
member IDs; first-time room statistic increments only on an actual unfogged
transition. Final-room credit is given once to each household Sim currently on
that lot; the completion list prevents repeating statistics. Portable
TombRoomInfo export writes settings only, not those history containers.

Fogging seeds markerType0 (FogOfExploration), sets object opacity0 and a fade
time; unfog clears seed and restores requested opacity, default1. Parented
objects use the ultimate parent's room. Doors touching an unfogged room are
kept visible. Arches and open NonAnimatedDoors can unfog adjacent rooms. Desired
opacity requests while fogged are remembered and restored later. BuildBuy,
pre/post export/import and household-change hooks un/refog appropriate rooms.

Before route planning, the manager adds RoomConnectionObjects and Stairs
connecting **at least one fogged room** to `AddObjectToForbiddenPortalList`.
Current EnterDoor/ClimbStairs target is the exception. It checks the actor's
current lot and a distinct destination lot. These are **local pathfinding
portals**, not world travel. This policy must be combined with the
[routing planner](../routing/planner-and-results.md) and door registration.

## Native producers, readers and instruction caveats

Object tomb room: [0x0078afa0 ASM](../../evidence/native/functions/0078AFA0_ScriptCore_World_World_GetObjectTombRoomIdImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/0078AFA0_ScriptCore_World_World_GetObjectTombRoomIdImpl.c)). Original full GUID lookup temporarily
retains the object; Location and Transform must exist. World Y minus
Location+0x24 vertical offset is converted to ordinary lot-local integer level,
then the light-blocking room is queried. Every failure returns AX0xffff
(signed short -1). It is not a new realm/scene identifier.

Room seed wrappers: [0x0078da80 ASM](../../evidence/native/functions/0078DA80_ScriptCore_World_World_SetRoomMarkerSeed.asm) ([annotated Ghidra C](../../evidence/native/functions/0078DA80_ScriptCore_World_World_SetRoomMarkerSeed.c)) and [0x0078db40 ASM](../../evidence/native/functions/0078DB40_World_ClearRoomMarkerSeed.asm) ([annotated Ghidra C](../../evidence/native/functions/0078DB40_World_ClearRoomMarkerSeed.c)) require existing
object Location and its owning lot. They silently ignore missing prerequisites.
The typed partition operations are [0x00b53130 ASM](../../evidence/native/functions/00B53130_LotPartition_SetRoomMarkerSeed.asm) ([annotated Ghidra C](../../evidence/native/functions/00B53130_LotPartition_SetRoomMarkerSeed.c)) and [0x00b53170 ASM](../../evidence/native/functions/00B53170_LotPartition_ClearRoomMarkerSeed.asm) ([annotated Ghidra C](../../evidence/native/functions/00B53170_LotPartition_ClearRoomMarkerSeed.c));
PublicRoom3 selects partition+0x4c, other markers+0x44. Strobe4 clearing also
removes the associated delay. Type dispatcher [0x00b530c0 ASM](../../evidence/native/functions/00B530C0_LotPartition_RefreshRoomMarkerType.asm) ([annotated Ghidra C](../../evidence/native/functions/00B530C0_LotPartition_RefreshRoomMarkerType.c)) selects the
appropriate room-set refresh; fog0 requires byte+0x11 enabled.

GUID tree lookup [0x00c03d70 ASM](../../evidence/native/functions/00C03D70_LotRoomSeedTree_FindGuidNode.asm) ([annotated Ghidra C](../../evidence/native/functions/00C03D70_LotRoomSeedTree_FindGuidNode.c)) compares both unsigned32 words. Seed payload
producer [0x00c05b90 ASM](../../evidence/native/functions/00C05B90_LotRoomSeeds_SetGuidLocationAndRoom.asm) ([annotated Ghidra C](../../evidence/native/functions/00C05B90_LotRoomSeeds_SetGuidLocationAndRoom.c)) and insertion [0x00c057b0 ASM](../../evidence/native/functions/00C057B0_LotRoomSeedTree_GetOrInsertLocation.asm) ([annotated Ghidra C](../../evidence/native/functions/00C057B0_LotRoomSeedTree_GetOrInsertLocation.c)) store localX/localZ
float and **signed int level**; `CMP`/`JL`/`JG` establish the third field.
Existing seed updates require changed level or x/z displacement above original
0.001f, then inclusive finite x/z bounds and signed level bounds; invalid
location yields short -1. Ghidra stack variable reuse can still display a
markerType variable overwritten by an iterator; it does not change the enum.
`COMISS` followed by carry branches rejects unordered bounds comparisons even
where simplified C comparisons obscure NaN handling.

Removal [0x00c042b0 ASM](../../evidence/native/functions/00C042B0_LotRoomSeeds_RemoveGuidAndReturnRoom.asm) ([annotated Ghidra C](../../evidence/native/functions/00C042B0_LotRoomSeeds_RemoveGuidAndReturnRoom.c)) returns previous AX room and frees the node.
Collection [0x00c07010 ASM](../../evidence/native/functions/00C07010_LotRoomSeeds_CollectUniqueNonzeroRooms.asm) ([annotated Ghidra C](../../evidence/native/functions/00C07010_LotRoomSeeds_CollectUniqueNonzeroRooms.c)) creates sorted unique **signed short** rooms,
excluding room0 only; there is no extra -1 filter. Fog-list producer
[0x00b52c40 ASM](../../evidence/native/functions/00B52C40_LotPartition_RefreshFoggedRoomList.asm) ([annotated Ghidra C](../../evidence/native/functions/00B52C40_LotPartition_RefreshFoggedRoomList.c)) compares cache, replaces it and emits room-set
message0x086b0c27 and related partition-boundary message0x08a283fb. Geometry
meshing and every final GPU consumer are still open.

Fade wrapper [0x007878f0 ASM](../../evidence/native/functions/007878F0_World_FogOfExplorationSetFadeTime.asm) ([annotated Ghidra C](../../evidence/native/functions/007878F0_World_FogOfExplorationSetFadeTime.c)) -> [0x00b474a0 ASM](../../evidence/native/functions/00B474A0_LotPartition_SetFogFadeSeconds.asm) ([annotated Ghidra C](../../evidence/native/functions/00B474A0_LotPartition_SetFogFadeSeconds.c)) -> [0x00adfbf0 ASM](../../evidence/native/functions/00ADFBF0_FogOfExploration_ExchangeFadeMilliseconds.asm) ([annotated Ghidra C](../../evidence/native/functions/00ADFBF0_FogOfExploration_ExchangeFadeMilliseconds.c))
multiplies seconds by original float999.99993896484375, uses x87 FISTP under
current rounding control, and atomically exchanges int32 duration, returning
previous value. It does not clamp negative/nonfinite values. Exact words are
in the [selected original constants](../../evidence/native/tomb-diving-constants.tsv).
Do not equate the decompiler ROUND notation with C#/host default rounding.

## What remains open

- Full native fog-boundary construction and final render-message consumers.
- Generic native managed-object game-save traversal and fresh-process history
  restoration; portable property streams alone do not prove this.
- All trap outcomes, fear/skill tuning, every loot/reward type, adventure quest
  opportunity state and authored package trigger graphs.
- Original runtime acceptance for multi-occupant switches, linked cycles,
  clocks at byte wrap, door-close use contention, trap interrupt and household
  revisit after actual travel/save/reload.
