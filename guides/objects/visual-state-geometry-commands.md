# VisualState reader, object events and geometry commands

## Evidence and scope

Static original PC1.67 TS3W evidence establishes the selected component reader,
event adapter, command producer and renderer store. Names are analyst assigned.
The original executable identity is recorded in the [central reference](../../references/retained-proof-overview.md).
Complete canonical pairs retain all selected original bytes and actual annotated
Ghidra pseudocode. This is not a gameplay run or a complete world-loading phase.

| Entry | Original code | Reviewed boundary |
| --- | --- | --- |
| 0095DC50 | [ASM](../../evidence/native/functions/0095DC50_VisualState_ReadVersionedComponentState.asm) ([Ghidra C](../../evidence/native/functions/0095DC50_VisualState_ReadVersionedComponentState.c)) | Complete306-byte versioned component reader |
| 0095FA20 | [ASM](../../evidence/native/functions/0095FA20_VisualState_HandleRegisteredObjectEvent.asm) ([Ghidra C](../../evidence/native/functions/0095FA20_VisualState_HandleRegisteredObjectEvent.c)) | Complete39-byte object-event adapter |
| 0095F890 | [ASM](../../evidence/native/functions/0095F890_VisualState_PublishSelectedObjectCommands.asm) ([Ghidra C](../../evidence/native/functions/0095F890_VisualState_PublishSelectedObjectCommands.c)) | Complete157-byte selected command publisher |
| 0095E350 | [ASM](../../evidence/native/functions/0095E350_VisualState_EnqueueGeometryStateByGuid.asm) ([Ghidra C](../../evidence/native/functions/0095E350_VisualState_EnqueueGeometryStateByGuid.c)) | Complete84-byte geometry command producer |
| 006FFCC0 | [ASM](../../evidence/native/functions/006FFCC0_RenderObject_StoreSceneModelGeometryState.asm) ([Ghidra C](../../evidence/native/functions/006FFCC0_RenderObject_StoreSceneModelGeometryState.c)) | Complete106-byte GUID lookup and SceneModel state store |
| 0095FCB0 | [ASM](../../evidence/native/functions/0095FCB0_VisualState_RegisterObjectEventListeners.asm) ([Ghidra C](../../evidence/native/functions/0095FCB0_VisualState_RegisterObjectEventListeners.c)) | Complete206-byte listener registration; previous wall annotations preserved |
| 00703CA0 | [ASM](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.asm) ([Ghidra C](../../evidence/native/functions/00703CA0_RenderObject_HandleNotification.c)) | Complete5270-byte export; additional review is only opcode04D18170 comparison at70402F and command case704092 |

The [component descriptor](object-handling.md#descriptor-registration) identifies VisualState
and its component mask. Its name is original descriptor data; the helper names
above describe reviewed behavior, not recovered source symbols.

## Versioned component input

0095DC50 receives ECX component, reader pointer and version-descriptor pointer,
and returns with RET8. Version is an **unsigned UInt16** at descriptor+4. The
returned AL is the reader's status byte at+14.

| Version condition | Original input and write |
| --- | --- |
| version<7 | Read one byte; store its zero-extended value OR0x100 at component+8 |
| version>=7 | Read UInt16 using the reader's endian word; zero-extend into component+8 |
| every version | Normalize flags with maskFFE8991B, set8, conditionally set40 from the owner's component mask, then set20 |
| version<8 | Set flag800 |
| version<3 | Additionally set flag10 |
| every version | Catalog lookup from owner+18 controls flag100000 from catalog+9C mask2000; missing lookup clears it |
| version>=2 | Read UInt32 directly into component+14, the geometry-state word |
| version<2 | Store zero at component+14 |
| version>=5 | Read UInt32 into component+C |
| version<5 | Leave component+C untouched in this reader |

Primitive read results accumulate into the reader status after each read. The
method does not stop after a failed status or roll back earlier component writes.
The complete child stream/error behavior is separate. The original reader
pointer's stack slot is reused as byte/UInt16 output while EDI retains the
reader pointer: pointer-shaped scalar casts in the C are a decompiler artifact.
This reader sends no render command and does not invoke the registered event
adapter directly. The matching writer95DBE0 is separately verified in the [resident saved-state guide](../persistence/resident-visual-and-sim-state.md): lowUInt16flags, UInt32geometry+14, UInt32word+C with sticky streamAL and RET8. Complete manager-phase order remains outside this selected contract.

## Object-event registration and command order

0095FCB0 registers the exact0095FA20 callback for raw event IDs1,2,7 at priority0.
The other eleven registrations retain their original callbacks and previous
annotations. No semantic enum name or world-load ordering is inferred from
these three numeric IDs.

0095FA20 is cdecl with **two** physical stack pointers: object and event payload.
A null object or missing VisualState component returns AL1. Otherwise it obtains
the component and calls0095F890 with ECX component and one stack payload word.
The latter pops that word with RET4 but never reads it; both functions define a
Boolean in AL, not a meaningful whole-EAX status.

0095F890 always returns true. Its complete ordered work is:

1. If component+14 is nonzero, call0095E350 to enqueue the geometry-state command.
2. If flags mask8000 is set, call0095F540; that child remains unexpanded here.
3. If any flags mask1E0000 is set, call the previously reviewed snow-disable
   publisher0095E690 with false.
4. If the owner's component mask matches global11E9FC0 and component flags
   mask00000001 is clear, enqueue raw commandE128229B with the owner's full GUID
   and payload UInt32 zero. Invoke an optional temporary destructor afterward.

The initial nonzero gate applies to this particular event path. It does not
make zero an invalid geometry state for every producer or consumer.

## Command payload and renderer consumption

0095E350 is a void ECX method with no stack arguments. It builds a stack command:

| Message offset | Original contents |
| --- | --- |
| 0 | UInt32 opcode04D18170 |
| 4 | Initially null temporary-destructor pointer |
| 8/C | Full64-bit object GUID from component owner+8/+C |
| 10 | UInt32 geometry state from component+14 |

It invokes [the command enqueue helper](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.asm)
([annotated Ghidra C](../../evidence/native/functions/00693380_RenderCommand_EnqueueIfDispatcherExists.c)), then invokes
the optional temporary destructor. This helper's invocation is distinct from
renderer application, resource preparation and readiness.

In00703CA0, opcode04D18170 selects704092. The instructions physically push state,
GUID high and GUID low before calling006FFCC0 with ECX render manager. The handler
then forces AL1, ignoring the child's Boolean result, and returns with RET8 for
its own event/payload arguments.

006FFCC0 receives **UInt64 GUID followed by UInt32 state**, and returns RET12.
It copies the complete GUID for lookup, rejects the manager map sentinel/null
iterator/null adjusted object, and queries virtual slot+C using raw type ID017F1D88.
A null query result returns AL0. Success stores the third original stack word
at resolved SceneModel+2A4 and returns AL1. **Zero is accepted.** The virtual query
uses ECX receiver plus one callee-popped UInt32 type argument. Both that call ABI
and the three-word outer ABI are annotated in Ghidra; missing either cleanup or
the state parameter otherwise mislabels GUID high as the geometry state.

The existing [SceneModel constructor](../../evidence/native/functions/006F59A0_RenderComponent_InitializeSceneModel.asm)
([annotated Ghidra C](../../evidence/native/functions/006F59A0_RenderComponent_InitializeSceneModel.c)) initializes
+2A4 to zero. The [draw producer](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.asm)
([annotated Ghidra C](../../evidence/native/functions/006F60B0_RenderComponent_BuildDrawPacket.c)) copies it to
packet+30. The separate ordinal at+2B8 is not this state. The
[geometry-state lookup contract](geometry-state-and-vertex-declaration.md)
explains first-record zero selection, nonzero search and primitive suppression.

## Open boundaries

- The selected reader, event adapter and command consumer are concrete pieces;
  event1/2/7 producers, complete reader/event ordering and alternate state setters
  remain to be traced. Other opcode04D18170 consumers at702B30/703500 are separate
  unreviewed leads.
- No original rule is established for choosing between a current resident state,
  saved OBJN state and an explicit caller override. A project fallback chain
  cannot be authenticated by matching this command opcode alone.
- Command delivery, thread affinity, map/object lifetime, shutdown and resource
  residency need their actual producers/consumers. A true handler return or CPU
  state store does not establish draw completion or simulation readiness.
- Complete stream primitive failure behavior, full manager-phase publication order, unrelated
  VisualState flags and every branch of the large notification handler remain
  outside this selected static review. No runtime acceptance is claimed.

## Named live setter: null, empty and computed zero

The actual registered [78CF10 ASM](../../evidence/native/functions/0078CF10_ScriptCore_World_World_ObjectSetGeometryVisibilityState.asm) ([annotated C](../../evidence/native/functions/0078CF10_ScriptCore_World_World_ObjectSetGeometryVisibilityState.c)) is cdecl fullGUIDlow/high plus managed stringhandle. Missingregistry/object/VisualState, handle0 or null interface58 stringview returns without mutation. Otherwise the frontend obtains a hash and TEST EAX skips computed0 before calling the component setter. Fresh GhidrAssist returns zero owned Listing instructions at this existing frontend; this qualification reuses its canonical112byte window and independently verifies the103byte/42instruction CFG throughRET78CF76 against originalPE, with nineCCpadding excluded. No owned-body recovery, new function or fake Listing is claimed.

[7D0020 ASM](../../evidence/native/functions/007D0020_FUN_007d0020.asm) ([annotated C](../../evidence/native/functions/007D0020_FUN_007d0020.c)) measures UTF16units only up to firstNUL and calls the existing [7CFEC0 hash ASM](../../evidence/native/functions/007CFEC0_Hash_Fnv1CrtLowerUtf16Units.asm) ([annotated C](../../evidence/native/functions/007CFEC0_Hash_Fnv1CrtLowerUtf16Units.c)). EAX preserves the returned fullUInt32 across stackcleanup/POP/RET despite current decompiler void return. The existing hash body has66ownedbytes/28instructions in two ranges inside69byte envelope; three nonowned gapbytes stay excluded. Count0 returns811C9DC5, each countedunit is CRTtowlower then FNV1 multiply01000193/XOR. ASCII A/a gives050C5D7E; the printableASCII name `!ha!a'` gives0 and is skipped by78CF10. Actual loadedCRTlocale/nonASCII mapping remains separate.

Therefore null string is a no-op; empty string selects hash811C9DC5, not0. A nonempty name hashing0 is also a no-op. [95E890 ASM](../../evidence/native/functions/0095E890_FUN_0095e890.asm) ([annotated C](../../evidence/native/functions/0095E890_FUN_0095e890.c)) accepts any rawUInt32 internally, compares completeword+14, returns on equality, otherwise stores before95E350 command publication. It is void/RET4 withECXcomponent and one rawword. Saved reader95DC50's explicit0 remains valid and is not a null/empty spelling. Internal raw setter admission, frontend name admission and renderer zero-first-record selection are distinct rules. Nonzero unmatched state falls back to base ranges through the existing lookup/draw path; it is not universally primitive suppression.

This closes selected live-name transport, not global saved/live/explicit override precedence, original CRT/runtime/embedded-name marshaling, renderer queue delivery, object references, resource/LOD completion or GPU retirement. Hash lookup and a handled render command remain independent of readiness. Material-name normalization and material-only geometry preservation stay in their own contract.
