# Residential visitors, ringing and greeting — PC 1.67

## Scope and evidence

The original distinguishes arriving on a lot, ringing or contacting a resident, being invited inside, household greeting membership, room access and a door's user lock. Several original branches deliberately bypass the bell. A newly arrived ordinary visitor does not become greeted solely because a lot-change notification occurred.

This guide follows pristine original Sims3GameplaySystems.dll C#/IL and the explicitly selected `/TS3W.exe`. The [managed evidence index](managed/README.md) describes the exports. [Decoded boundary call edges](managed/visitor-call-edges.tsv) expose additional original writers/readers, including service, social, party, school, apartment and travel paths. They are static IL sites, not executed calls. No original visit or OpenTS3 reproduction was executed.

## State owners and the actual greeting writer

[Sim members](managed/Sim.visitors.cs) ([IL](managed/Sim.visitors.il.txt)) and [Household members](managed/Household.visitors.cs) ([IL](managed/Household.visitors.il.txt)) establish the contract:

| Owner/state | Producer | Consumer and effect |
| --- | --- | --- |
| `Household.mGreetedLots`, a list of Lot references | `AddGreetedLotToHousehold` | Ordinary households' `IsGreetedOnLot` checks this shared list. One member can establish greeting membership used by other members. |
| `Household.mSimsGreetedOnLot`, lot ID to ObjectGuid list | The same writer adds the supplied individual object ID | Service and tourist households require the checked individual GUID in this map. |
| `Sim.GreetSimOnLot` | Social acceptance, AlreadyGreeted, original special cases and inside-room transition | Calls the household writer, recalculates allowed rooms, and refreshes apartment lot-level HUD information. This method does not play a social greeting animation. |
| `VisitSituation` child state | Arrival, bell completion, outside-host social and invitation callbacks | Organizes guest/hosts, roles, interactions and waiting/leave alarms. Its child state and the household membership are related but separate values. |
| `Sim.mAllowedRooms` | Versioned portal traversal and room-restriction checks | Determines reachable allowed rooms for that Sim. It is marked `Persistable(false)` and is recalculated rather than granting every room after greeting. |

`AddGreetedLotToHousehold` ignores null and world lots, records learned rich information, then updates both collections without duplicate entries. `RemoveGreetedLotForHousehold` removes shared lot membership and the supplied individual ID, removes an empty per-lot list, and updates apartment level display where appropriate.

`Sim.IsGreetedOnLot` rejects null lot/household, returns true when `Lot.CanSimTreatAsHome` accepts home or owned property, otherwise asks the household. Household's reader always accepts base-camp lots. `Sim.IsOnAGreetedLot` uses household membership directly. These readers must retain their original distinctions.

`RemoveGreetedLotForSim` retains greeting when another household member remains on the old lot and qualifies under its outside flag. Otherwise it removes greeting for every instantiated household member. This explains why testing a second member after a previous visit requires checking shared household state, not just the new visitor's GUID.

## Normal VisitLot: arrival before the bell

The [complete VisitLot type](managed/VisitLot.cs) ([IL](managed/VisitLot.il.txt)) retains the actual entry interaction. Its `Definition.bRingDoorbell` defaults to **true**. `Definition.Test` rejects an actor already greeted on the target and then runs `Lot.CommonVisitTest`.

The original common visit test also applies household/front-door/callbox, time-of-day, party/celebrity, resident-at-home, child-autonomy, recent autonomous visit and home-lot restrictions with its explicit job/callbox exceptions. Passing this interaction test does not write greeting membership.

For a residential lot with a front door or callbox, outside an NPC-party path:

1. If the actor is on another lot, the interaction first routes toward the mailbox or lot boundary, including original horse/follower choices. It checks route success and that `Actor.LotCurrent == Target`; failure supplies `FailedToStart` and returns.
2. If already on the actor's virtual apartment home, it greets the actor and routes inside that home. This is an explicit apartment exception.
3. Unless `IgnoreOutdoorHosts` is set, it calls `Lot.CheckForHostWhenVisiting`.
4. Without an outside host it selects callbox, apartment public-door, electronic-gate continuation, human bell animation or pet door reaction. The ordinary door branch routes to the outdoor-side slots before playing the bell interaction.
5. Successful lot arrival calls `SimArrivedAtLot`, which calls `VisitSituation.SetVisitToVisitorHasRungDoorbell` and emits `kVisitLot`. The state name is not proof that an audio/script event actually fired: callboxes, gates, apartment and fallback paths can reach related arrival handling.

For a human ringing a normal front door, the interaction uses state machine **`ringDoorbell`**, enters `Enter`, registers one-shot script event **1001**, and animates `Exit`. The event calls `VisitLot.RingBell`, which finds the current front door and calls `Door.RingBell`. Pet visitors use their original scratch/reaction path and broadcast the effects.

The [complete original Door](../../evidence/managed/types/Sims3.Gameplay.Abstracts.Door.cs) ([IL](../../evidence/managed/types/Sims3.Gameplay.Abstracts.Door.il.txt)) contains the door's bell and portal interactions. `Door.RingBell` selects the household DoorbellSound or default sound, starts object audio and calls `BroadcastDoorbellEffects`. The broadcast sends noise reactions to indoor Sims, pet reactions and bird reactions. Neither method writes household greeting membership. Audio, disturbance and permission acceptance therefore require their own producers.

The callbox path chooses an at-home, awake, teen-or-older resident, calls through `PhoneService`, moves the visitor away from the callbox, and changes subsequent arrival flags. An electronic gate pushes its own ring interaction as a continuation. Those communication/tuning internals are not replaced with a normal-door assumption in this proof.

## Outside-host path and what residents know

[Lot's visitor members](managed/Lot.visitors.cs) ([IL](managed/Lot.visitors.il.txt)) preserve `CheckForHostWhenVisiting`. It first refuses a duplicate HostOutside state. When the visitor is already on the target lot and the lot has a household, it chooses the **first household Sim for which `IsAtHome && IsOutside`**. If a route was supplied, it can stop that route softly.

This method contains no distance, line-of-sight, hearing or perception gate. That is an original static property of this selection method. Other routing/social stages still have their own success and failure rules.

When a host is found, `VisitLot.Run` invokes `SetVisitToHostOutside`, updates the visit event/time and returns without taking its bell branch. It does **not** call `GreetSimOnLot` here. [VisitSituation](managed/VisitSituation.visitors.cs) ([IL](managed/VisitSituation.visitors.il.txt)) enters `HostOutside`, attempts the original chat/ask-to-go-inside social, then enters `VisitorWantsToComeIn`. If the outside-host social fails with `RouteFailed`, it queues another VisitLot with `IgnoreOutdoorHosts=true` and last-visit testing disabled, permitting the front-door fallback.

Thus an immediate decision to approach an outside resident can be original behavior. An immediate greeting-membership write is a different observation and requires identifying its caller.

## Situation creation, waiting and acceptance

`Sim.LotChanged` calls `VisitSituation.Create` for a non-home owned lot while not shutting down. `Sim.RoomChanged` also ensures a situation exists. Ordinary situation creation selects `ArrivedOnLot`; its existence alone does not grant entry.

`VisitSituation.Create` excludes community lots, null current lots, home lots, unowned lots and wild animals. The original contains explicit greeting exceptions:

| Original case | Result |
| --- | --- |
| Bonehilda or a nonplayable ghost | While in world, calls `GreetSimOnLot`, then returns without a normal visitor situation. |
| School-assigned visit or occupation job on this lot | Writes greeting and continues the appropriate situation path. |
| Group leader's home is the visited lot | Writes greeting and enters socializing; subsequent original service/invitation checks still execute. |
| Service `NPCIsAutomaticallyGreeted` | Enters `AlreadyGreeted`. |
| Recent allowed-to-stay-over relationship record | Sets AllowedToStayOver and enters `AlreadyGreeted`. |
| Already greeted according to the actual reader | Enters `AlreadyGreeted`. |
| Ordinary guest with a host | Enters `ArrivedOnLot`. |
| No available host | Original job/service/foreign/left-alone branches decide the result; no generic automatic acceptance is introduced. |

`AlreadyGreeted.Init` writes greeting membership. `IsInvitedOver` checks nonzero relationship stay-over timestamps for the guest's matching SimDescription side and elapsed days against normal/descendant permission defaults. [Social callbacks](managed/SocialCallback.visitors.cs) ([IL](managed/SocialCallback.visitors.il.txt)) include the writers of those timestamps and direct greeting on invitation/stay-over acceptance.

`VisitorWantsToComeIn.Init` first checks existing greeting. Otherwise it uses an available friendly host; NPC hosts can run the hidden [InviteInOrRefuseEntrance interaction](managed/InviteInOrRefuseEntrance.cs) ([IL](managed/InviteInOrRefuseEntrance.il.txt)). A selectable host does not receive the same autonomous invitation. Descendant visitors have their original ancestor-hug path.

`InviteInOrRefuseEntrance` compares an existing relationship's LTR liking against `kLTRThresholdForInviteIn`, authored default **-20**. Below it, humans get Refuse Entrance and pets get ShooNeighborPet. Otherwise humans get Invite In; the pet acceptance path calls `VisitSituation.OnInvitedIn` directly. These are original `[Tunable]` defaults, not proof of every installed tuning override.

The human acceptance chain is:

`SocialCallback.Greet → InviteIn → InviteInSingleTarget → VisitSituation.OnInvitedIn → mGuest.GreetSimOnLot(Lot)`.

The callback updates `WhenInvitedIn`, handles foreign-visitor stay-over permission and pet behavior, then enters `Socializing`. Followers are processed individually. Human guests subsequently receive GoInsideLotAndSocialize; the host also receives its original inside interaction. Outdoor-host AllowedIn callbacks lead to the same invitation writer when the host is at home and the visitor is on its lot.

The original waiting state has a greeting alarm, idle/group-talk interaction, heading-off-lot checks and retry alarm. Authored defaults include `sMaxWaitForGreeting=1` **hour**, `kWaitTimeToRetryGreet=2` **minutes**, and at most `kInviteInNumRetries=3` retries. Foreign visitors and invitation-related idle waits use their own defaults. Alarm expiry normally enters GuestLeavesAfterWaitingTooLong. The `DoesLotRequireGreeting` exception requires no front door and a host/guest conversation recorded since this visit was created; it can enter AlreadyGreeted instead. These are gameplay waiting states, not native routing timeout measurements.

## Automatic greeting on an inside-room transition

The concrete automatic writer relevant to an apparently premature greeting is `Sim.RoomChanged`. After the base callback, inside/outside event and lighting updates, it calls `GreetSimOnLot(LotCurrent)` only when **all** of these are true:

- `GameStates.IsInWorld()`;
- `GlobalFunctions.IsInside(Position.x, Position.y, Position.z, 0f)`;
- `Level >= 0`;
- the lot is residential and is not residentially owned by this Sim;
- `!IsOnAGreetedLot`;
- `!IsInPublicResidentialRoom`.

There is no bell or host-awareness test inside that conditional. The positive inside predicate is nevertheless essential: merely crossing an outdoor lot boundary does not satisfy it.

[GameObject's cache writer](managed/GameObject.visitors.cs) ([IL](managed/GameObject.visitors.il.txt)) sets level first in `InternalOnSetRoomAndLevel`. When the lot or room changes it writes `mRoomId`, calls virtual `RoomChanged`, then updates the commodity interaction map. Cached level/room/lot fields are marked `Persistable(false)`. The supplied room/previous-room notification and the point query inside Sim.RoomChanged are separate values and can disagree if a replacement engine supplies inconsistent classification or timing.

Sim's override surrounds that base call with dynamic-footprint pre/post updates. `Sim.NeedsToBeGreeted` is another reader: it checks household/roommate and group exceptions, relationship `WhenLastGreeted` and elapsed greeting duration, plus the home/visitor relationship. A social greeting timestamp should not be substituted for the household's lot-access collections.

### The original inside predicate and native ABI

[GlobalFunctions](managed/GlobalFunctions.visitors.cs) ([IL](managed/GlobalFunctions.visitors.il.txt)) obtains `LotLocation` through World, then explicitly queries **LightBlocking** and tests the signed result **greater than zero**. Its `IsOutside` variant tests the same query for zero. An invalid result -1 satisfies neither predicate. `LotManager.RoomIdIsOutside`, in contrast, explicitly accepts 0 **or -1**; callers must not interchange those tests.

Original [LotLocation](managed/LotLocation.cs) ([IL](managed/LotLocation.il.txt)) is 12 bytes: signed int X at 0, signed int Z at 4, signed byte level at 8, padding at 9, signed short room at 10. [eRoomDefinition](managed/eRoomDefinition.cs) ([IL](managed/eRoomDefinition.il.txt)) defines LightBlocking 0, LoadBearing 1, PlacementBlocking 2, Platform 3 and Unspecified -1; default is PlacementBlocking.

[World_GetRoomIdImpl ASM](../../evidence/native/functions/007855F0_ScriptCore_World_World_GetRoomIdImpl.asm) ([actual annotated pseudocode](../../evidence/native/functions/007855F0_ScriptCore_World_World_GetRoomIdImpl.c)) is cdecl with a 64-bit lot ID, the 12-byte location by value and an int32 room definition. Original CVTSI2SS converts signed X/Z and MOVSX sign-extends the level. It ignores the location's existing mRoom, queries the selected room owner and returns signed Int16 in AX. Missing world, lot or room owner returns `0xffff`, interpreted by this managed API as **-1**.

[Room resolver ASM](../../evidence/native/functions/00B482C0_LotRoom_ResolveForLocalLocation.asm) ([pseudocode](../../evidence/native/functions/00B482C0_LotRoom_ResolveForLocalLocation.c)) selects the definition's query object, encodes local location and returns the room helper's unchanged AX; an invalid-location fallback flag of1 yields -1. This flag is separate from the room-definition selector. The [lot-coordinate contract](../world/lot-spatial-lookup.md) retains the underlying packed cell/quadrant lookup and coordinate producers.

[Objects_GetRoomId ASM](../../evidence/native/functions/00745340_ScriptCore_Objects_Objects_GetRoomId.asm) ([pseudocode](../../evidence/native/functions/00745340_ScriptCore_Objects_Objects_GetRoomId.c)) is a separate object-GUID query, returning signed int32 EAX from the borrowed spatial component's cached room field, or -1 when missing. It does not establish LightBlocking classification at an arbitrary point.

### IsOutside used for selecting a resident

`GameObject.IsOutside` calls `World.IsPositionOutside(Position)`. It does not invert GlobalFunctions.IsInside and does not read only cached RoomId.

[World_IsPositionOutsideImpl ASM](../../evidence/native/functions/00785490_ScriptCore_World_World_IsPositionOutsideImpl.asm) ([pseudocode](../../evidence/native/functions/00785490_ScriptCore_World_World_IsPositionOutsideImpl.c)) receives Vector3 by value and forwards its address with mode 0 to [the outside scan ASM](../../evidence/native/functions/00B02D50_WorldPosition_TestOutside.asm) ([pseudocode](../../evidence/native/functions/00B02D50_WorldPosition_TestOutside.c)). Missing world/containing lot returns true. Otherwise the scan converts world position to local XZ and an **integer** level, tests original coverage storage, then scans upward to the lot's signed maximum level. A coverage hit returns false. The first nonzero LightBlocking room uses cached outside classification. If LightBlocking and LoadBearing are both zero, it returns true; otherwise it scans the next level. AX is explicitly zero-extended to unsigned16 before passing the room to classification.

[Room-classifier ASM](../../evidence/native/functions/00B4C3E0_LotRoom_TestOutsideClassification.asm) ([pseudocode](../../evidence/native/functions/00B4C3E0_LotRoom_TestOutsideClassification.c)) returns true for room 0. Its cached branch uses [signed Int16 lower-bound ASM](../../evidence/native/functions/00ABA600_RoomIdRange_LowerBoundSigned16.asm) ([pseudocode](../../evidence/native/functions/00ABA600_RoomIdRange_LowerBoundSigned16.c)) and matching membership in the manager's room-ID range. The printed pointer self-comparison corresponds to an original LEA/CMP sequence comparing an iterator to itself plus two bytes; that check is always unequal and does not reject every room. The uncached branch has room-cell/coverage sampling and a half-cell-count threshold after special cases. Complete cache producers and coverage geometry are still open. Replacing this API with `RoomId == 0` loses original behavior for covered outdoor areas and upper rooms.

## Door permission callback and room reachability

`LotManager.PreWorldLoad` registers `World.OnPortalLockedCallback += PortalLockedCallback`. Original callback metadata is `(ulong lotId, ulong routingObjectId, ulong portalObjectId, short roomFrom, short roomTo, bool initialLockedSetting) → uint`. It resolves the lot and object GUIDs, then calls `Lot.OnPortalPathPlan`; a missing lot returns 0. The signed room arguments remain signed through managed promotion.

`Lot.PostWorldLoad` caches IPortalConnectionObject and subscribes `Sim.OnPortalPathPlan`. The first `Lot.PortalPathPlan` listener calls `Route.SetPortalLockStatus(lotId,true)`; removal of the last calls false. That flag enables managed portal classification, not household greeting membership. [PortalPlanEventArgs](managed/PortalPlanEventArgs.cs) ([IL](managed/PortalPlanEventArgs.il.txt)) starts `Locked` from the native input and `Discouraged=false`.

`Lot.OnPortalPathPlan` invokes each listener and catches its exception. Final result precedence is **Locked 1**, otherwise **Discouraged 3**, otherwise **Unlocked 2**; no listeners yields **0**. `Sim.OnPortalPathPlan` applies original door/species/service/tomb exceptions and other portal restrictions, including poles, stalls, horse jumps, elevators, diving boards and ladder discouragement. It contains no unconditional greeting writer. Native graph dispatch and callback packaging are documented in the [local portal contract](../routing/portals-and-stairs.md).

[CommonDoor's lock members](managed/CommonDoor.visitors.cs) ([IL](managed/CommonDoor.visitors.il.txt)) distinguish hidden rooms, privileged services, an ungreeted **stray**, one-way destination, horse geometry, fire exceptions, ignore-lock flags and user lock policies. Its lock enum is uint: Nobody 0, SelectedActor 1, SelectedHousehold 2, Anybody 3, Pets 4, OwnerList 5, VIPRoom 6. An ordinary human's ungreeted status is not represented by treating every door as user-locked. Lock changes refresh the lot's portal object-cache users.

`Sim.RecalculateAllowedRooms` performs breadth-first traversal from the current room, or room 0 for another lot, using IPortalConnectionObject. It asks `Lot.IsRoomRestricted`; callback refusal stops traversal. Each portal must permit the proposed source/destination transition. Elevator interiors enumerate connections; other objects use the adjoining room. Sentinel **36863** is excluded. The cached result stores the lot's object-cache version and is rebuilt after version changes. Greeting, public/hidden room state, privacy callbacks and a door's owner lock remain distinct producers and consumers.

## Static conclusions and comparison points

The original normal human VisitLot rings before invitation handling when no alternate branch applies. The original also permits outdoor-host contact, prior household greeting, home/property/base-camp recognition, social invitations, service/job/school/ghost exceptions and inside-room automatic greeting. A rule requiring a bell for every visitor would discard those branches.

For the reported premature-greeting behavior, a useful future comparison records the **first greeting writer and its caller**, shared household lists before arrival, VisitSituation child transitions, selected outside host, bell event 1001, actor level, supplied cached room/previous room, the explicit LightBlocking point query, public-room result and callback/lock result. It should distinguish a host-contact interaction from the actual greeting-membership mutation. Wrong room classification, update ordering, stale shared membership or an exceptional writer are possible comparison targets; none is established as an OpenTS3 defect by this static proof.

Seven native canonical pairs total **1396** complete original function-envelope bytes. Their bytes were checked against the original PE both in Ghidra and in exported contiguous ASM through each entry’s actual RET. Actual annotated Ghidra C is retained in the canonical paired files, and no original bytes were changed. Managed extraction/IL call decoding and static byte/ABI verification were executed. No visit, perception test, bell animation, gameplay alarm, route or save/reload test was run. Runtime perception, original tuning overrides, complete outside-cache production and all adjacent party/service interactions remain open boundaries.
