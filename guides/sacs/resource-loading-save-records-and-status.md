# Original resource loading, save records and SACS status

Static comparison of the centrally identified PC 1.67 executable, explicitly
selected as `/TS3W.exe` in Ghidra. Analyst names describe established roles;
they are not recovered original symbols. The 35 canonical pairs below retain
complete selected function envelopes and actual annotated Ghidra output.
Original bytes were compared with the pristine PE before and after saving the
Ghidra database. No retail gameplay was executed.

Physical argument words, register use, RET cleanup and AL/EAX result width take
precedence over inferred C declarations. In particular, the driver reader uses
RET8 and the walker reader/writer RET0C; their decompiler prototypes omit physical
arguments. The machine thunk preserves AL even though inferred C says void.
The age-hash envelope includes its eight-dword jump table and 64-byte selector
as explicitly nonowned referenced data, not extra function instructions.

## Resource acquisition and materialization

### SACS_AcquireDriverNoYieldImpl

[ASM 00767830](../../evidence/native/functions/00767830_ScriptCore_SACS_SACS_AcquireDriverNoYieldImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/00767830_ScriptCore_SACS_SACS_AcquireDriverNoYieldImpl.c)).

Registered original no-yield acquisition: validates host object/component, resource manager virtual+0C synchronous acquisition then00767370; selected errors FFFFFFF7/FFFFFFF8 distinguish failures. Physical64-bit host/key and signed priority ABI must follow original pushes, not inferred collapsed C. No project cache budgets or prewarm policy in this wrapper.

### SACS_AcquireDriverImpl

[ASM 007684C0](../../evidence/native/functions/007684C0_ScriptCore_SACS_SACS_AcquireDriverImpl.asm) ([annotated Ghidra C](../../evidence/native/functions/007684C0_ScriptCore_SACS_SACS_AcquireDriverImpl.c)).

Registered original acquire: object/component validation; manager cached lookup via+58 and async request route when not immediately cached; selected cached graph passed to00767370. Physical GUID/key/priority words take precedence over inferred parameter aliases across indirect calls. Native shared-resource boundary does not verify current LRU512/32MiB/233-byte estimate or mount generations.

### SACS_CreateDriverForComponent_767370

[ASM 00767370](../../evidence/native/functions/00767370_SACS_CreateDriverForComponent_767370.asm) ([annotated Ghidra C](../../evidence/native/functions/00767370_SACS_CreateDriverForComponent_767370.c)).

Selected actual obtained graph bound to newly created component-owned driver. Existing constructor/retain/handle publication evidence preserved. This is native mechanism; original managed StateMachineClient still owns gameplay acquisition/default/actor choices.

### JazzMachine_ResourceType

[ASM 007FDAA0](../../evidence/native/functions/007FDAA0_JazzMachine_ResourceType.asm) ([annotated Ghidra C](../../evidence/native/functions/007FDAA0_JazzMachine_ResourceType.c)).

Six-byte original leaf MOV EAX,02D5DF13; RET. VTable pointer010204C0; this identifies the state-machine resource independently of project class naming. No stack cleanup or resource loading in this leaf.

### JazzMachine_LoadResourceThunk

[ASM 007FEE50](../../evidence/native/functions/007FEE50_JazzMachine_LoadResourceThunk.asm) ([annotated Ghidra C](../../evidence/native/functions/007FEE50_JazzMachine_LoadResourceThunk.c)).

Resource VTable pointer010204B8 leads here; four physical stack words, RET10. Original args2..4 pushed to007FEAD0, arg1 loaded into ECX after two pushes. Reader AL is preserved by RET despite inferred void C. Body recovered from VTable data target and original reachable instructions with no overlap or byte patch; type getter is at010204C0.

### JazzMachine_ReadResource

[ASM 007FEAD0](../../evidence/native/functions/007FEAD0_JazzMachine_ReadResource.asm) ([annotated Ghidra C](../../evidence/native/functions/007FEAD0_JazzMachine_ReadResource.c)).

ECX machine; three physical stack words, RET0C, AL status. Byte length>=12; optional word swapping; unsigned version0200..02FF. Ordered packed actor, parameter, state lists fail AL0 on unresolved entries. Namespace triples require all three words nonzero. Version>0201 skips extra word before properties; priority0 leaves prior value, FFFFFFFE maps10000, other bits stored signed-compatible at+34; overlay6 leaves prior+38. Declared x/y actors cause absent Age(A4135FF7)/Species(E7B516CC) definitions to be injected. Wrapper materialization does not prove these defaults or null-index behavior. Decompiled remaining-length expression is a pointer/byte-count artifact: compare original SHR/IMUL/CMP before interpreting it.

### ResourceManager_BuildEnabledKeyNameMaps

[ASM 00735BD0](../../evidence/native/functions/00735BD0_ResourceManager_BuildEnabledKeyNameMaps.asm) ([annotated Ghidra C](../../evidence/native/functions/00735BD0_ResourceManager_BuildEnabledKeyNameMaps.c)).

Selected full body gates enumeration on manager byte+764; enumerates native name-map resources and builds retained list for lookup. Does not establish project mount-generation key, Volatile publication, monitor, background thread or cache budget. Resource-manager constructor enabling policy and ordering remain bounded beyond earlier reference.

## Saved driver, walker and stream records

### SacsDriver_WriteStateAndParameters

[ASM 008011D0](../../evidence/native/functions/008011D0_SacsDriver_WriteStateAndParameters.asm) ([annotated Ghidra C](../../evidence/native/functions/008011D0_SacsDriver_WriteStateAndParameters.c)).

ECX driver; RET8. Writes key, header/version/count and priority+30, actor rows via00800830, selected driver state, then separate byte-counted hash/text parameter lists; parameter hash0 may use definition default+34. Text emission007D94B0 is UTF16 count plus units. This native writer can save active state; current idle DTO zeros requests/clips/tracks and is not full native persistence. Existing prior bounded comments remain valid for selected parameter paths.

### SacsDriver_ReadSavedState

[ASM 008045C0](../../evidence/native/functions/008045C0_SacsDriver_ReadSavedState.asm) ([annotated Ghidra C](../../evidence/native/functions/008045C0_SacsDriver_ReadSavedState.c)).

ECX serialized-driver subobject; RET8 consumes two physical words despite inferred one-argument C. Selected header reads key, u16, version/count bytes, reserved dword; version>=1 reads signed priority bits to real driver+30, later versions skip words. Resolves graph through resource manager before restoring actors via00802E70 and declared parameters via007FD180/007FD400. Hash/text byte-count loops and stream+14 accumulated status are native; stack aliases and unaff_EBP/EDI constants in C are misleading. Original supports live queues/clips/tracks and object-table identity, unlike current idle DTO. Full failure transaction and all stream/object receiver contracts remain bounded.

### SacsWalker_WriteSavedState

[ASM 00800830](../../evidence/native/functions/00800830_SacsWalker_WriteSavedState.asm) ([annotated Ghidra C](../../evidence/native/functions/00800830_SacsWalker_WriteSavedState.c)).

ECX walker; RET0C consumes three physical words despite inferred two-argument C. Writes packed u16 flags from00800370, version/count bytes, two-word actor GUID, state hashes including current/previous/retained/pending/return, request flags/destination/status and queued entries. Delegates native clip and controller-tail serialization. Native queued/active state is not unconditionally zero; current quiescent writer is a subset. Stream status and callback/object-table child policy remain bounded.

### SacsWalker_ReadSavedState

[ASM 00802E70](../../evidence/native/functions/00802E70_SacsWalker_ReadSavedState.asm) ([annotated Ghidra C](../../evidence/native/functions/00802E70_SacsWalker_ReadSavedState.c)).

ECX walker; RET0C consumes three physical words despite inferred C. Reads versioned flags, GUID and counts; resolves state hashes using007FD7E0, restores requests via00802690 or queue insertion and dirty/scheduler publication. Native has clip records and controller/track reconstruction, so current consume/discard/unsupported-clip DTO is incomplete. Unknown states can resolve null. Actual saved execution-stack continuation is external to this reader; do not equate parsing with gameplay resumption.

### SacsControllerTracks_WriteSavedTail

[ASM 00804D50](../../evidence/native/functions/00804D50_SacsControllerTracks_WriteSavedTail.asm) ([annotated Ghidra C](../../evidence/native/functions/00804D50_SacsControllerTracks_WriteSavedTail.c)).

ECX controller-listener/track state; RET8. Writes version/flag/count byte header and native track records including two-word object IDs and per-state pairs; final dword follows. Native bound-object branch influences tail flag. Current writer emits empty tracks and a GUID-derived flag only; exact full track/object restoration remains bounded.

### StreamContext_WriteUtf16String

[ASM 007D94B0](../../evidence/native/functions/007D94B0_StreamContext_WriteUtf16String.asm) ([annotated Ghidra C](../../evidence/native/functions/007D94B0_StreamContext_WriteUtf16String.c)).

ECX stream context, one pointer RET4. u32 count=(end-begin)>>1, then UTF16 units without terminator through004DDEA0 only if accumulated status+14 stays nonzero. Stored host byte order comes from stream mode. This is not .NET string scalar-count or transactional writing.

### StreamContext_ReadUtf16String

[ASM 007D96B0](../../evidence/native/functions/007D96B0_StreamContext_ReadUtf16String.asm) ([annotated Ghidra C](../../evidence/native/functions/007D96B0_StreamContext_ReadUtf16String.c)).

ECX stream context, one output string pointer RET4. Read u32 unit count, AND stream status+14, resize via0040C640, read ushort units through004DD920 and accumulate status. No claim of .NET checked-int conversion or permissive short ReadBytes replacement behavior. Allocation/invalid-count limits are child contracts.

### Stream_WriteResourceKeyTGI

[ASM 007D7710](../../evidence/native/functions/007D7710_Stream_WriteResourceKeyTGI.asm) ([annotated Ghidra C](../../evidence/native/functions/007D7710_Stream_WriteResourceKeyTGI.c)).

cdecl three physical stack words/plain RET. Writes original key layout type, group, instance low/high using original stream helpers. Key storage and stream mode widths, not inferred .NET object shape, define the contract. Existing reviewed comments are preserved.

### SACS_FindGraphStateByHash

[ASM 007FD7E0](../../evidence/native/functions/007FD7E0_SACS_FindGraphStateByHash.asm) ([annotated Ghidra C](../../evidence/native/functions/007FD7E0_SACS_FindGraphStateByHash.c)).

ECX machine, one hash dword RET4; EAX matching state pointer or0. Used by saved-walker state restoration. A hash identity is not a chunk index or an object GUID; missing saved state can resolve null. Existing bounded annotations preserved.

### NativeObjectTable_ReadAndMaterialize

[ASM 007D4AE0](../../evidence/native/functions/007D4AE0_NativeObjectTable_ReadAndMaterialize.asm) ([annotated Ghidra C](../../evidence/native/functions/007D4AE0_NativeObjectTable_ReadAndMaterialize.c)).

Selected original NOBJ table read: validates header/version and stream status, reads reference metadata, resource lookup and object/factory allocation records before consuming object deserialization phases. Current C0000000 staged SACS tokens are not this native identity ABI. Whole generic object graph, all factory dispatch and saved VM-stack continuation remain separate contracts.

## Actor flags and authored state mutation

### AnimationActor_GetAgeParameterHash

[ASM 005C9720](../../evidence/native/functions/005C9720_AnimationActor_GetAgeParameterHash.asm) ([annotated Ghidra C](../../evidence/native/functions/005C9720_AnimationActor_GetAgeParameterHash.c)).

ECX actor with CAS flags+2F0; EAX uint32, RET. Mask7F, subtract1, unsigned compare3F; selector bytes005C978C..005C97CB index eight-entry jump table005C976C..005C978B. Exact age1/2/4/8/10/20/40 hashes5BF9CDE9/9F4202B7/FFF75A95/C62C1B35/9994B2AE/A4135FF7/3A256B2B; other masked values0. Full required selector/jump data exported as nonowned bytes after code.

### AnimationActor_GetSexParameterHash

[ASM 005C97D0](../../evidence/native/functions/005C97D0_AnimationActor_GetSexParameterHash.asm) ([annotated Ghidra C](../../evidence/native/functions/005C97D0_AnimationActor_GetSexParameterHash.c)).

ECX actor flags+2F0; mask3000.1000=>B976E27E,2000=>83651CD5, otherwise0. SETNE CL; SUB ECX,1; AND83651CD5 explains apparent Boolean-minus-one expression in C. EAX32-bit result/plain RET; no sign extension of hash.

### AnimationActor_GetSpeciesParameterHash

[ASM 005C9800](../../evidence/native/functions/005C9800_AnimationActor_GetSpeciesParameterHash.asm) ([annotated Ghidra C](../../evidence/native/functions/005C9800_AnimationActor_GetSpeciesParameterHash.c)).

ECX actor flags+2F0, maskCF00; exact100/200/300/400/500/600/700=>E7B516CC/E5C44E60/3A97A3BB/20953C2D/94BF68A1/75D5B2B9/06F93328; other masked values0. EAX32-bit/plain RET. This does not normalize missing species to Human; that normalization belongs rig-change comparison005E0B40.

### AnimationRig_SetCasFlagsAndDirtyState

[ASM 005E0B40](../../evidence/native/functions/005E0B40_AnimationRig_SetCasFlagsAndDirtyState.asm) ([annotated Ghidra C](../../evidence/native/functions/005E0B40_AnimationRig_SetCasFlagsAndDirtyState.c)).

ECX rig, one flags dword RET4. Dirty2000 iff XOR old/new has307F bits, or CF00 species differ after independently normalizing0 to100. Always OR4700, write raw flags+24, reset fields+14/+18 to1F; if actor+20 exists call005C9650. Current RequiresRigReset models only dirty2000 predicate, not all these side effects.

### AnimationActor_SetCasFlags

[ASM 005C9650](../../evidence/native/functions/005C9650_AnimationActor_SetCasFlags.asm) ([annotated Ghidra C](../../evidence/native/functions/005C9650_AnimationActor_SetCasFlags.c)).

ECX actor, one dword RET4; normalizes species0 to100 and reduces nonzero age7F/sex3000 masks to their least-set-bit positions through branch/shift arithmetic, then stores recomposed bits at+2F0. Zero-mask path supplies shift count32; x86 masks the count to0, producing bit0. Consumer of005E0B40; raw rig flags and actor-normalized flags are distinct. Full downstream rig/resource/scene update is not established by this leaf.

### SacsState_ApplyAuthoredFlagMask

[ASM 007FD650](../../evidence/native/functions/007FD650_SacsState_ApplyAuthoredFlagMask.asm) ([annotated Ghidra C](../../evidence/native/functions/007FD650_SacsState_ApplyAuthoredFlagMask.c)).

ECX state,two dwords RET8. Authored bits0..8 are conditional on mask and processed in increasing order. Entry/exit/loop/public effects inline; calls007FD5B0 one-shot,007FD480 hold,007FD390 join. Explicit+4E assigned from bit8 last. Final007FD200 packs actual resulting state flags into EAX; it is a getter, not explicit setter. Fresh all-mask reader path is distinct from partial mutation of existing state.

### SacsState_SetJoinFlag

[ASM 007FD390](../../evidence/native/functions/007FD390_SacsState_SetJoinFlag.asm) ([annotated Ghidra C](../../evidence/native/functions/007FD390_SacsState_SetJoinFlag.c)).

ECX state, lowbyte argument RET4. When join+4D changes to true, clear sync+4C; if public+4F was set clear public and loop/entry/exit/oneShot/hold bytes+50..54. When unchanged or set false no such clear. Explicit+4E is untouched here.

### SacsState_SetHoldFlag

[ASM 007FD480](../../evidence/native/functions/007FD480_SacsState_SetHoldFlag.asm) ([annotated Ghidra C](../../evidence/native/functions/007FD480_SacsState_SetHoldFlag.c)).

ECX state, lowbyte argument RET4. On hold+54 change to true, promote public+4F, clear join+4D/set explicit+4E as needed, clear loop+50 and call007FD5B0(false). Setter order, not independent bit tests, controls final state.

### SacsState_SetOneShotFlag

[ASM 007FD5B0](../../evidence/native/functions/007FD5B0_SacsState_SetOneShotFlag.asm) ([annotated Ghidra C](../../evidence/native/functions/007FD5B0_SacsState_SetOneShotFlag.c)).

ECX state, lowbyte argument RET4. On oneShot+53 change to true, promote public, set explicit+4E, clear loop+50/hold+54/join+4D. False/unchanged does not promote or clear. Hold setter depends on this asymmetry.

### SacsState_PackEffectiveFlags

[ASM 007FD200](../../evidence/native/functions/007FD200_SacsState_PackEffectiveFlags.asm) ([annotated Ghidra C](../../evidence/native/functions/007FD200_SacsState_PackEffectiveFlags.c)).

ECX state,no stack words/plain RET,EAX unsigned word of bits0..8. Maps public+4F,entry+51,exit+52,loop+50,oneShot+53,hold+54,sync+4C,join+4D,explicit+4E to 1..100. Pure getter; caller007FD650 uses it after authored mutation.

## Timing admission, group flush and listener state

### SacsContext_AdmitActorNode

[ASM 007F3DA0](../../evidence/native/functions/007F3DA0_SacsContext_AdmitActorNode.asm) ([annotated Ghidra C](../../evidence/native/functions/007F3DA0_SacsContext_AdmitActorNode.c)).

ECX evaluation context,two stack words RET8,AL admission. Machine unilateral bit1, driver mode+3C, requested actor definition identity, and other actor wrapper current+10/pending+1C determine admission. Different aliases sharing GUID are not automatically identical actor definitions. Upper EAX undefined beyondAL.

### SacsContext_UsesUnilateralTiming

[ASM 007F3D00](../../evidence/native/functions/007F3D00_SacsContext_UsesUnilateralTiming.asm) ([annotated Ghidra C](../../evidence/native/functions/007F3D00_SacsContext_UsesUnilateralTiming.c)).

ECX context,no stack words/plain RET,EAX0/1. True if machine properties+3C bit1 or driver mode+3C. This is a context predicate, not wall-clock time or a scheduler.

### SacsDecisionGraph_DispatchPhase

[ASM 007F4B50](../../evidence/native/functions/007F4B50_SacsDecisionGraph_DispatchPhase.asm) ([annotated Ghidra C](../../evidence/native/functions/007F4B50_SacsDecisionGraph_DispatchPhase.c)).

ECX graph,three stack words RET0C. Selected node phases dispatch before007F45E0 group flush; visited/context lifetime remains with graph. A single current C# lane-list pass is not established as native flush boundary. Existing phase/cleanup notes preserved.

### SacsDecisionGraph_FlushAnimationGroups

[ASM 007F45E0](../../evidence/native/functions/007F45E0_SacsDecisionGraph_FlushAnimationGroups.asm) ([annotated Ghidra C](../../evidence/native/functions/007F45E0_SacsDecisionGraph_FlushAnimationGroups.c)).

ECX graph,one phase dword RET4. Flush+release group+CC via00582760 then group+D0 via00582700; clear pointers and selected-master byte+D4. For phase2/3 also007F41B0. IDisposable abort,4096 cap and managed callback loop are observed project mechanisms, not original API.

### SacsWalker_TrySetExecutionStatus

[ASM 008019D0](../../evidence/native/functions/008019D0_SacsWalker_TrySetExecutionStatus.asm) ([annotated Ghidra C](../../evidence/native/functions/008019D0_SacsWalker_TrySetExecutionStatus.c)).

ECX walker,one signed dword RET4,AL accepted/rejected (upper EAX incidental). Zero can be refused when positive old status, blocking controller00804FB0 and00800150 says not idle. Positive transitions refuse old4;2/3/7 require blocking controller. Accepted<=0 clears selected clock, marks walker+0C/driver+146 and schedules; negative also calls008017A0. Current fixed CanBecomeIdle and ReadyVersion are projections, not native full side effects; current nonzero-negative guard differs.

### SacsDriver_CheckWalkerIdleReadiness

[ASM 00800150](../../evidence/native/functions/00800150_SacsDriver_CheckWalkerIdleReadiness.asm) ([annotated Ghidra C](../../evidence/native/functions/00800150_SacsDriver_CheckWalkerIdleReadiness.c)).

ECX driver,walker pointer RET4,AL readiness. With retained loop, no destination and entity, resolves animation component and selected priority (driver+38 or machine+34 at-2), obtains track remaining time0093CB30 and compares to manager+3C * float00FC2B9C. Above threshold attempts status2 and can immediate-schedule driver, returns false. Full component/track helper and float threshold constant interpretation remain bounded; no fixed C# bool is proven equivalent.

### SacsListener_HasBlockingController

[ASM 00804FB0](../../evidence/native/functions/00804FB0_SacsListener_HasBlockingController.asm) ([annotated Ghidra C](../../evidence/native/functions/00804FB0_SacsListener_HasBlockingController.c)).

ECX listener,no stack args/plain RET,AL result. Scans24-byte entries from+4 to+8; true when primary byte+D or controller identity+8 equals selected+14. Empty/all nonprimary unselected yieldsAL0; upper EAX pointer bits incidental. Actual list identity matters.

### SacsListener_EmitAnimationDoneOnce

[ASM 00804FE0](../../evidence/native/functions/00804FE0_SacsListener_EmitAnimationDoneOnce.asm) ([annotated Ghidra C](../../evidence/native/functions/00804FE0_SacsListener_EmitAnimationDoneOnce.c)).

ECX listener,controller identity RET4. Entry flag+E suppresses repeated completion emission; creates event type50/subtype5 with actor or synchronized special identity, dispatches via008019C0, readies active1/2/3/7 through008019D0 and clears listener mode when no requested destination. Full packet/queue delivery is a separate owner. Current completion queue/ReadyVersion are projections.

## Scope and implementation distinctions

The original saves active queues, clips and controller tracks. A quiescent DTO
with zero counts is a supported projection, not full save parity. Native stream
failure is accumulated in the stream context; checked .NET conversions and
permissive short ReadBytes behavior are not inferred from it.

Shared native acquisition does not establish a 512-entry/32-MiB LRU, a
233-byte node estimate, mount generations, volatile publication or background
prewarming. Likewise the managed 4096-pass guard, IDisposable abort and
ready-version counter are project mechanisms. Native readiness inspects actual
animation state and remaining track time; a supplied fixed Boolean does not
reproduce those side effects.

[Original managed client, post-load and wait consumers](managed-client-postload-and-waits.md)
explain why a native object-table record must not be equated with a reconstructed
managed script stack. Full live clip/object-table layout, generic manager
cancellation, and execution-stack continuation remain outside these selected
contracts. Boundary uncertainty is stated in each annotated pair.


## Current acquisition publication and missing-host defect

Current Lifetime.AcquireDriver incrementsIssueHandle beforeCreateDriver and only
publishesActive after creation/attach returns. Sceneinactive or nonJAZZ returns a
placeholder; no host/component lookup. Scene attach loads shared graph, resolves
Audio host, creates playback/runtime, replays parameters/actors, publishes receipt,
refreshes then enters/replays states. It has distinct partial allocation/log/load
failure and handle-gap boundaries, no full native transaction or refcount proof.
NoYield raw logs after publication; yielding raw setsCallback afterward and queues
only when Runtime absent. Original ScriptCore/SimIFace acquisition/yield/error
consumers remain in existing managed dossier, not duplicated project gameplay.

Bug442 confirms actual compiled public noyield acquisition for missingGUID0 and
123456789ABCDEF0 returnshandles1/2 and publishesplaceholder, while original767830
resolves host before graph and returnsFFFFFFF7. Missing SACS component returns
FFFFFFF8. No scene/validgraph/installed/proprietary resource is needed to expose
that first missing-host category. The check ends with emptyactive table after
stopping both placeholders. Product correction needs productive identity/component/
load-order witness, not guessedglobalinitialized guard or exception suppression.
No game/save/timeoutcause/native runtime equivalence is claimed.
