# Local light banks: selection, fill and finalization

This selected static contract uses original PC 1.67 identified in the
[overview](../../references/retained-proof-overview.md), explicitly `/TS3W.exe` in Ghidra. Internal names are
analyst assignments. No lighting, numeric, room, GPU or rendered test was run.
Complete selected bodies are retained; unexpanded producers, alternate selectors,
tuning initialization and full sort behavior remain separate questions.

## Room caller and dispatch

The room finalizer takes ECX rig and no stack arguments, returns void. A marker
check can invoke initialization. Its main gate requires rig owner+0x1b0 and
flags+0x224 bit0x80. Valid resolved child and nonzero rig+0x1e0 reset the shared
candidate end at0x01159d24 to its begin at0x01159d20, prepare candidates, then
dispatch bank selection. State DWORD+0x1d4 equal to1 supplies `{1,3,4}`;
**every other state**, not merely state2, supplies `{0,4,4}`.
[ASM](../../evidence/native/functions/006BBF50_LocalLightRig_FinalizeRoomCandidates.asm) ([annotated pseudocode](../../evidence/native/functions/006BBF50_LocalLightRig_FinalizeRoomCandidates.c))

Projection and preparation calls at006BBFCD/006BBFE0 each use ECX plus three
stack words; scoped overrides preserve their actual dataflow in C. Their full
semantics are unexpanded. After dispatch, a child predicate can scale all four
color lanes in both banks and three further blocks using dynamic setting
0x011d1c50. It clears rig+0x1f0 and refreshes output+0x200. Missing child/zero key
selects separate fallback helpers. Shared scratch does not establish safe
parallel finalization of different rigs.
[ASM](../../evidence/native/functions/006BBF50_LocalLightRig_FinalizeRoomCandidates.asm) ([annotated pseudocode](../../evidence/native/functions/006BBF50_LocalLightRig_FinalizeRoomCandidates.c))

The dispatcher clears fill bit0 and derives an extra-color flag from bit1 and
an ordered RGB sum above stored0.01. Optional callbacks surround sorting.
Threshold fill requires first slot0, rig+8 zero and no extra-color flag.
After sorting, rig+8 or global/flag gates can select alternate bank helpers;
only the remaining branch invokes the normal selector. The alternate call at
006BBCE3 has ECX plus **two** stack arguments, correcting a one-argument C view.
[ASM](../../evidence/native/functions/006BBBC0_Rig_DispatchCandidateFinalization.asm) ([annotated pseudocode](../../evidence/native/functions/006BBBC0_Rig_DispatchCandidateFinalization.c))

## Candidate construction and sorting

Candidates are48 bytes: direction float4+0, color float4+0x10, words+0x20/+0x24,
brightness float+0x28 and kind+0x2c. The constructor uses ECX plus four stack
arguments, RET0x10. It copies direction, computes each color lane as
`(inputColor * multiplier) * (global[011d1a28] * setting[011d1bb0])`, then
brightness `(B*weightB + G*weightG) + R*weightR` from mutable global weights
0x011d2140/44/48. It writes payload+0x24; no brightness clamp or fixed weight
defaults are established. These globals are not file-backed constants.
[ASM](../../evidence/native/functions/006BDC70_RigCandidate_InitializeScaled.asm) ([annotated pseudocode](../../evidence/native/functions/006BDC70_RigCandidate_InitializeScaled.c))

The cdecl sort entry computes48-byte count and a depth from count bit length,
calls the partition/depth helper, then insertion-sorts the whole short range
or first28 records followed by a large-range helper. Those other sort bodies
are unexpanded; complete tie order/stability is not established.
[ASM](../../evidence/native/functions/006BB360_RigCandidates_SortRange.asm) ([annotated pseudocode](../../evidence/native/functions/006BB360_RigCandidates_SortRange.c))

The selected insertion pass compares new brightness against its predecessor
with COMISS/JBE. Only ordered strict greater-than moves it backward; equal or
unordered values stop. Whole48-byte records move. This establishes descending
insertion behavior, not stable ordering for the entire multi-helper sort.
[ASM](../../evidence/native/functions/006B8940_RigCandidates_InsertionSort.asm) ([annotated pseudocode](../../evidence/native/functions/006B8940_RigCandidates_InsertionSort.c))

## Threshold fill

The fill helper takes ECX rig and a candidate vector, RET4. It sums brightness
values at least stored float0.01, in source order; COMISS/JB excludes unordered
values. Dynamic setting0x011d1bb8 must be ordered greater than that sum.
It sets the fill flag, computes SSE float `1 - sum/threshold`, chooses positive
value or zero, then x87 FSQRT and float storage. Lookup key0xe23c85d8 obtains
a preset; missing lookup leaves the flag set but appends nothing. Successful
lookup supplies four rows, scaled and passed through the ordinary candidate
constructor, then tagged kind2 and appended. Preset name/defaults and allocator
admission are not recovered merely from the key.
[ASM](../../evidence/native/functions/006BB550_Rig_AddThresholdFillCandidates.asm) ([annotated pseudocode](../../evidence/native/functions/006BB550_Rig_AddThresholdFillCandidates.c))

## Normal bank selection

Selection is three DWORDs: first primary slot, maximum primary candidates,
maximum secondary candidates. Signed primary count is min(N, maximumPrimary).
It copies candidates starting at0 into primary slots beginning at first,
zeroing fourth direction/color lanes. Secondary count is
**min(N-4, maximumSecondary)**; nonpositive skips the loop. Secondary source
starts at the number actually copied to primary; destination starts at0 and
all four lanes are copied. Unwritten bank slots are not cleared here.
For `{1,3,4}` and N4..8, one tail candidate is excluded.
[ASM](../../evidence/native/functions/006BA4B0_Rig_SelectCandidateBanks.asm) ([annotated pseudocode](../../evidence/native/functions/006BA4B0_Rig_SelectCandidateBanks.c))

Rig primary direction/color bases are+0x10/+0x50; secondary+0x90/+0xd0, four
slots each. Optional balancing precedes opposing fill. Opposing fill needs
state0 or flag0x20 plus a global enable. Flag0x20 can then invoke another
dynamic scale helper. These operations are conditional, not universally active.
[ASM](../../evidence/native/functions/006BA4B0_Rig_SelectCandidateBanks.asm) ([annotated pseudocode](../../evidence/native/functions/006BA4B0_Rig_SelectCandidateBanks.c))

## Directional response and balancing

Directional response is ECX rig plus output, selection and direction, RET0x0c;
**EAX returns the output pointer**, correcting its false void signature.
It starts from float4 zero, accumulating primary `first..3`, then secondary
**`first..3`**. Each XYZ dot product supplies a positive incidence through
MAXPS with its original operand order, multiplied by the four color lanes.
First1 therefore skips secondary0 as well as primary0.
[ASM](../../evidence/native/functions/006B7E90_Rig_ResponseOnDirection.asm) ([annotated pseudocode](../../evidence/native/functions/006B7E90_Rig_ResponseOnDirection.c))

Balancing evaluates directions -X,+X,-Y,+Y,-Z,+Z and sequential MAXPS into
initial zero. It supplies the maximum-response pointer and dynamic setting
0x011d1ba8 to a ratio helper. Ordered ratio below1 triggers scaling.
[ASM](../../evidence/native/functions/006B9410_Rig_BalanceSelectedResponse.asm) ([annotated pseudocode](../../evidence/native/functions/006B9410_Rig_BalanceSelectedResponse.c))

The ratio helper has **nonstandard EAX input pointer, one caller-cleaned stack
float, XMM0 float result**. Custom Ghidra storage restores real computation
from the old empty void/no-argument C. Ordered RGB comparisons select the
largest channel; denominator becomes the dynamic limit only if limit is
ordered greater. DIVSS returns limit/denominator. Positive finite inputs reduce
to min(1,limit/maximumRGB); zero/negative/NaN require original branch/division
semantics and receive no invented guards.
[ASM](../../evidence/native/functions/006B7640_Rig_ResponseLimitRatio.asm) ([annotated pseudocode](../../evidence/native/functions/006B7640_Rig_ResponseLimitRatio.c))

The scale consumer changes four color lanes in primary `first..3` and **all
secondary0..3**, leaving directions unchanged. Secondary response admission and
scaling consequently use different start rules.
[ASM](../../evidence/native/functions/006B8350_Rig_ScaleSelectedColors.asm) ([annotated pseudocode](../../evidence/native/functions/006B8350_Rig_ScaleSelectedColors.c))

## Opposing fill

This helper initializes dot weights(1,1,1,1) and tint(0.8,0.8,1,0.8) once via
an unsynchronized flag. All primary rows followed by secondary rows contribute
direction weighted by RGB sum. XYZ length times a dynamic scale supplies
strength, bounded with sign-bit selection by zero and dynamic maximum.
State0 uses setting0x011d1bc8; nonzero uses0x011d1bd0. Ordered strength above
stored0.01 is required. Y is zeroed for direction. It rejects when **each
absolute X/Y/Z component is at most stored0.001**, using CM(P)LEPS/MOVMSK.
This is not XZ-length-squared<=0.000001.
[ASM](../../evidence/native/functions/006B7FE0_Rig_InsertOpposingFill.asm) ([annotated pseudocode](../../evidence/native/functions/006B7FE0_Rig_InsertOpposingFill.c))

RSQRTPS and two Newton refinements normalize the XZ direction, then negate it.
Old primary3 moves to secondary3, primary1/2 shift to2/3, and the new light goes
in primary1. Primary0 and secondary0..2 remain. Original four-lane operations,
approximation and floating-point state are relevant; generic Normalize/Clamp
does not establish exact equivalence. Necessary stored float words are retained
in [original constants](local-light-original-data.tsv).
[ASM](../../evidence/native/functions/006B7FE0_Rig_InsertOpposingFill.asm) ([annotated pseudocode](../../evidence/native/functions/006B7FE0_Rig_InsertOpposingFill.c))

Full room/wall/portal candidate admission, tuning/global producers, alternate
selectors, complete sort ties, scratch thread ownership and shader/rendered
acceptance remain open. Captured-world values and analysis from a differently
identified executable are not universal PC1.67 defaults.
