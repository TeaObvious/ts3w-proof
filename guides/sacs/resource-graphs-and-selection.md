# Native JAZZ readers and SACS selection

Reference: original PC1.67 TS3W.exe, identified centrally in the native dossier.
Static original instructions only; no retail execution. Analyst names are inferred
roles, not recovered EA symbols. Every pair below contains the complete original
function envelope and actual annotated Ghidra rendering, with alignment gaps
retained. Four previously undefined VTable targets were defined from verified
entry/control-flow/RET boundaries; no original byte was changed. Inferred stored
prototypes (including zero-parameter declarations) are qualified by physical ABI
annotations; do not use those declarations as binding signatures.

## Canonical function pairs

| Entry / analyst role | Original instructions and annotated rendering |
| --- | --- |
| 007fe870 SacsState_ReadRecord | [ASM](../../evidence/native/functions/007FE870_SacsState_ReadRecord.asm) ([annotated pseudocode](../../evidence/native/functions/007FE870_SacsState_ReadRecord.c)) |
| 007fd650 SacsState_ApplyAuthoredFlagMask | [ASM](../../evidence/native/functions/007FD650_SacsState_ApplyAuthoredFlagMask.asm) ([annotated pseudocode](../../evidence/native/functions/007FD650_SacsState_ApplyAuthoredFlagMask.c)) |
| 007fc080 SacsPaths_EnumerateSimplePaths | [ASM](../../evidence/native/functions/007FC080_SacsPaths_EnumerateSimplePaths.asm) ([annotated pseudocode](../../evidence/native/functions/007FC080_SacsPaths_EnumerateSimplePaths.c)) |
| 007fc3d0 SacsPaths_EnumerateFilterAndSelect | [ASM](../../evidence/native/functions/007FC3D0_SacsPaths_EnumerateFilterAndSelect.asm) ([annotated pseudocode](../../evidence/native/functions/007FC3D0_SacsPaths_EnumerateFilterAndSelect.c)) |
| 007f81d0 SacsRandomNode_ChooseAndAdmitChildren | [ASM](../../evidence/native/functions/007F81D0_SacsRandomNode_ChooseAndAdmitChildren.asm) ([annotated pseudocode](../../evidence/native/functions/007F81D0_SacsRandomNode_ChooseAndAdmitChildren.c)) |
| 007fa1e0 SacsRandomNode_ReadOutcomes | [ASM](../../evidence/native/functions/007FA1E0_SacsRandomNode_ReadOutcomes.asm) ([annotated pseudocode](../../evidence/native/functions/007FA1E0_SacsRandomNode_ReadOutcomes.c)) |
| 007ff6f0 SacsBranchNode_AdmitValueOrDefault | [ASM](../../evidence/native/functions/007FF6F0_SacsBranchNode_AdmitValueOrDefault.asm) ([annotated pseudocode](../../evidence/native/functions/007FF6F0_SacsBranchNode_AdmitValueOrDefault.c)) |
| 007ffb10 SacsParameterNode_DefaultBranchHash | [ASM](../../evidence/native/functions/007FFB10_SacsParameterNode_DefaultBranchHash.asm) ([annotated pseudocode](../../evidence/native/functions/007FFB10_SacsParameterNode_DefaultBranchHash.c)) |
| 007ffb20 SacsParameterNode_ReadCurrentValue | [ASM](../../evidence/native/functions/007FFB20_SacsParameterNode_ReadCurrentValue.asm) ([annotated pseudocode](../../evidence/native/functions/007FFB20_SacsParameterNode_ReadCurrentValue.c)) |
| 007ffb40 SacsParameterNode_ReadMatches | [ASM](../../evidence/native/functions/007FFB40_SacsParameterNode_ReadMatches.asm) ([annotated pseudocode](../../evidence/native/functions/007FFB40_SacsParameterNode_ReadMatches.c)) |
| 00800d20 SacsStrings_ExpandParameterTokens | [ASM](../../evidence/native/functions/00800D20_SacsStrings_ExpandParameterTokens.asm) ([annotated pseudocode](../../evidence/native/functions/00800D20_SacsStrings_ExpandParameterTokens.c)) |
| 007f83c0 SacsClipNode_ResolveAgeVariantKey | [ASM](../../evidence/native/functions/007F83C0_SacsClipNode_ResolveAgeVariantKey.asm) ([annotated pseudocode](../../evidence/native/functions/007F83C0_SacsClipNode_ResolveAgeVariantKey.c)) |
| 007f5b30 SacsClip_SelectAgeCandidateBits | [ASM](../../evidence/native/functions/007F5B30_SacsClip_SelectAgeCandidateBits.asm) ([annotated pseudocode](../../evidence/native/functions/007F5B30_SacsClip_SelectAgeCandidateBits.c)) |
| 007fd4c0 SacsParameter_ResolveText | [ASM](../../evidence/native/functions/007FD4C0_SacsParameter_ResolveText.asm) ([annotated pseudocode](../../evidence/native/functions/007FD4C0_SacsParameter_ResolveText.c)) |
| 007fd280 SacsHash_ResolveAndWidenName | [ASM](../../evidence/native/functions/007FD280_SacsHash_ResolveAndWidenName.asm) ([annotated pseudocode](../../evidence/native/functions/007FD280_SacsHash_ResolveAndWidenName.c)) |
| 007d9040 KeyNames_FindFirstMappedName | [ASM](../../evidence/native/functions/007D9040_KeyNames_FindFirstMappedName.asm) ([annotated pseudocode](../../evidence/native/functions/007D9040_KeyNames_FindFirstMappedName.c)) |
| 0072f230 KeyNameMap_FindTextByKey | [ASM](../../evidence/native/functions/0072F230_KeyNameMap_FindTextByKey.asm) ([annotated pseudocode](../../evidence/native/functions/0072F230_KeyNameMap_FindTextByKey.c)) |

## Reader and reference boundary

The state reader accepts unsigned versions0100..01FF and a reported extent>=20;
name/flags/optional graph/outbound count occur at+8/+0C/+10/+14. Nonzero unresolved
graph/outbound references fail AL0. Overlay is read for>=0101; authored6 leaves the
native default/prior field. Flag application is ordered, with explicit bit8 last.
The RCOL resolver interprets top4 family/low28 one-based ordinal, bounds it unsigned,
and lazily resolves tagged cache entries; C# wrapper indexes are not raw packed
references. Use its existing [ASM](../../evidence/native/functions/00726630_RcolContext_ResolveOneBasedBlock.asm) ([annotated pseudocode](../../evidence/native/functions/00726630_RcolContext_ResolveOneBasedBlock.c)).

Random VTable01020D00 connects reader007FA1E0 at+18, walk007F81D0 at+24 and getter
007FE000 at+38 (returns02EEDB70). Reader rows are Float32 weight/u32 count/packed
references. Version>=0101 requires DEADBEEF then uses properties lowbit; final
one-word marker is literal /DGN. Decompiled float counts/sentinel are artifacts;
original integer MOV/CMP establish widths. Total updates without nonnegative clamp.

Parameter VTable01020F10 binds actual-value slot+44=007FFB20 and default slot+4C=
007FFB10. Shared007FF6F0 looks up actual key then default only on miss, with no
admission if both miss. UTF16 default resides01020F60; derived lower-case FNV-1
is2EA8FB98. Reader007FFB40 retains a resolved definition and delegates match records
to007FF480; pre0101/count1 delegates legacy007F5F60. Those child layouts remain
bounded. Native map ordering/duplicate insertion is not proved from list order.

## Selection differences that must remain visible

- Native Random owns four signed-byte history entries initialized7F, optional
  prior-choice exclusion and probability-dependent rejection. It scans backwards
  with <=0 stopping; current forward clamped/no-history C# is not equivalent.
  Native RNG004FAA60 and threshold values are bounded children, not guessed rules.
- Gate00588BE0 replaces Random sampling with half-total; in path selection it
  suppresses RNG and picks first/first-shortest. Current selectors lack this gate.
  A random-call site does not prove distribution or sequence equivalence.
- Path enumeration excludes a direct self edge, admits target by hash after a
  nonempty path and reads public/explicit bytes. Selection inserts an empty path
  for a loop with no paths and prefers private intermediates unless traverse2.
  Current graph cache and visit-cap100000 are project policy.
- Token expansion is UTF16, repeated/embedded, and '?' allows empty but not absent
  text. Native AL status can indicate failure with partial output, whereas current
  C# throws. Hash-only text resolves lazily through first installed name map.
- Clip resolution has base/additive slots, literal/dynamic distinction and mutable
  age pass. Native base-group retry has actor-context guards and global011CE800
  fallback; current unconditional dynamic retry/no-global-fallback is incomplete.
  Exact age bits, alternate resource mapping, availability and product mapping
  require their full child consumers before runtime correction.
- Native first-map lookup does not establish the current packed sorted-index
  serialization, generation cache, prewarm, invalid-map continuation or ASCII
  replacement behavior. Native byte widening is a separate representation.

## Limits

Full machine/actor/parameter/play/stop/prop/operation binary readers, destination
fallback, duplicate-map policy, RNG/history thresholds, full CLIP resolver child
policy and original error propagation remain explicit static leads. These exports
preserve selected facts and full bodies without treating every unexpanded child
as verified. No C# reflection adapter, cache/thread policy or exception default
is inferred as original behavior. No original execution or current test result.
