# Existing-object pickup admission

This guide describes selected original PC1.67 native paths and their registered
managed callback. Analyst names identify established behavior; they are not
recovered original symbols. Physical instructions govern uncertain inferred C
arguments and calling conventions.

## Tool gate and ordinary admission

The tool-level predicate rejects null. Its buildable-shell category uses the
separate `011EE7B9` control before the ordinary `011EE7B8` move-objects shortcut.
The latter can return success before ordinary admission and subsequent catalog
exclusions. These are distinct controls; their complete producer policy is not
established here. The already canonical tool predicate remains unchanged.
[ASM](../../evidence/native/functions/00CFF9E0_HandTool_CanPickObject.asm) ([annotated pseudocode](../../evidence/native/functions/00CFF9E0_HandTool_CanPickObject.c)).

Ordinary admission receives six physical DWORD arguments, with low-byte Boolean
flags; ECX is not a required receiver. Equality with the current-held object
returns success. Otherwise native movement/catalog bit2 rejection and Sim
component rejection produce error4A. The buildable-shell branch returns success
immediately when its sixth low-byte flag is nonzero; otherwise it produces4A.
Script component membership qualifies the original pickup-rule event. A false
rule result produces4B for a root or63 for a child. An optional collector permits
later checks to continue instead of immediately stopping at the first failure.
Parent movement bit6 supplies immediate child skip-script and inherited
ignore-movement; it does not bypass the remaining gates. Context and mantle
association recursion are separate paths, not equivalent component tests.
[ASM](../../evidence/native/functions/00CCD330_ObjectPickup_CollectAdmissionErrors.asm) ([annotated pseudocode](../../evidence/native/functions/00CCD330_ObjectPickup_CollectAdmissionErrors.c)).

## Category and component inputs

The buildable-shell predicate resolves object catalog data and tests bit26 of
catalog+98. Missing catalog returns zero. This field is distinct from effective
build-category+D0 and movement flags+A8.
[ASM](../../evidence/native/functions/00B04980_ObjectCatalog_HasBuildableShellFlag.asm) ([annotated pseudocode](../../evidence/native/functions/00B04980_ObjectCatalog_HasBuildableShellFlag.c)).

Sim membership intersects object component mask+2C with selector global011EA0FC.
[ASM](../../evidence/native/functions/00AFC7C0_Object_HasSimComponent.asm) ([annotated pseudocode](../../evidence/native/functions/00AFC7C0_Object_HasSimComponent.c)).
The default registration initializer and existing descriptor table establish
Script, Sim and Slot names, registration order and callback associations.
[Initializer ASM](../../evidence/native/functions/00932A30_ObjectRegistry_RegisterDefaultComponents.asm) ([annotated pseudocode](../../evidence/native/functions/00932A30_ObjectRegistry_RegisterDefaultComponents.c)).
[Original descriptor data](../../evidence/objects/component-descriptors.tsv)
and [component registration contract](../objects/object-handling.md) retain the
actual factory/name records. Imported zero-fill bytes at selector globals are
not their initialized runtime masks. Fresh-registry ordinal masks do not justify
hardcoding a selector value independently of the registration state.

Slot lookup and containment remain their original authorities.
[Slot component ASM](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.asm) ([annotated pseudocode](../../evidence/native/functions/00C98660_ObjectProduct_ReadCatalog.c)).
[Slot membership ASM](../../evidence/native/functions/00AFC3F0_Object_HasSteeringWithoutSim.asm) ([annotated pseudocode](../../evidence/native/functions/00AFC3F0_Object_HasSteeringWithoutSim.c)).
Duplicate/unnamed slots and mantle recursion are not resolved by substituting
name hashes for physical indices or inventing child geometry.

## Original callback boundary

The native dispatcher transports object GUID64 as two stack DWORDs, uses a plain
RET with caller cleanup and returns the callback's low-byte result. Its inferred
no-argument/stdcall C signature is incomplete. It dispatches World event19 once;
native movement/component admission belongs to the caller.
[ASM](../../evidence/native/functions/0078FAA0_World_DispatchHandToolAllowUserPickup.asm) ([annotated pseudocode](../../evidence/native/functions/0078FAA0_World_DispatchHandToolAllowUserPickup.c)).

The selected original SimIFace callback is Boolean(UInt64). Its27-byte CIL checks
the registered delegate, invokes it with the object event arguments when present,
and returns false when absent. It does not implement native catalog/component
admission. [Original CIL](../../evidence/managed/selected/object-pickup-callback/SimIFace.il.txt)
([existing managed decompilation](../callbacks/managed/Sims3.SimIFace.World.cs)).
The [event map](../callbacks/event-map.json) associates this method with event19.

## Property/context boundary

A byte-global gate decides whether the context path runs. Its selected body does
not establish a region, parcel or geometry meaning for that flag.
[ASM](../../evidence/native/functions/00AB0830_ObjectPickup_IsContextGateEnabled.asm) ([annotated pseudocode](../../evidence/native/functions/00AB0830_ObjectPickup_IsContextGateEnabled.c)).

The outer check obtains object context through68F130. A nonnull context invokes
virtual+0C with literal90566B0E. AtA64867 the instructions reload `[ESP+0C]`, then
push that word, the object and the getter result forA64790. The getter's cleanup
is not established, so the third argument cannot be declared an error collector
merely from inferred C. The null-context path supplies its corresponding stack
word, object and zero. The caller treats nonzero return as rejection.
[ASM](../../evidence/native/functions/00A64840_ObjectPickup_CheckPropertyContext.asm) ([annotated pseudocode](../../evidence/native/functions/00A64840_ObjectPickup_CheckPropertyContext.c)).

The inner check requires its gate, nonnull context andAB0A00. It obtains the
Location component using selector011EDF08, builds a local XZ/level/yaw request
and callsA64100. The latter's semantics and all input producer meanings remain
unresolved here; this is not a complete property-placement policy.
[ASM](../../evidence/native/functions/00A64790_ObjectPickup_CheckContextAtObjectLocation.asm) ([annotated pseudocode](../../evidence/native/functions/00A64790_ObjectPickup_CheckContextAtObjectLocation.c)).

## Refusal text

An existing string at receiver+2C is copied and returns success. Otherwise the
formatter builds a World/LotEditError request. With zero flags+28, the instruction
atAD73D5 loads a DWORD from `01183F60 + errorCode*4`. Error4A selects the exact
row01184088 pointing to ASCII key `CantBePickedup` at01068478. Placement-choice
flags select separate strings; arbitrary error enum names are not inferred.
[ASM](../../evidence/native/functions/00AD7170_BuildEditError_FormatText.asm) ([annotated pseudocode](../../evidence/native/functions/00AD7170_BuildEditError_FormatText.c)).
[Physical row and string](../../evidence/native/object-pickup-admission-data.tsv)
retain only the needed original data. The formatter has an ECX receiver, one
output-string DWORD and RET4.

## Lookup and coverage limits

[Incoming transfers](../../evidence/native/object-pickup-admission-incoming.tsv)
record physically verified CALL/JMP sources; a blank or unavailable caller body
is not fabricated coverage. The shared direct-call index records only encoded
E8 transfers, not inferred targets of indirect dispatch. Property getter cleanup,
A64100 policy, complete tool controls, mantle recursion and native collector
aggregation remain qualified. Static instructions and original CIL establish
these selected contracts; they are not runtime/gameplay observations.
