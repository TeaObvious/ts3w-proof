# Lot spatial resource and entrance boundaries

## Saved original evidence

Ten complete existing native bodies have actual saved Ghidra exports. Seven new canonical ASM/C pairs are published; the other three existing pairs refresh only their C, preserving their previous raw files and code-index scopes exactly. Their annotated C is preserved verbatim, including leading blank lines and inferred prototypes. The saved Listing owns7198 pristine PC1.67 bytes in1877 instructions; the minimal envelopes total7205 bytes. Seven alignment bytes at0063C709–0063C70F lie outside the producer body and remain explicit nonowned `.byte` data. No function, body, instruction, type, prototype or flow repair was performed.

| Original entry and responsibility | Complete owned bytes / actual Listing | Evidence |
| --- | --- | --- |
| `00629360` manager lot-record admission | 117 / 49 | [ASM](../../evidence/native/functions/00629360_LotRouting_HasAdmittedLotRecord.asm) ([C](../../evidence/native/functions/00629360_LotRouting_HasAdmittedLotRecord.c)) |
| `00631f40` main-entrance world point | 222 / 88 | [ASM](../../evidence/native/functions/00631F40_LotRouting_GetMainEntranceWorldPosition.asm) ([C](../../evidence/native/functions/00631F40_LotRouting_GetMainEntranceWorldPosition.c)) |
| `0062ff80` matching portal collection/retain | 163 / 66 | [ASM](../../evidence/native/functions/0062FF80_LotRouteGraph_CollectObjectPortals.asm) ([C](../../evidence/native/functions/0062FF80_LotRouteGraph_CollectObjectPortals.c)) |
| `007cfc30` typed UInt64 identity packing | 60 / 23 | [ASM](../../evidence/native/functions/007CFC30_PackTypedObjectIdentifier.asm) ([C](../../evidence/native/functions/007CFC30_PackTypedObjectIdentifier.c)) |
| `0062f360` inverse lot position transform | 191 / 49 | [ASM](../../evidence/native/functions/0062F360_LotRouteGraph_ApplyInverseLotPositionMatrix.asm) ([C](../../evidence/native/functions/0062F360_LotRouteGraph_ApplyInverseLotPositionMatrix.c)) |
| `0062fbd0` portal point/level/height conversion | 179 / 53 | [ASM](../../evidence/native/functions/0062FBD0_LotRouting_ResolvePortalWorldPosition.asm) ([C](../../evidence/native/functions/0062FBD0_LotRouting_ResolvePortalWorldPosition.c)) |
| `00c6a090` full world-surface height query | 746 / 199 | [ASM](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.asm) ([C](../../evidence/native/functions/00C6A090_WorldSurface_QueryHeight.c)) |
| `0078e640` registered public native entrance wrapper | 114 / 40 | [ASM](../../evidence/native/functions/0078E640_ScriptCore_World_World_GetLotMainEntranceLocationImpl.asm) ([C](../../evidence/native/functions/0078E640_ScriptCore_World_World_GetLotMainEntranceLocationImpl.c)) |
| `0063bf30` selected-routing-identifier producer | 3630 / 848 | [ASM](../../evidence/native/functions/0063BF30_LotRouting_SelectMainEntranceIdentifier.asm) ([C](../../evidence/native/functions/0063BF30_LotRouting_SelectMainEntranceIdentifier.c)) |
| `00abaab0` main-entrance display consumer | 1776 / 462 | [ASM](../../evidence/native/functions/00ABAAB0_LotMainEntrance_UpdateDisplayEffects.asm) ([C](../../evidence/native/functions/00ABAAB0_LotMainEntrance_UpdateDisplayEffects.c)) |

The [necessary original data](../../evidence/native/lot-spatial-resource-data.tsv) retains216 bytes of height/score constants, producer dispatch data and effect/resource names.

The seven new canonical raw files retain saved Listing text and pristine instruction bytes. The existing raw files at0062FF80/0062F360 retain their prior complete-body envelopes, and0078E640 retains its qualified128-byte bounded window, including14 padding bytes after its114-byte actual owned body. These retained raw scopes do not grow or become newly owned Listing.


## Native path and physical ABI

00629360 uses ECX plus the two UInt64 lot-ID words, rejects zero/all-ones and the excluded current lot pair, and compares both map-key words. It returns Boolean in AL and uses RET8. Upper EAX bits are not a Boolean contract.

00631F40 reads the admitted routing record's selected word at+14 and rejects FFFFFFFF. It packs type2/group0x12/selected-word/high0, obtains the lot, collects portals matching both object-ID words, and chooses the first collected portal. The collection order and retain/release child lifetimes remain distinct responsibilities. The point at portal+14 passes through0062FBD0 with zero height offset and clamp enabled. Internal success copies sixteen bytes; false leaves its output untouched and returns AL0.

007CFC30 takes four stack words and returns the packed UInt64 in EDX:EAX, with a plain RET. Its caller cleans16 bytes. The packing rule is `(((((instance64<<8)|byte(group))<<7)|(type&0x7f))<<1)|1`; for type2/group0x12/high0 it yields `(UInt64(UInt32(selectedWord))<<16)|0x1205`. It does not itself reject FFFFFFFF or establish a resource-header/live-record join.

0062F360 receives its matrix owner in ECX and four stack words, applies the complete inverse position matrix to the first two coordinates, and copies the third DWORD as a raw signed level; RET10.0062FBD0 receives ECX and seven words (output, world, ID low/high, point, height offset, clamp), uses signed optional level clamp, queries00C6A090, adds the offset in x87 and stores binary32 Y. Its physical EAX output-pointer return governs despite inferred C's void prototype; RET1C. These full transforms/precision are separate from current yaw-only/float32 helpers.

00C6A090 applies world bounds, optional lot eligibility/bucket scans, and mesh/terrain paths; its two optional byte outputs and final x87 ST0 height are retained. Its lot path calls00AB77E0, conditionally adds binary32 0.1875 after00B051D0, and uses -100 and epsilon1.5258789e-05 in its SSE sentinel logic. The entrance flag tuple does not establish arbitrary flag-policy parity with the current host.

## Producer and actual consumer

0063BF30 clears routing-record+14 to FFFFFFFF before lookup. Its two successful publication paths call0063A9E0, then sign-extend a stored byte using MOVSX at0063C3C5/0063CD1C and write the selected routing identifier at0063C3D0/0063CD24. The observed pointer-sequence ordinal contributes its low byte; values128–255 become negative and FF becomes the getter's rejection sentinel. The getter packs that stored word and filters portal identities; it does not subscript the candidate pointer sequence with it. The serialized header/live selected-word join, general candidate-count bound and full target/paint/reachability child policies are not established by these bits alone.

00ABAAB0 is a concrete display consumer identified by lotEntranceArrow/lotEntranceLine. Under its enable gate it obtains the manager and calls006321C0 then00631F40. Failure clears/releases its two effect references; success updates display from the returned point. Display is not proof of route admission, visitor greeting or script-target policy.

## Original managed and current output boundary

Registered0078E640 copies only three floats from its internal sixteen-byte answer on success and returns AL1. Its false path leaves the supplied native pointer untouched. Its plain RET is distinct from the manager's RET0C.

Four complete selected pristine managed bodies contain251 CIL bytes/63 instructions. ScriptCore.World.GetLotMainEntranceLocation06000A0D and the public SimIFace facade0600073C each preinitialize the caller's vector to Vector3.Invalid before invoking the next layer. The original Vector3 initializer constructs Invalid from three positive infinities, distinct from Empty and OutOfWorld. The bodyless import06000889 is World_GetLotMainEntranceLocationImpl from Sims3Common.dll; metadata declares Winapi and an I1 Boolean return. Native untouched output alone therefore does not describe the complete public managed false result.

The current genuine native host first honors its stored script target override. Otherwise its authored resource lookup uses exact world/lot nullable caches, selects the minimum SaveId matching the packed serialized header word, transforms with the current lot and samples the retained height operation after unlocking. Failure explicitly writes zero and returns false. That original/current difference is preserved. Matching packed identity bits do not prove equivalence of native first-collected ordering, current minimum-SaveId selection or dynamic rebuilds.

## Current ownership and limits

The current floor-resource responsibility includes complete live/prepared input selection, floor presence, nullable pattern cache and installed deck admission. Its separate entrance owner keeps the authored nullable cache; a third owner keeps once-per-lot/rule diagnostics. They borrow the same existing host monitor also used by retained water/pond operations. The first floor-map initialization position and dictionary order are preserved, while the entrance owner remains at the original late map position. New owner/type initialization and delegate allocations have their explicit structural limits.

Presence reuse depends on pattern reference and min/max, without resource generation, flag identity or in-place mutation invalidation. Pattern failure caches null; caught deck failure returns without inserting a failed row. Entrance nulls stay cached by exact world/lot. The once diagnostic key has lot ID/rule but no world/generation; insertion precedes logging and is not undone by log failure. Resource catches and height-after-unlock ordering remain current project behavior, not inferred native synchronization policy.

This publication supplies complete selected original instructions and actual saved annotations. It does not establish dynamic cache invalidation, serialized/live joins, native child lifetime parity, concurrent provider snapshots, executed routing, save/reload acceptance or a replacement managed workflow. No product build, generator, test case, game, GPU or platform run was used.
