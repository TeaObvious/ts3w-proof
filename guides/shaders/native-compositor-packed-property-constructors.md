# Native compositor packed property constructors

Original shipped PC1.67 TS3W.exe SHA256
694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
Five complete original function pairs total4,615ownedbytes/1,386instructions.
Analyst names describe established roles; original bytes and stored ABI remain
unchanged. This is static evidence; no target execution or pixel parity is claimed.

## Exact functions and physical interfaces

| Entry and pair | Original role and physical boundary |
| --- | --- |
| [005FAE00 ASM](../../evidence/native/functions/005FAE00_CompositorClearOp_ConstructPackedFields.asm) ([annotated C](../../evidence/native/functions/005FAE00_CompositorClearOp_ConstructPackedFields.c)) | CompositorClearOp_ConstructPackedFields. ECX destination,9 stack DWORD slots, RET24hex, EAX same destination. The actual property dispatcher uses this constructor for both ClearOp/ColorFill and CASPickData. |
| [005FAFF0 ASM](../../evidence/native/functions/005FAFF0_CompositorBlitOp_ConstructPackedFields.asm) ([annotated C](../../evidence/native/functions/005FAFF0_CompositorBlitOp_ConstructPackedFields.c)) | CompositorBlitOp_ConstructPackedFields. ECX destination,14 stack DWORD slots, RET38hex, EAX same destination. Resource-backed DrawImage BlitOp branch; alternate source branch retains005FB230. |
| [005FB870 ASM](../../evidence/native/functions/005FB870_CompositorFabricOp_ConstructPackedFields.asm) ([annotated C](../../evidence/native/functions/005FB870_CompositorFabricOp_ConstructPackedFields.c)) | CompositorFabricOp_ConstructPackedFields. ECX destination,16 stack DWORD slots, RET40hex, EAX same destination. Actual DrawFabric allocation/constructor path. |
| [00604C70 ASM](../../evidence/native/functions/00604C70_TextureCompositor_DispatchPropertyOperation.asm) ([annotated C](../../evidence/native/functions/00604C70_TextureCompositor_DispatchPropertyOperation.c)) | TextureCompositor_DispatchPropertyOperation. Seven stack DWORD arguments, RET1Chex. Reads tagged properties, dispatches original UInt32 operation IDs, allocates/constructs operations and passes the pointer with its first argument to005FBE30. |
| [0060D360 ASM](../../evidence/native/functions/0060D360_PackedArgb_StoreFloat4.asm) ([annotated C](../../evidence/native/functions/0060D360_PackedArgb_StoreFloat4.c)) | PackedArgb_StoreFloat4. ECX output word, one stack float4 pointer, RET4. Also reused by existing CAS hair-color paths; this helper is not compositor-exclusive. |

Names describe established analyst roles; they are not recovered original symbols.
Stored decompiler types/signatures remain unchanged and provisional. Physical
Listing governs register/stack use, cleanup, conversions and bit operations.
The original dispatcher retains all its native operation branches; no limited
host seven-operation whitelist is imposed on it.

## Coordinate and scalar storage

The three constructors multiply supplied rectangle/scalar components with MULSS
by physical binary32 **255**, then use CVTTSS2SI and signed-word narrowing/storage.
Selected rectangle lanes additionally sign-extend that word, convert to float,
then truncate again before storing. These exact original stages are retained in
the actual Listings, rather than simplified from decompiler casts.

005FAE00 stores rectangle words at+1C..+22, scalar argument7 at+2C and helper-packed
float4 argument8 at+28. 005FAFF0 stores rectangle words at+0C..+12/+14..+1A,
scalar arguments11/4/10 at+48/+4A/+4C and helper-packed float4 argument12 at+44.
005FB870 stores rectangle words at+3C..+42/+44..+4A, scalar arguments7/13/14 at
+38/+3A/+60 and helper-packed float4 argument15 at+5C. Key/payload projections,
flags and dimensions retain their actual construction operations.

This establishes conversion/storage, not coordinate admission or subsequent
unpacking/rendering. With masked invalid conversion, CVTTSS2SI integer-indefinite
has low word zero; unmasked trap/control behavior is a separate ambient profile.
The host's normalized float 1/255 representation is not itself proved by these
constructor stores. No native finite/unit clamp or complete shader equivalence
is inferred.

## Float4 channel word helper

[Physical constants and virtual-only snapshots](../../evidence/native/data/compositor-property-packing.tsv)
separate the original file-backed constants from lazy runtime state:

- 00FA4134: bits437F0000, binary32 255.
- 00FE87C4: bits4B400000, binary32 12582912.
- 011CFCB0:16-byte lazy scale vector;011CFCC0: low-bit mask1 guard. These spans are
virtual-only static-analysis snapshots, not authored file constants or observed
initialized runtime values.

0060D360 tests mask1, initializes four 255 lanes, uses MULPS followed by ADDSS
with 12582912, then reinterprets stored float bits and combines A/R/G/B into one
word. The apparent C integer casts are not CVTTSS2SI channel instructions. For
finite[0,1] under ordinary nearest-even SSE mode, this produces byte rounding
with ties to even. It does not set ambient mode, clamp/validate inputs or prove
parallel initialization safety. Wider inputs and other rounding/trap profiles
are outside the established equivalence.

## Ownership and unresolved scope

The property dispatcher proves selected constructor calls and subsequent pointer
handoff/virtual cleanup; it does not establish initial object/wall XML template
selection, complete expression grammar, generated-fabric service lifetime or
original final pixels. Existing managed ColorFill's packed UInt32 producer and
float selector producers remain distinct from these downstream constructors.
See [managed preparation](managed-complate-preparation.md) and
[native preparation](native-complate-preparation.md). No loaded original managed
gameplay/service workflow was duplicated by these analyst annotations.

The shared float4 helper is also called by the original CAS hair-color paths
005A8600/005A86B0/005A8760 and006A31C0. Those uses do not make it compositor-exclusive.
