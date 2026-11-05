# Original neighborhood light-grid initialization

Names are analyst assignments for the original PC1.67 functions, not recovered symbols or reconstructed C++ declarations. Existing inferred types/ABI remain as exported; the instructions establish widths, control flow and ownership.

| Entry / role | Owned bytes / instructions | Evidence |
| --- | --- | --- |
| 006b7030 NeighborhoodLightGrid_InitializeDimensions | 286 / 98 | [ASM](../../evidence/native/functions/006B7030_NeighborhoodLightGrid_InitializeDimensions.asm) ([C](../../evidence/native/functions/006B7030_NeighborhoodLightGrid_InitializeDimensions.c)) |
| 00c61da0 WorldManager_InitializeCommon | 1197 / 409 | [ASM](../../evidence/native/functions/00C61DA0_WorldManager_InitializeCommon.asm) ([C](../../evidence/native/functions/00C61DA0_WorldManager_InitializeCommon.c)) |
| 00c2d7a0 TerrainData_LoadForMode | 828 / 269 | [ASM](../../evidence/native/functions/00C2D7A0_TerrainData_LoadForMode.asm) ([C](../../evidence/native/functions/00C2D7A0_TerrainData_LoadForMode.c)) |
| 00c2dae0 TerrainData_LoadChunkMode | 20 / 7 | [ASM](../../evidence/native/functions/00C2DAE0_TerrainData_LoadChunkMode.asm) ([C](../../evidence/native/functions/00C2DAE0_TerrainData_LoadChunkMode.c)) |
| 00c2db00 TerrainData_LoadHeightBlendMode | 20 / 7 | [ASM](../../evidence/native/functions/00C2DB00_TerrainData_LoadHeightBlendMode.asm) ([C](../../evidence/native/functions/00C2DB00_TerrainData_LoadHeightBlendMode.c)) |

## Producer and complete terrain admission

C61DA0 constructs/connects world subsystems through ordered success branches. Its zero mode calls C2DB00; nonzero calls C2DAE0. Both wrappers forward receiver/two stack arguments and add mode 0/1 to C2D7A0, then RET8 with AL/EAX unchanged. The inferred undefined/void wrapper result does not override the caller-observed low-byte success contract.

C2D7A0 stores the mode at terrain +1C, clears +1F, and can select a provider-specific terrain resource in nonzero mode. It passes that flag unchanged to C2C770 and tests returned AL. Zero mode requires height-map then blend-map success. Nonzero mode walks chunk-resource joins and chooses version-dependent blend/auxiliary processing. Its final C28740 success gates AL1; inspected refusal branches clear AL without normalizing all EAX bits. Provider and child internals remain separate.

The retained C2C770 reader selects 9063660D and refuses version < 7 or nonzero-mode version < 8. Its common words populate terrain +10,+3C,+40,+38,+34. It continues texture/chunk processing with accumulated read success. Prefix readability is not the full terrain-load success contract.

C61DA0 tests terrain AL before later road/terrain/sea joins. Only after those joins does it compute maxima and, when the light owner exists, initialize its grid. Later world-template setup can still fail; grid initialization does not establish complete world-init success.

## Maxima and dimensions

C61DA0 obtains each low32 tile-count times tile-size product through IMUL. FILD observes signed32; negative observations add Float32 two-to32 at F99948 to recover the unsigned magnitude. The world origin is added in x87 before Single storage. Inherited x87 precision-control state is not established by these bodies, so no universal intermediate-precision conclusion is made.

6B7030 multiplies supplied Single maxima by Float32 one-over32, temporarily selects truncation rounding, FISTP-converts to Int64 and stores low32 at receiver+30/+34. Unsigned CMP 1/JNC changes only zero to one. It resizes and initializes cell storage with unsigned counts. These inputs are the supplied maxima; an origin subtraction is not implied. Allocator-child/nonfinite/overflow behavior beyond these instructions remains unresolved.

| Physical address | Original bytes | Established use |
| --- | --- | --- |
| 00FA2BB0 | 0000003d | Float32 bits 3D000000, exact 1/32 multiplicand in 6B7030 |

The physical 2^32 conversion constant is already preserved in [existing original data](../../evidence/native/data/floor-valuation-constants.tsv); no second scalar collection is needed. No runtime BSS value is inferred.

## Existing readers

- World header C65D30: [ASM](../../evidence/native/functions/00C65D30_WorldManager_ReadTerrainSizeInfo.asm) ([C](../../evidence/native/functions/00C65D30_WorldManager_ReadTerrainSizeInfo.c)).
- Terrain reader C2C770: [ASM](../camera/height-terrain-water/native-asm/00c2c770.asm.txt) ([C](../camera/height-terrain-water/pseudocode/00c2c770.c.txt)).

C65D30 reads UInt16 version, an extra UInt32 only for 2..12, two Single origins and two UInt32 tile counts. Native does not impose a 13/14 whitelist. Legacy manager creation and the later header tail are separate. At its later manager-count word, false accumulated status resets that count to zero and restores status before subsequent version-gated reads; a universal strict-prefix Boolean refusal rule does not follow.

Those existing pairs remain their single references. C65D30 retains its byte-bearing envelope; C2C770 retains a bounded linear disassembly window, not a newly acquired owned Listing. Their boundary qualifications are unchanged. The five selected new pairs each cover contiguous existing owned bodies, totaling 2351 bytes / 790 instructions.

## Calls and lifetime limits

[Incoming direct sites](../../evidence/native/neighborhood-light-grid-incoming.tsv) distinguish selected owned instructions from caller-entry metadata. [Indirect operands](../../evidence/native/neighborhood-light-grid-indirect-calls.tsv) retain encoded transfers without guessed runtime destinations. The shared direct-call index adds only physical E8 transfers; paired-export availability refers to canonical native pairs, while the legacy C2C770 window remains linked above.

World/terrain owner allocation, reference updates and failure sequencing belong to the complete original bodies. This evidence does not establish arbitrary child/provider implementations, grid insertion history, full light-source selection, shader output, runtime race behavior or complete world lifecycle parity.
