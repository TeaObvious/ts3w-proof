# Original wall queued update and material readiness

PC 1.67 TS3W.exe. Complete actual annotated Ghidra exports, original bytes and
physical ABI were checked; no original target was executed.

| Address | Analyst function | Whole body |
| --- | --- | --- |
| C59AB0 | WallRender_AdvanceQueuedStateAndMaterialReadiness | [ASM](../../evidence/native/functions/00C59AB0_WallRender_AdvanceQueuedStateAndMaterialReadiness.asm) ([pseudocode](../../evidence/native/functions/00C59AB0_WallRender_AdvanceQueuedStateAndMaterialReadiness.c)) |
| C51720 | WallRender_PollBucketMaterialsAndRefreshObjects | [ASM](../../evidence/native/functions/00C51720_WallRender_PollBucketMaterialsAndRefreshObjects.asm) ([pseudocode](../../evidence/native/functions/00C51720_WallRender_PollBucketMaterialsAndRefreshObjects.c)) |
| C51330 | WallMaterialEntry_ResolveAndTestReady | [ASM](../../evidence/native/functions/00C51330_WallMaterialEntry_ResolveAndTestReady.asm) ([pseudocode](../../evidence/native/functions/00C51330_WallMaterialEntry_ResolveAndTestReady.c)) |

## State producer and physical tail jump

C59AB0 uses ECX as owner, no stack arguments; inactive owner+C returns. Its active
path performs conditional state work, drains actual twelve-byte queued rows at
owner+240..244 through C4EE70, then resets that vector end. Row+4 is MOVZX of an
unsigned WORD, despite an inferred short parameter alias. Wall-mode/child/predicate
work precedes the actual tail JMP C59B80 to C51720 with unchanged ECX. This tail
edge adds no return address; a coarse caller label alone would be misleading.

## Material aggregation and object refresh

C51720 captures owner+35C and compares its prior +38C word. Segmented cursors
+1C4/+1CC/+1D0/+1D4 traverse 0x81C-byte buckets, each with seven 0x128-byte lanes.
An unset bucket+818 scans actual lane hash nodes (+AC/+B0, next node+80). Selected
node+C-zero entries with absent node+40 material or material+30 != 3 call C51330
with ECX=node+8; TEST AL controls the aggregate. Primary objects are dirty-queued,
conditionally C3A890-refreshed on captured-word inequality and always C3C700-called;
secondary objects have their own dirty/A5CFF0 path. The bucket receipt is stored
after seven lanes; the captured word is stored to owner+38C after traversal, even
for an empty outer range. Do not infer authored levels or generation identity from
these numeric lanes/words alone.

C51330 clears entry+68 only on absent material+38. Zero or low-tagged source+3C is
rejected using TEST CL,3. Four DWORD key comparisons select existing acquisition
through MaterialDef_AcquireMaterial (ECX source; stack &output, FFFFFFFF) versus
C505A0. The equal-key branch rereads/clears output before any old virtual+4 release.
Present output returns material+30==3; failure clears AL only. Upper EAX residue
must not become a 32-bit boolean, nor the source tag test a full 64-bit key sentinel.

## Limits

The complete bodies establish queued state work followed by material-status polling
and selected object refresh. They establish no 2/24 ms Vulkan slice, guaranteed
three-frame completion, universal neighbor priority or same-edit-frame geometry
refill. Upstream frame/edit scheduling, full C4EE70/C505A0 producers, material-status
writers and unresolved virtual/deeper refresh bodies remain separate boundaries.
Existing [dispatch/pending](lot-detail-dispatch-and-pending.md) distinguishes original
requested work from ready presentation; current portable worker/GPU ownership is
an explicit implementation decision.

The three whole envelopes contain 238 owned instructions/758 owned bytes plus
22 explicitly non-owned alignment bytes (780 original bytes). Body sets/prototypes
remain unchanged. Seventeen selected direct/tailjump edges have actual Ghidra target
identities; unresolved virtual targets are not invented. Names/comments only were
saved to the clean Ghidra database. No tests, game or original execution is claimed.
