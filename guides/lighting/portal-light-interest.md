# Portal light-interest point and prebound room query

These are selected original PC 1.67 instruction contracts. The names below are
analyst assigned. Inferred Ghidra prototypes and SIMD stack aliases do not define
an original public API. Physical arguments, branches, writes and ordered SIMD
operations govern the observations. The binary identity is centralized in the
[proof overview](../../references/retained-proof-overview.md).

| Entry / analyst name | Complete canonical pair |
| --- | --- |
| `006b9830` — `LightInterest_ApplyPortalStateOffset4` | [ASM](../../evidence/native/functions/006B9830_LightInterest_ApplyPortalStateOffset4.asm) ([pseudocode](../../evidence/native/functions/006B9830_LightInterest_ApplyPortalStateOffset4.c)) |
| `006b7820` — `LightInterest_TransformBoxCenter4` | [ASM](../../evidence/native/functions/006B7820_LightInterest_TransformBoxCenter4.asm) ([pseudocode](../../evidence/native/functions/006B7820_LightInterest_TransformBoxCenter4.c)) |
| `006ba3e0` — `LightInterest_SetBoxAndMatrix` | [ASM](../../evidence/native/functions/006BA3E0_LightInterest_SetBoxAndMatrix.asm) ([pseudocode](../../evidence/native/functions/006BA3E0_LightInterest_SetBoxAndMatrix.c)) |
| `006c7e50` — `LightInterest_RefreshBoundRoomRecord` | [ASM](../../evidence/native/functions/006C7E50_LightInterest_RefreshBoundRoomRecord.asm) ([pseudocode](../../evidence/native/functions/006C7E50_LightInterest_RefreshBoundRoomRecord.c)) |
| `006b76f0` — `LightInterest_CopyBindingMetadata24` | [ASM](../../evidence/native/functions/006B76F0_LightInterest_CopyBindingMetadata24.asm) ([pseudocode](../../evidence/native/functions/006B76F0_LightInterest_CopyBindingMetadata24.c)) |
| `006a7cf0` — `RoomPartition_QueryWorldXZ` | [ASM](../../evidence/native/functions/006A7CF0_RoomPartition_QueryWorldXZ.asm) ([pseudocode](../../evidence/native/functions/006A7CF0_RoomPartition_QueryWorldXZ.c)) |

## Box, transform and interest point

`006BA3E0` receives the receiver in ECX and two stack pointers: a 32-byte box
and a 64-byte matrix. It copies both, invokes `006B9830`, compares old/new interest
XYZ against the existing movement threshold, then follows its existing
notification/flag/service branches. It returns with `RET 8`. This setter does
not impose an upright-only matrix restriction. The internals of the subsequent
movement/update callees are outside this selected contract.

`006B7820` adds the four box-minimum and box-maximum lanes, multiplies by
binary32 0.5, and replaces W with binary32 1. It applies stored matrix rows in
**Y plus X, then Z, then W** order and stores all four result lanes at receiver
+140. Each multiply/add instruction remains a separate stage; a scalar rewrite
or reassociated matrix helper is not established by these bodies.

`006B9830` always invokes that centre producer first. Stored DWORD +1D0 only
selects a displacement when equal to 1 or 2. It computes box maximum Z minus
minimum Z, multiplies by 0.5, and caps above binary32 0.75 using the observed
COMISS/JBE branch. This is an upper cap, not a general positive-range clamp.
State 1 forms Z as **negative zero minus the capped value**; state 2 subtracts
that vector from positive zero. It transforms the displacement with the same
Y+X, then Z, then W row order, replaces transformed Y with **positive zero**,
and only then adds it to the transformed centre. State values other than 1/2
leave the centre unchanged. The writer and semantic enumeration of +1D0 remain
unresolved; these bodies do not establish a side-selection policy.

[Necessary binary32 constants](../../evidence/native/data/portal-light-interest.tsv)
retain negative zero, 0.5, 0.75 and 1.0 as sixteen physically mapped bytes.
No BSS-zero-fill, runtime initialization or arbitrary exceptional-float/FPU
behavior is inferred from their values. The setter movement threshold and the
partition-bound globals are not decoded by this selected data table.

## Binding metadata and room lookup

`006B76F0` compares and copies six DWORDs (24 bytes) at receiver +1B8 through
+1CC and follows its existing notification path on change. Its last copied
DWORD ends at +1CF; it **does not write +1D0**. Adjacent copied metadata does
not establish the portal-state producer.

`006C7E50` first copies that metadata, recomputes the interest, and, when its
prebound service pointer exists, calls `006A7CF0` with the interest's world
**X/Z only**. No interest-Y argument is passed. It reads room identity from
returned record +0C, follows its existing null/non-null record and changed-room
branches, then performs the remaining callbacks. The service association is
already present; this body is not evidence of a world-wide floor selection
using the interest Y coordinate. Its prebound service producer and the complete
callback internals remain separate.

`006A7CF0` takes ECX service plus two stack Single arguments and returns with
`RET 8`. It combines input X, a fixed middle input 0.5, input Z and stored rows,
checks transformed coordinates against lower-bound data and upper dimensions
at +264/+268, then calls `006A6740`. Negative signed conversions of the dimension
DWORDs add the observed adjustment constant, preserving unsigned-value semantics.
Rejected coordinates return zero. Exact bound-global values and the subordinate
partition selection rules remain unresolved. No priority or substitute room
record is inferred.

## Coverage and unresolved dispatch

[Selected incoming references](../../evidence/native/portal-light-interest-incoming.tsv)
retain physical transfer bytes and distinguish an exact canonical direct-call
join from a reference-only site. The six owned bodies provide the selected
[direct-call index](../../evidence/native/direct-calls.tsv) additions; unresolved
computed calls remain visible in their Listings without invented destinations.
Incoming references are selected static coverage, not an exhaustive runtime
trace. The guide does not establish the +1D0 state writer, every service-owner
constructor, arbitrary concurrent teardown, complete room-partition semantics,
callback timing or cross-platform floating-point equivalence.
