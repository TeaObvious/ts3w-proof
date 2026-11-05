# Initial puddle feature query: raw masks are outputs

Static original PC1.67 TS3W.exe. Analyst names follow physical calls/instructions;
no original/game execution is claimed. Database saved clean, original bytes
unchanged. Complete final original pairs:

| Entry | Role | Original pair |
| --- | --- | --- |
| 00B6DD00 | PuddleGeometry_GetTileFeatureAndMask | [ASM](../../evidence/native/functions/00B6DD00_PuddleGeometry_GetTileFeatureAndMask.asm) ([C](../../evidence/native/functions/00B6DD00_PuddleGeometry_GetTileFeatureAndMask.c)) |
| 00A80F30 | FloorFeatureRenderState_QueryTile | [ASM](../../evidence/native/functions/00A80F30_FloorFeatureRenderState_QueryTile.asm) ([C](../../evidence/native/functions/00A80F30_FloorFeatureRenderState_QueryTile.c)) |
| 00B6DF00 | PuddleGeometry_Construct | [ASM](../../evidence/native/functions/00B6DF00_PuddleGeometry_Construct.asm) ([C](../../evidence/native/functions/00B6DF00_PuddleGeometry_Construct.c)) |
| 00A7E2B0 | FloorFeatureGeometry_InitializeDrawnTiles | [ASM](../../evidence/native/functions/00A7E2B0_FloorFeatureGeometry_InitializeDrawnTiles.asm) ([C](../../evidence/native/functions/00A7E2B0_FloorFeatureGeometry_InitializeDrawnTiles.c)) |

B6DF00 constructs PuddleGeometry after base A7D510, installs vtable106FB50,
zeroes2B0/2B4/2B8 and returns the ECX object in EAX. The original
[virtual98 word](../../evidence/native/data/puddle-initial-query-vtable.tsv) at
106FBE8 contains00B6DD00. A7E2B0's actual virtual98 is therefore B6DD00 for puddles.

B6DD00 receives ECX geometry plus packed cell and ushort-output pointer, RET8/AL.
It selects geometry+29C's renderer+258 feature state. Missing state returnsfalse;
otherwise it calls A80F30 with the supplied cell, literal flags1 and mask output.

A80F30 receives ECX feature state, packed cell, complete UInt32 request and optional
ushort output, RET0C/AL. Parent+230, its AA12A0 admission (called twice in the
original path), both retained grids38/3C and A67E80 admission are required. Their
complete producer/visibility semantics remain separate; the names here do not
invent meanings for those unresolved gates.

After admission, signed packed level minus ownerorigin34 selects the relative
level. Byte flags and ushort masks use each retained grid's OWN width4/depth8
and vector10. If a mask output is present, the raw ushort is copied there.
The final predicate is only:

`(zeroExtendedStoredByte & fullUInt32RequestedFlags) == fullUInt32RequestedFlags`

**There is no nonzero-mask or mask-intersection gate.** A stored bit1 with mask0
passes this renderer query and returns mask0. A high requested bit outside the
stored byte cannot disappear. Missing state/admission returnsfalse.

This differs from the gameplay
[all-feature predicate ASM](../../evidence/native/functions/00AB6600_LotFloorFeatures_TestAll.asm) ([C](../../evidence/native/functions/00AB6600_LotFloorFeatures_TestAll.c)),
which additionally requires requested puddle-mask intersection when a mask layer
exists. Substituting gameplay HasPuddle(maskFFFF) in the initial renderer walk
would incorrectly drop the raw bit1/mask0 entry.

A7E2B0 scans each supplied level X then Z, initializes mask outputFFFF, invokes
the actual predicate and registers admitted tiles with their returned raw mask,
on flag and binary32 timer4.0. Even an empty walk marks geometry dirty. The
[alpha/geometry contract](floor-feature-alpha-and-geometry.md) retains fade and
texture behavior. These functions do not recreate the whole renderer cache,
AA12A0/A67E80 producers, native allocation-failure effects or gameplay puddle policy.
