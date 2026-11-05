# Hidden flags from native component state

Original shipped PC1.67 TS3W.exe, static complete body/physical ABI review.
No C# state, fixture, renderer, routing callback or gameplay run was performed.
Names on internal leaves are analyst assignments; frontend identity is original.

| Entry | Role | Complete original pair |
| --- | --- | --- |
| 0078D7A0 | ScriptCore.World::World_ObjectGetHiddenFlags | [ASM](../../evidence/native/functions/0078D7A0_ScriptCore_World_World_ObjectGetHiddenFlags.asm) ([annotated C](../../evidence/native/functions/0078D7A0_ScriptCore_World_World_ObjectGetHiddenFlags.c)) |
| 00944980 | FootprintComponent_IsRegisteredBit, established analyst name retained | [ASM](../../evidence/native/functions/00944980_FootprintComponent_IsRegisteredBit.asm) ([annotated C](../../evidence/native/functions/00944980_FootprintComponent_IsRegisteredBit.c)) |
| 00946050 | FootprintComponent_SetEnabledAndNotifyRouting | [ASM](../../evidence/native/functions/00946050_FootprintComponent_SetEnabledAndNotifyRouting.asm) ([annotated C](../../evidence/native/functions/00946050_FootprintComponent_SetEnabledAndNotifyRouting.c)) |

## Original result, presence and ABI

78D7A0 is complete105bytes/42instructions, physical cdecl GUIDlow/high DWORD slots
at+4/+8, UInt32EAX, plainRET on two exits. It initializesEDI0 and returns0 if global
registry or object resolution fails. The raw low/high words are both pushed to
borrowed object lookup. VisualState resolves independently through global11EA2A8;
only if present and its+8 LOWBYTEbit0 isclear does resultbit0 become1. Footprint
resolves through global11E9FA8; only if present and944980AL is0 does resultbit1
become2. Absence of either component contributes0, independently. Result0/1/2/3
does not return unknown setter bits or effective parent/room/renderer visibility.
Managed identity remains UInt64->UInt32; physical two-word metadata closes stack
use without changing the registered export. The old bounded112-byte catalog
window included7padding bytes after finalRET78D808; actual owned body already
existed and required no Listing or body recovery.

944980 is complete8bytes/3instructions: MOVZX EAX,byte[ECX+40];AND EAX,1;RET.
ECX is the component, no stack arguments, FULLUInt32EAX0/1 is defined. MOVZX
zero-extends the load and the full-register AND defines all32bits. The78D7A0
frontend testsAL; that consumer does not weaken the leaf's full-width result.
Existing analyst name
FootprintComponent_IsRegisteredBit and
fastcall firstECXparameter convention are retained for other canonical callers.
That name does not establish equivalence with a router registration receipt.

946050 is complete136bytes/56instructions, thiscall two stackwords RET8void.
IncomingECX component is savedESI; first argument's LOWBYTE goes toBL. It compares
rawBL to component+40bit0 and returns immediately ifequal. Otherwise it queries
the router and previous owner participation when available, using the full second
routing option word. ZeroBL clears the lowbit viaANDbyteFE, any nonzeroBL sets it
viaORbyte1; other bits are preserved. The component bit changes even with no
router. With a router, an additional owner predicate and new lowbit gate the
active notification;8330A0 receives owner, newpredicate, priorparticipation and
unchanged routing option word. No stableEAXreturn is inferred. Full router/query/
notification callbacks retain their separate owners and are not implemented by
this pure getter projection. Component lowbit enable, actual router membership
and per-area enabled mask4 are distinct facts.

## Host projection scope and limits

A supported query supplies explicit hasVisualState, baseVisible, hasFootprint,
footprintEnabled facts. Present hidden base contributes1; present disabled
Footprint contributes2. No component means0 even if its unused value input isfalse.
Both present/hidden/disabled yields3. In particular visible+disabledFootprint must
return2: a base-only resident getter loses that result. Parent/save/render masks
must not contaminate the base query. Setter inputflag4 is not a query output4.

The source component profile is admitted from actual layouts/hashes under owner
locks, not guessed from model identity or absent disabled-set entries. Resident
current-world/retired admission and actual disabled-state writer/reset ordering
must remain in the host contract. The existing host baseline defaults true/true
when no live override exists; it does not restore SourceVisualStateWord. Initial
authored/source state restoration stays in the separate visibility owner; this
projection alone does not establish complete current-native state equivalence. Unknown-provenance and non-held attached raw
compatibility profiles remain explicit legacy scope. Native missing registry/
object returns0, but this selected value unit does not establish the entire host
bridge fallback, destroy-unwind or original borrowed-reference lifetime.

## Evidence boundary

Three complete actual saved annotated C/owned Listing pairs total249bytes/
101instructions, no gaps, reconstruct and match pristine original PE bytes.
Two existing canonical pairs upgraded;946050 is new. Public frontend and existing
predicate names retained; no Listing/disassembly/body recovery, unrelated codeunit
or original byte mutation occurred. All original FileBytes remained pristine and
metadata saved clean. Only scalar result/presence and enabled producer meaning are
closed; full rendering, visibility events, routing membership/notification and
managed gameplay remain separate.

## Base and inherited visibility writers

The registered setter [78D700 ASM](../../evidence/native/functions/0078D700_ScriptCore_World_World_ObjectSetHiddenFlags.asm) ([annotated C](../../evidence/native/functions/0078D700_ScriptCore_World_World_ObjectSetHiddenFlags.c)) resolves VisualState before Footprint. [95E650 ASM](../../evidence/native/functions/0095E650_FUN_0095e650.asm) ([annotated C](../../evidence/native/functions/0095E650_FUN_0095e650.c)) passes the low-byte visible value and mask1 to [95E5F0 ASM](../../evidence/native/functions/0095E5F0_VisualState_SetOneBitFlag.asm) ([annotated C](../../evidence/native/functions/0095E5F0_VisualState_SetOneBitFlag.c)). Changed state synchronously dispatches event18hex with basebit0,bit2,all-of39 summary. It is incorrect to infer no component events merely because the frontend contains no direct dispatcher call. Unknown setter bits do not become query output bits.

[951AB0 ASM](../../evidence/native/functions/00951AB0_Slot_OnVisualStateChanged.asm) ([annotated C](../../evidence/native/functions/00951AB0_Slot_OnVisualStateChanged.c)) and [951A20 ASM](../../evidence/native/functions/00951A20_Slot_PropagateAggregateVisibility.asm) ([annotated C](../../evidence/native/functions/00951A20_Slot_PropagateAggregateVisibility.c)) copy summarybyte2 and synchronously dispatch child event19hex (25decimal). The existing listener table [95FCB0 ASM](../../evidence/native/functions/0095FCB0_VisualState_RegisterObjectEventListeners.asm) ([annotated C](../../evidence/native/functions/0095FCB0_VisualState_RegisterObjectEventListeners.c)) binds that ID to [95F620 qualified ASM window](../../evidence/native/functions/0095F620_VisualState_ParentVisibility_QualifiedWindow.asm) ([instruction semantics](../../evidence/native/functions/0095F620_VisualState_ParentVisibility_QualifiedWindow.c)); it is NOT event23hex/95FA50. The39byte15instruction window is independently decoded and PEchecked from48MCPbytes; no Ghidra-owned body or C decompilation is claimed, and nineCCpadding bytes are excluded.

The child calls [95E970 ASM](../../evidence/native/functions/0095E970_FUN_0095e970.asm) ([annotated C](../../evidence/native/functions/0095E970_FUN_0095e970.c)). A supplied payload reads one byte and updates mask10 via95E5F0, preserving ownbasebit0. A null payload instead obtains Transform parent+30 and, when present, uses parent's39aggregate; absent parent/VisualState retains defaulttrue. Null owner/Transform access is unguarded at actual instruction sites: caller invariants and invalid-object failure are unresolved, not safely reconstructed by C. Only AL1 is returned; upperEAX is not a Boolean. New inherited changes emit event18 again. Full9510F40 iterator topology/ordering/cycle/lifetime/refcount rules and complete render notifications remain separate.

78D700 additionally reads an original fourth routing-option stackword and forwards it to946050. [78D780 ASM](../../evidence/native/functions/0078D780_ScriptCore_World_World_ObjectSetHiddenFlagsWithWorldFootprint.asm) ([annotated C](../../evidence/native/functions/0078D780_ScriptCore_World_World_ObjectSetHiddenFlagsWithWorldFootprint.c)) explicitly supplies1 as that fourthword. The ordinary registered managed declaration has UInt64+UInt32, three words; the original adapter/extra-word provenance is not closed here. Do not silently infer ordinary0. Original order is VisualState synchronous propagation, then Footprint enable/routing notifications; this is not a CLR preflight/rollback protocol.

## CLIP visibility and selective effect detachment

[583530 ASM](../../evidence/native/functions/00583530_FUN_00583530.asm) ([annotated C](../../evidence/native/functions/00583530_FUN_00583530.c)) has443ownedbytes/150instructions and RET10hex despite a two-parameter C listing. PayloadkindC1E40006 and resolved actor gate precede independent component checks. An alternate sign-bit component branch enqueues04878BC4; a debug global selects tint instead of base mutation. Only the ordinary branch calls95E650 with ordered payloadfloat>Float32bits37800000 (1/65536); unordered COMISS/JBE selectsfalse. Afterwards, only remembered11EA0FCcomponent presence and hiddenfalse cause797E90(GUID,false). Descriptor identity comes from the existing Sim registration, not BSSzero bytes or a guessed function name.

[797E90 ASM](../../evidence/native/functions/00797E90_ScriptCore_World_World_ObjectDetachAutoDestroyEffects.asm) ([annotated C](../../evidence/native/functions/00797E90_ScriptCore_World_World_ObjectDetachAutoDestroyEffects.c)) snapshots yielded Slot children, then filters them through [C63930 ASM](../../evidence/native/functions/00C63930_FUN_00c63930.asm) ([annotated C](../../evidence/native/functions/00C63930_FUN_00c63930.c)). This56byte18instruction predicate receivesECXworld+fullGUID/RET8, queries map+3BC and compares its sentinel; C omitted the GUID. false-destroy detaches via Transform9595B0; true-destroy invokesC63970. Actual map writers C64500/84B960/D68BD0 and removal/lifetime must be traced before equating this set with every script effect's AutoDestroy flag. [7769B0 ASM](../../evidence/native/functions/007769B0_ScriptCore_VisualEffect_Swarm_SetAutoDestroy.asm) ([annotated C](../../evidence/native/functions/007769B0_ScriptCore_VisualEffect_Swarm_SetAutoDestroy.c)) separately sets Effect property5 and invokes Transform955F30; equivalence to world-map membership is not established.

Complete Model/Tree/Effect/Physics consumers, original map/child retention, debug/alternate modes, dispatcher threading, GPU completion and current host effect membership remain explicit boundaries. Static call and byte verification is not execution of the original game.
