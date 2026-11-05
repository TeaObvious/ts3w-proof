# Scuba, underwater caves and World Adventures dive wells

## What is being transitioned

The inspected original PC1.67 scuba/cave/well paths operate on **objects and
levels of the current loaded world**. Scuba lots use underwater floor0 and
surface1. UnderwaterCave destinations are existing objects selected by configured
name; DiveWell destinations are existing wells. The actual move calls
Actor.SetPosition and SetForward, without entering the world-loader/travel
state machine in these reviewed paths. The user-visible tunnel/underwater
transition must therefore be distinguished from vacation or future world travel.
Original managed/native identities are in the [source index](../tombs/README.md).

This is static evidence. Complete original type IL and C# are retained, native
ABI and bytes were verified. No original game dive, camera animation, tunnel
exit, original resources or fresh save/reload was executed.

## Getting to the lot before diving

[ProxyGoToTargetsLotAndScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.ProxyGoToTargetsLotAndScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.ProxyGoToTargetsLotAndScubaDive.il.txt)) obtains the target lot centre,
sets Y from World.GetLevelHeight(x,z,**1**), creates a WaterSea hit and queues
GoHereAndScubaDive as continuation. Its queueing success alone is not a dive.

[GoHereAndScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDive.il.txt)) chooses SwimHere if distance squared is
below the boat threshold squared or actor is a mature mermaid; otherwise
BoatHere. It sets destination type OnSeaWater and pushes the movement
continuation. Only the **Completed** callback queues ScubaDive with the chosen
outfit variant. [GoHereAndScubaDiveWith C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDiveWith.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.GoHereAndScubaDiveWith.il.txt)) is the group continuation
context. Native boat/water routing is documented separately by the
[planner contract](../routing/planner-and-results.md).

The gate in [ScubaDiving C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDiving.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDiving.il.txt)) requires nonnull Sim and lot, human Sim,
DivingLot and no child-or-below or visible pregnancy. Tooltip checks reject
mummies and Repressurizing; non-NPC actors need the required Scuba skill level
for the lot. Hit testing requires WaterSea, a lot and camera-routable XZ. These
checks are split across ordinary and tooltip tests; reusing only one loses
original admission policy.

## Entering the underwater floor

[ScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.ScubaDive.il.txt)) begins by adding Scuba skill, copying actor position
and forward, and finding a good nearby location on **level0** using
AllowOnSlopes|AllowInSea. Failure returns false before the new posture. It
creates/adds a jig at that selected position; mermaid/NPC/outfit paths run
before the state machine. Ordinary non-mermaid, non-GrimReaper, non-bot actors
must successfully switch to normal or retro scuba outfit.

The method enters `ScubaPosture`, starting Surface, sets isMermaid, installs
one-shot events and requests InScuba:

| Event | Original side effect |
| --- | --- |
|101 TransitionCamera | If camera follows actor, display lot level0 and FollowSim with smart follow |
|102 FadeOut | Actor fade0.4 seconds, no destruction, no yield |
|103 FadeIn | Mermaid deficiency update, SetPosition(selected level0 point), SetForward, fade0.4 and HUD level notification |

The actor **moves at event103**, not at initial interaction enqueue. The new
ScubaDiving posture is assigned after the InScuba animation request; old
mermaid swimming posture preserves tail when appropriate. It starts bubbles
and emits kScubaDived. Cleanup removes all event handlers and destroys the jig.
A functioning placement query without state event delivery does not establish
an underwater transition.

The native display bridge is [0x00786730 ASM](../../evidence/native/functions/00786730_World_LotSetDisplayLevelImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/00786730_World_LotSetDisplayLevelImpl.c)) -> [0x00abf620 ASM](../../evidence/native/functions/00ABF620_Lot_SetDisplayLevel.asm) ([annotated Ghidra C](../../evidence/native/functions/00ABF620_Lot_SetDisplayLevel.c)).
It looks up full64 lot GUID and calls with requested signed level and flags
false,true,false. Missing lot/world is a silent no-op. The native setter clamps
to lot's lower bound and allowed upper display level, updates level+0x39c,
rebuilds per-level visibility and object/lot render state, and dispatches
level message0x041f76bb. It changes visibility of the already loaded lot.
Exact roof/upper-floor predicate is still open.

## Scuba posture, air, walk styles and cleanup

ScubaDiving owns Ocean.Singleton use-list membership, Sim, current state
machine, bubble effect and start time. Normal actors request ScubaDive walk
style and skill gain10 per sim minute; mature mermaids request MermaidDive.
Without LungsOfSteel or GrimReaper exemption, initial BreathingComfortably
lifetime uses eleven level entries45,60,90,120,150,180,210,240,270,300,330
sim minutes. These are original **tunable defaults**, not an assertion that
all loaded tuning resources retain those values.

The constructor calls Animation.EnableScubaDivingMode(id,isMatureMermaid),
creates BeAtDiveLot motive and Scuba Topic. OnExitPosture calls Reset, adds
non-mermaid Repressurizing using60 down to10 sim-minute per-level defaults,
stops skill gain, accounts elapsed HoursDiving, removes topic/motives and
runs base exit. Reset removes Ocean use membership, unrequests the selected
walk style, calls DisableScubaDivingMode, removes breathing buffs and
stops/disposes bubbles. Mermaid actors never create the bubble effect.

Native toggle [0x0073b260 ASM](../../evidence/native/functions/0073B260_Animation_EnableDisableScubaDivingMode.asm) ([annotated Ghidra C](../../evidence/native/functions/0073B260_Animation_EnableDisableScubaDivingMode.c)) uses full64 object lookup, a temporary object
retain and Animation component. It sets/clears **flags+0x2c bit0x80000** from
the enable byte. The supplied mermaid stack argument is **not read anywhere
in this original body**. Missing object/component is no-op. RET proves cdecl;
bool arguments occupy separate4-byte stack slots. The downstream consumer
of this Animation flag remains open; it is not a world-loading flag.

## Returning to the surface

[EndScubaDive C#](../../evidence/managed/types/Sims3.Gameplay.Scuba.EndScubaDive.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Scuba.EndScubaDive.il.txt)) requires ScubaDiving posture. It finds good location
on level1 for DivingLot, otherwise level0, with TemporaryPlacement|AllowInSea;
placement failure returns false. Outside a diving lot it overrides Y with
World.GetSeaLevel. It installs101/102/103 handlers on the posture state
machine, waits the remainder of the original10-minute idle default, then
requests InScuba. A user-cancel exit returns before the uncancellable Surface
request and posture replacement.

Accepted surface transition marks uncancellable and requests Surface. Only a selectable actor notifies HUD and performs the extra display-level1 update if no active-household Sim remains on the diving floor. TransitionCamera separately checks camera-follow and uses its selected level0/1.
It transfers to SwimmingInPool(Ocean), sets swim walk style/updates, retains
mermaid tail where needed, emits kReturnedToSurface and restores ordinary
swimwear for eligible actors. Event103 performs SetPosition/forward,
stops underwater bubbles and fades in. Cleanup removes handlers. This
location/posture/display sequence uses the same world and lot services.

## Underwater cave exploration and tunnels

Complete entry, state, writer/reader and exit evidence:
[UnderwaterCave C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCave.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCave.il.txt)).
Cave placement requires a DivingLot. Configuration has own name,
linked destination name and uint16 Scuba skill requirement. Discovery history
is a dictionary keyed by household member SimDescription IDs.

### Entry and exploration

1. Add actor to source reference list and route to origin slot, checking InUse.
2. Wait for tentacle and enable source footprint/push nearby Sims. Failed
   footprint acquisition disables it and clears origin slot.
3. StandardEntry and commodity updates; acquire UnderwaterCaveExplore,
   bind Cave/x, set isMermaid and request Enter/Explore states.
4. Compute exploration duration from Scuba level: original tunable defaults
   interpolate120 at0 to50 at maximum level, with jitter and lower clamp0.
5. Event201 hides model; stop bubbles; loop progress/air/reward logic runs.
6. After successful exploration, resolve linked destination and skill gate.
   Insufficient skill clears destination; failed transfer shows blocked text.
7. Rewards are separately selected from weighted reward configuration and
   added to inventory; failed inventory addition destroys reward. Cancellation
   waits remaining duration times original default0.2 before exit.

Destination lookup `GetNamedDestination` calls current
`Queries.GetObjects<IUnderwaterCaveDestination>()`, compares exact Name string
and randomly chooses a matching object. Duplicate names are allowed by this
lookup. There is no world-name or world-file lookup here and no requirement
that the destination belongs to the source lot. Its interface implementations
in this evidence are another cave and
[UnderwaterCaveSurfaceDestinationMarker C#](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCaveSurfaceDestinationMarker.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.Miscellaneous.UnderwaterCaveSurfaceDestinationMarker.il.txt)), whose
IsCave is false.

### AttemptToWarpDestinations contract

- Null or InUse destination returns false.
- For cave destination, uses origin slot number, adds actor reference, handles
  tentacle and asks to push Sims from the destination footprint. Push failure
  clears slot and returns false.
- Confirmation wording depends on household discovery at source. Accept adds
  actor to destination use list. Cave destination: SetPosition(destination,
  slot) and SetForward(slot forward). Surface marker: SetPosition(marker.Position).
- Rebinds state-machine Cave actor to destination; active Sim camera focuses
  if not already following.
- Decline disables destination footprint, clears destination and slot, but
  returns **true**. Therefore a true attempt result does not mean relocation.
- Other false exits do not universally clear destination reference. Its bool
  and destination state must both be followed in the Run method; do not turn
  this into an assumed all-or-nothing transaction.

After accepted transfer, source and cave destination discovery are credited
for every household member. A non-cave destination calls CancelPosture instead
of the underwater exit branch. A cave/no-destination branch installs202 show
and203 grab callbacks, may request Attacked, then Exit and restarts bubbles.
Successful exploration increments caves statistics and emits events. Reached
lot can be discovered by UnchartedIslandMarker; if actor stands on WorldLot,
it chooses the closest ordinary lot. This is **island discovery in the current
world**, not loading a hidden world.

Cleanup first calls base.Cleanup. If `!mUpdatedReferenceList` and the source already contains the actor reference, it returns before its additional cleanup. Otherwise it restores model visibility after StandardEntry when exit not completed,
removes source reference, disables source slot footprint, removes destination
use membership, disables destination slot, removes destination cave reference
and clears destination/slot. It also stops exploration FX. Reference-list and
use-list state are distinct. The original code can add destination references
at multiple tentacle stages; no simplified one-bool replacement is established.

The movement terminates at original object transform bridge
[0x00745020 ASM](../../evidence/native/functions/00745020_ScriptCore_Objects_Objects_SetPosition.asm) ([annotated Ghidra C](../../evidence/native/functions/00745020_ScriptCore_Objects_Objects_SetPosition.c)); local/world/parent, spatial updates and ownership are covered
by [object handling](../objects/object-handling.md). The tunnel move itself
does not allocate a new world or place a new world in memory.

### Cave reader/writer

| Portable property | Key | Reader default |
| --- | --- | --- |
| Name |245942407| null |
| Linked destination |245942411| null |
| Skill requirement uint16 |245945991|0 |
| Surface marker Name |246446549|null |

UnderwaterCave Import reads configuration, stops/restarts VFX and calls base
reader; WorldBuilder data uses UnderwaterCave Version1/Name/DestinationName/
ScubaSkillRequirement with old key remap. Its portable writer does **not** write
the discovery dictionary. That live persisted field and base game serialization
require separate save verification; exported configuration is not all history.

## World Adventures dive wells

[DiveWell C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.DiveWell.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.DiveWell.il.txt)) uses WarpWellType None,
ClosestWarpWell or NamedWarpWell. Closest search is restricted to other wells
on **same lot, same level**, also ClosestWarpWell type; selects minimum distance.
Named search scans existing current-world wells, compares configured own name
exactly and randomly selects duplicate matches. Source needs LotCurrent.
These names never identify a destination .world file.

AttemptToWarpWells rejects null/InUse, selects an unobstructed slot or searches
other slots while pushing Sims, then requires enabling destination footprint.
Failure clears/undoes slot footprint as shown in the original branches.
Accepted confirmation adds use-list membership, SetPosition(well,slot),
SetForward(slot), rebinds DiveWell in state machine and IK suffix, and optionally
focuses camera. Decline clears destination/slot and disables footprint while
still returning true. Successful branch therefore depends on retained
mWellToWarpTo as well as attempt bool, just as the underwater cave.

Dive interaction uses hidden-model callbacks, bubbles, progress stages,
TreasureComponent and household visited credit. Cleanup restores hidden flags
and Hydrophobic buff, disposes bubbles, disables source and destination slot
footprints, removes destination use-list membership and clears destination.
These are intra-world object transitions inside tomb puzzles.

Portable reader/writer stores:

| Field | Key | Reader rule |
| --- | --- | --- |
| Warp type uint32 |143308216| defined enum else None |
| Water color uint32 |144407944| defined enum else Aqua |
| Own name |144797548|null |
| Linked name |144797552|null |

WorldBuilder Version1 uses enum Type; old bool Type maps true to
ClosestWarpWell, false None. Color/Name/LinkedName then restore. The history
containers and live interaction state are separate from portable settings.

## Travel and tomb history connection

Tomb room discovery and named keystone puzzle state are household-aware.
KeystonePanel.PostWorldLoadAdventureFixup reads travel household's
mKeystonePanelsUsed by current WorldName. The reset creates the named used key
and activates its linked action only when containment is empty; it destroys
the key and deactivates the action only when a key is present and the panel
should be unused. Already-correct containment does not replay either action.
Evidence: [KeystonePanel C#](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.cs) ([original IL](../../evidence/managed/types/Sims3.Gameplay.Objects.TombObjects.KeystonePanel.il.txt)). The travel system's
SimDescription merge also carries TombStats; actual travel persistence and
world loading are reviewed separately. Do not reset puzzle history merely
because a Sim teleported through a cave or well.

## Open boundaries and execution status

- Native Animation bit0x80000 downstream consumer and full movement/pose
  blending policy; original flag producer is proven, full render result is not.
- DivingLot classification producer, placement solver for surface/floor,
  complete boat/water paths and camera/underwater render resources.
- Every cave reward, air pocket, tentacle timing, group continuation and
  inherited CancelPosture detail; enclosing original methods remain readable.
- Actual dive/cave/well playthrough, occupied destination refusal, confirmation
  decline, cancellation, independent world-travel save/return and fresh reload.

Executed checks were original DLL/package hashes, targeted original type
C#/IL generation, native original-byte comparison and static link/ABI review.
They are not original gameplay or OpenTS3 acceptance tests.
