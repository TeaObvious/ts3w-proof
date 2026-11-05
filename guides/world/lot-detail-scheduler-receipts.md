# Detail scheduler receipt original comparison

Original shipped PC1.67 PE32 x86 TS3W.exe, SHA256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
All pairs below are actual current GhidrAssist exports from /TS3W.exe, not
handwritten pseudocode. Each raw Listing includes pristine original bytes and
actual EOL/plate comments. Internal envelope gaps are explicitly marked; no bytes
were patched. Function names and comments are analyst roles, not recovered symbols.

The complete selected closure is17functions,813instructions,2268owned bytes and
22explicit gap bytes:2290envelope bytes. Fifty relative CALL/JMP edges were checked
against the PE. Indirect targets are not inferred from signature compatibility.
The concrete constructor-installed vtables prove monitor/predicate/continuation
binding. Complete deeper masked-request production remains a separate boundary.

| Entry | Role | Instructions | Owned/envelope | Actual C | Full annotated ASM |
| --- | --- | ---: | ---: | --- | --- |
| 00793370 | DetailedLotMonitor_PollLoadedLots | 80 | 172/172 | [C](../../evidence/native/functions/00793370_DetailedLotMonitor_PollLoadedLots.c) | [ASM](../../evidence/native/functions/00793370_DetailedLotMonitor_PollLoadedLots.asm) ([annotated C](../../evidence/native/functions/00793370_DetailedLotMonitor_PollLoadedLots.c)) |
| 00789710 | DetailedLotMonitor_HasPendingLot | 40 | 89/89 | [C](../../evidence/native/functions/00789710_DetailedLotMonitor_HasPendingLot.c) | [ASM](../../evidence/native/functions/00789710_DetailedLotMonitor_HasPendingLot.asm) ([annotated C](../../evidence/native/functions/00789710_DetailedLotMonitor_HasPendingLot.c)) |
| 007894a0 | FUN_007894a0 | 22 | 94/94 | [C](../../evidence/native/functions/007894A0_FUN_007894a0.c) | [ASM](../../evidence/native/functions/007894A0_FUN_007894a0.asm) ([annotated C](../../evidence/native/functions/007894A0_FUN_007894a0.c)) |
| 0078ecb0 | FUN_0078ecb0 | 30 | 103/103 | [C](../../evidence/native/functions/0078ECB0_FUN_0078ecb0.c) | [ASM](../../evidence/native/functions/0078ECB0_FUN_0078ecb0.asm) ([annotated C](../../evidence/native/functions/0078ECB0_FUN_0078ecb0.c)) |
| 0078f560 | ScriptCore.World::World_WaitForDetailedLots | 105 | 265/265 | [C](../../evidence/native/functions/0078F560_ScriptCore_World_World_WaitForDetailedLots.c) | [ASM](../../evidence/native/functions/0078F560_ScriptCore_World_World_WaitForDetailedLots.asm) ([annotated C](../../evidence/native/functions/0078F560_ScriptCore_World_World_WaitForDetailedLots.c)) |
| 00c62810 | WorldObjects_FindLotByGuid | 23 | 53/53 | [C](../../evidence/native/functions/00C62810_WorldObjects_FindLotByGuid.c) | [ASM](../../evidence/native/functions/00C62810_WorldObjects_FindLotByGuid.asm) ([annotated C](../../evidence/native/functions/00C62810_WorldObjects_FindLotByGuid.c)) |
| 00c687a0 | FUN_00c687a0 | 11 | 40/40 | [C](../../evidence/native/functions/00C687A0_FUN_00c687a0.c) | [ASM](../../evidence/native/functions/00C687A0_FUN_00c687a0.asm) ([annotated C](../../evidence/native/functions/00C687A0_FUN_00c687a0.c)) |
| 00789500 | FUN_00789500 | 29 | 61/61 | [C](../../evidence/native/functions/00789500_FUN_00789500.c) | [ASM](../../evidence/native/functions/00789500_FUN_00789500.asm) ([annotated C](../../evidence/native/functions/00789500_FUN_00789500.c)) |
| 00ac1250 | Lot_SetDetailRequested | 61 | 163/163 | [C](../../evidence/native/functions/00AC1250_Lot_SetDetailRequested.c) | [ASM](../../evidence/native/functions/00AC1250_Lot_SetDetailRequested.asm) ([annotated C](../../evidence/native/functions/00AC1250_Lot_SetDetailRequested.c)) |
| 00c69e30 | WorldManager_HasPendingLotDetail | 55 | 136/136 | [C](../../evidence/native/functions/00C69E30_WorldManager_HasPendingLotDetail.c) | [ASM](../../evidence/native/functions/00C69E30_WorldManager_HasPendingLotDetail.asm) ([annotated C](../../evidence/native/functions/00C69E30_WorldManager_HasPendingLotDetail.c)) |
| 00700c20 | WorldManager_HasPendingGuidComponents | 56 | 137/137 | [C](../../evidence/native/functions/00700C20_WorldManager_HasPendingGuidComponents.c) | [ASM](../../evidence/native/functions/00700C20_WorldManager_HasPendingGuidComponents.asm) ([annotated C](../../evidence/native/functions/00700C20_WorldManager_HasPendingGuidComponents.c)) |
| 006eda40 | SceneManager_HasPendingSubtreeFlags | 59 | 183/183 | [C](../../evidence/native/functions/006EDA40_SceneManager_HasPendingSubtreeFlags.c) | [ASM](../../evidence/native/functions/006EDA40_SceneManager_HasPendingSubtreeFlags.asm) ([annotated C](../../evidence/native/functions/006EDA40_SceneManager_HasPendingSubtreeFlags.c)) |
| 00c59ab0 | WallRender_AdvanceQueuedStateAndMaterialReadiness | 67 | 205/215 | [C](../../evidence/native/functions/00C59AB0_WallRender_AdvanceQueuedStateAndMaterialReadiness.c) | [ASM](../../evidence/native/functions/00C59AB0_WallRender_AdvanceQueuedStateAndMaterialReadiness.asm) ([annotated C](../../evidence/native/functions/00C59AB0_WallRender_AdvanceQueuedStateAndMaterialReadiness.c)) |
| 00c51720 | WallRender_PollBucketMaterialsAndRefreshObjects | 119 | 412/424 | [C](../../evidence/native/functions/00C51720_WallRender_PollBucketMaterialsAndRefreshObjects.c) | [ASM](../../evidence/native/functions/00C51720_WallRender_PollBucketMaterialsAndRefreshObjects.asm) ([annotated C](../../evidence/native/functions/00C51720_WallRender_PollBucketMaterialsAndRefreshObjects.c)) |
| 00c51330 | WallMaterialEntry_ResolveAndTestReady | 52 | 141/141 | [C](../../evidence/native/functions/00C51330_WallMaterialEntry_ResolveAndTestReady.c) | [ASM](../../evidence/native/functions/00C51330_WallMaterialEntry_ResolveAndTestReady.asm) ([annotated C](../../evidence/native/functions/00C51330_WallMaterialEntry_ResolveAndTestReady.c)) |
| 00aafef0 | Lot_GetDetailRequested | 2 | 7/7 | [C](../../evidence/native/functions/00AAFEF0_Lot_GetDetailRequested.c) | [ASM](../../evidence/native/functions/00AAFEF0_Lot_GetDetailRequested.asm) ([annotated C](../../evidence/native/functions/00AAFEF0_Lot_GetDetailRequested.c)) |
| 00d43520 | Lot_ReadDetailReadinessByte | 2 | 7/7 | [C](../../evidence/native/functions/00D43520_Lot_ReadDetailReadinessByte.c) | [ASM](../../evidence/native/functions/00D43520_Lot_ReadDetailReadinessByte.asm) ([annotated C](../../evidence/native/functions/00D43520_Lot_ReadDetailReadinessByte.c)) |

## Physical contracts and bounded interpretation

- AC1250 receives ECX lot and one requested byte/RET4. It stores+C1 before remote
  dispatch and sends message0421FEFD; it does not consume a ready-resource result.
  The null message allocation path later dereferences zero; no graceful-OOM claim.
- C69E30 has ECX owner/plainRET and consumes AL from requested+C1/readiness+C2,
  then700C20 with maskFFFFFFFF. 700C20 has ECX world plus three stack words/RET0C,
  repeats exact GUID lookup each index and follows actual component+10→+1C before
  6EDA40. That helper has two stack words/RET8, collects shared scratch, applies
  descriptor mask exceptFFFFFFFF and tests object+40 bits42. Both return AL with
  upper EAX residue; no whole-EAX boolean or GPU-ready equivalence.
- 78F560 is original registered internalcall881: four physical stack DWORDs,
  caller-clean/plainRET. It allocates28hex bytes, reads context through original
  interface+118, passes two identity words/GUIDlow/high/mask to7894A0, registers
  monitor interfaces+8/+C through service+1C, then original context+120/+11C.
  Failure packages false for context+130. The context methods' complete internal
  effects are not recovered here.
- 7894A0 receives allocation ECX and five stack words/RET14. Instructions retain
  the allocation in EAX through return although the retained decompiler prototype
  says void. It stores identity+10/+14, GUID+18/+1C, mask+20, null request+24;
  installs allocation vtable01011984, interface+8 at01011978 and +C at01011968.
- Vtable01011968+4→793370. Its body is80instructions/172bytes, inclusive341B;
  four341C..341F padding bytes are outside. ECX is allocation+C. Four exits RET8
  pop two opaque stack DWORDs that this body does not read. The inferred one-param
  C signature does not represent that physical cleanup. Missing manager calls
  completion78ECB0(false) and returns AL0. Nonzero stored GUID resolves C62810;
  missing specific lot completes true. GUID0 enumerates C687A0(false), the actual
  +1F4 pointer-vector range, not the other flag's+204 vector. Per-lot AL pending
  invokes allocation virtual+10→789500 continuation; otherwise completion(true).
- Vtable01011984+18→789710. Complete body40instructions/89bytes, inclusive9768;
  following7padding bytes outside. ECX allocation +one lot pointer/RET4. Ready+C2
  first; when zero, requested+C1. Requested/unready returns AL1. Otherwise mask0
  returns AL0. Mask nonzero uses request+24 byte1C, or calls virtual+14 with actual
  GUID+48/+4C. Only its byte1C branch clears EAX before SETZ; sibling returns only
  define AL. Full deeper masked-request producer/status writers remain unknown.
- Allocation virtual+10→789500 registers the actual interfaces again via service
  +1C/tag55AF20C7; it is actual continuation, not invented Task scheduling.
- 78ECB0 has allocation ECX and bool stack word/RET4. It packages the bool in the
  real typed value then invokes context+124 with stored identity+10/+14; optional
  temporary cleanup follows. Poll return AL and callback completion bool differ.
- C62810 has three stack words/RET0C: actual GUID lookup and virtual type value1
  admission, borrowed lot pointer/null. C687A0 has one flag word/RET4, optionally
  rebuilds dirty spatial buckets and selects +1F4 or+204 vector by that flag.
- C59AB0 physically tail-jumps toC51720. The material chain has no stack args/plain
  RET, selected queue unsigned16 argument, seven-lane bucket scan and actual AL
  material readiness. C51330 resolves actual material and tests status3; no upload
  slice budget, three-frame completion or native same-edit-frame promise follows.

## Managed identity and complete selected callers

The [selected original metadata](managed/lot-detail-scheduler-receipts/managed-selected.json) records the original scripts.package resource coordinates, assembly SHA256/MVID, exact signatures, flags, full body headers, local signatures and empty exception-region sets. The [three complete CIL bodies](managed/lot-detail-scheduler-receipts/managed-selected-il.txt) contain 60 bytes and 23 instructions; the internalcall declaration has no CIL body. Metadata tokens are meaningful only with the recorded original assembly identity.

The existing original [ScriptCore.World C# decompilation](../../evidence/managed/types/ScriptCore.World.cs#L2934) and [canonical caller CIL](../../evidence/managed/callers.il.txt#L9618) contain `World.WaitForDetailedLots` (060009ED, 28 bytes/12 instructions): callback getter, zero GUID/mask, internalcall06000881, result reader and Boolean unbox. The [native declaration](../../evidence/managed/types/ScriptCore.World.cs#L1082) has managed Delegate/UInt64/UInt32 arguments and void return; the UInt64 GUID splits into two DWORDs at the native boundary. The actual unchanged C# excerpts for [CallbackDelegate](managed/lot-detail-scheduler-receipts/ScriptCore.CallbackObject.get_CallbackDelegate.cs.txt) (0600015A, 7 bytes/3 instructions) and [GetCallbackResult()](managed/lot-detail-scheduler-receipts/ScriptCore.CallbackObject.GetCallbackResult.cs.txt) (0600015F, 25 bytes/8 instructions) accompany their full original CIL. These are decompiler member excerpts, not reconstructed C# source.

The full no-argument result-reader body reads Simulator.CurrentTask, obtains its ObjectGuid.Value, boxes UInt64 and calls overload06000161. That overload and deeper callback/simulator scheduling and exception policy remain outside these three selected bodies. SimIFace resource identity is retained without adding a SimIFace body claim. No original assembly or native target was loaded or executed.


## Evidence limits

The complete selected producer/consumer bodies establish requested-versus-ready
bytes and the concrete monitor predicate/continuation. Full masked request+24
production/status lifetime, all+C2 writers, subtree collection/flag meanings,
deeper material production/status and original threading details remain bounded
external paths. This does not establish another implementation's failure maps,
retry clocks, Vulkan budgets or completion/rollback equivalence. Original bytes,
function bodies and prototypes remain unchanged; the annotated database was
saved cleanly. Static bytes/CIL and actual exports are not executed test results.
