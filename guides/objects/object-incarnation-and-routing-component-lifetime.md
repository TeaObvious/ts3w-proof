# Object incarnation and routing component lifetime

Static PC1.67 original; existing managed binding names retained, other names are
analyst roles. Full owned Listing and actual annotated C are canonical.

## Actual pointer and component ownership

937F80 receives ECXregistry+fullUInt64GUID, RET8, returns a borrowed object pointer
or null through the original hash/sentinel. The leaf does not increment ownership.
934260 receives actual object pointer and a component mask, RET4, and searches that
object's component storage. A GUID being found later does not establish that an
older borrowed pointer identifies the same incarnation.

937E40 receives ECXregistry+fullUInt64GUID, RET8, BooleanAL. It temporarily retains
the found object, sends synchronous event5, calls actual owner virtual3C removal,
removes active membership, sets objectflag400000, unlinks the object hash, sends
event6 and releases temporary and registry references. Registry removal and final
component destruction/refcount are distinct boundaries. These instructions do not
establish a managed monitor or arbitrary cross-thread lookup/use safety guarantee.

74E4A0 resolves current registry, then fullGUID object, then the routing component
selected by011EA138, then speed setter. Physical cdecl3stackwords GUIDlow/high and
binary32speed, plainRET. 74DD90 resolves the same owners then option setter;
cdecl4stackwords GUIDlow/high,option,enabledword, plainRET. The raw enabled DWORD
is not proof every high bit is a semantic Boolean. Original binding metadata says
Boolean, while this wrapper forwards the stack word to its child setter.
Both functions now have complete flow-reachable Listing bodies:64 and66bytes.
The66byte function ends at its actual RET before14bytes ofCC padding. Prior
one-byte function placeholders did not establish executable function extents.

7561E0 resolves fullGUID, explicitly atomically retains the object, resets its
routing component, then atomically releases and calls destructor1 at last reference.
Its two GUID words are cdecl stack parameters and it returns void. This selected
retained acquisition differs from the two borrowed setter wrappers; no universal
original retain policy or host weak-reference protocol is inferred.

94D410's SACS driver vector belongs to the actual object component. Host/Animation
rig-resource gates precede advancing dirty walkers and checking native refcount1/
quiescence. Swap-last, end decrement and reload precede release. This does not prove
host released-driver sweep/timing or unknown-ID handling equivalent to the original.

## Canonical original bodies

- ScriptCore.RouteManager::RouteManager_SetCarSpeed: [ASM](../../evidence/native/functions/0074E4A0_ScriptCore_RouteManager_RouteManager_SetCarSpeed.asm) ([pseudocode](../../evidence/native/functions/0074E4A0_ScriptCore_RouteManager_RouteManager_SetCarSpeed.c)).
- ScriptCore.RouteManager::RouteManager_SetSteeringOption: [ASM](../../evidence/native/functions/0074DD90_ScriptCore_RouteManager_RouteManager_SetSteeringOption.asm) ([pseudocode](../../evidence/native/functions/0074DD90_ScriptCore_RouteManager_RouteManager_SetSteeringOption.c)).
- ScriptCore.RouteManager::RouteManager_ResetSteering: [ASM](../../evidence/native/functions/007561E0_ScriptCore_RouteManager_RouteManager_ResetSteering.asm) ([pseudocode](../../evidence/native/functions/007561E0_ScriptCore_RouteManager_RouteManager_ResetSteering.c)).
- ObjectRegistry_FindBorrowed: [ASM](../../evidence/native/functions/00937F80_ObjectRegistry_FindBorrowed.asm) ([pseudocode](../../evidence/native/functions/00937F80_ObjectRegistry_FindBorrowed.c)).
- ObjectRegistry_RemoveGuid: [ASM](../../evidence/native/functions/00937E40_ObjectRegistry_RemoveGuid.asm) ([pseudocode](../../evidence/native/functions/00937E40_ObjectRegistry_RemoveGuid.c)).
- Object_GetComponentByMask: [ASM](../../evidence/native/functions/00934260_Object_GetComponentByMask.asm) ([pseudocode](../../evidence/native/functions/00934260_Object_GetComponentByMask.c)).
- SACS_ComponentAdvanceAndCollectDrivers_94D410: [ASM](../../evidence/native/functions/0094D410_SACS_ComponentAdvanceAndCollectDrivers_94D410.asm) ([pseudocode](../../evidence/native/functions/0094D410_SACS_ComponentAdvanceAndCollectDrivers_94D410.c)).


## Current row consumers and independent pose/slot lifetime

Current RoutingObjectStates uses ObjectLifetimeWitness generation and exact weak
or configured strong owner identity to reject stale rows; pruning starts1024 and
then twice retained rows. Dictionary membership is synchronized but plain state
fields and check-then-use are not an original retained-component transaction.
Actual current CarMotion/route sound/forced terrain/FootprintBlocks consumers are
separate from recorded options with no reader here. Opaque private/lock-array
pointers are not copied native memory or a proved privacy/lock implementation.
The selected original937F80/934260/937E40 and74E4A0/74DD90/7561E0 establish current
object/component identity and distinct retain policies, not a universal host
weak-reference/cache/budget/lock algorithm.

WorldSlotRelationships dispatches effects, vehicle riders, held resident models,
strict ordinary attachment and provisional metadata through different owners.
SlotsHostBridge static constructor installs VehicleRiderSeats Query/Board into
VehicleSeatPersistence. Registry save capture calls Query under Gate and serializes
seat-localZero/Identity plus parent/slot; restoration places then calls Board.
These callbacks do not persist every provisional relationship map and are not the
transient saved Animation Parent record described by the attachment guide.
Actual callback-under-Gate/seat-lock ordering, static replacement/reset, private
ref-vector/result/error and full pose/query source boundaries remain open.

Current ObjectPoseCommands RefreshLocation uses LifecycleGate then identityGate
and may notify while held; broad Action catch performs no rollback. Resident
SetRotation/SetTransform currently do not consume supplied angle/matrix in their
MoveResident(null,null) branch. Native745020/745520/744D80 and actual productive
caller/report overlap require their distinct comparison before another repair;
existing454 pitch/roll and453 saved-parent issues must not be duplicated.
