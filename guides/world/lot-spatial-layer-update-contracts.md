# Lot portal updates, pond helpers and transformed terrain layers

These PC 1.67 operations update private lot/routing/terrain state before their callers publish or consume the result. Their Original instructions establish concrete ordering and failure behavior that the generated C sometimes loses. The [instruction and complete genuine-C context](../../evidence/native/contexts/lot-spatial-current-projections.json) preserves twelve existing Ghidra definitions as captured on 2026-11-05, including both decompiler warnings. Its 16 recorded ranges contain 7,565 Original bytes and 2,273 instruction starts, independently decoded and compared with the pristine executable identified by the [reference identity](../../references/pc-167.md).

This context adds no canonical function pairs and accepts no new source signatures, Ghidra names, plates or variable mappings. The names beginning `FUN_` are actual captured identifiers. The context is useful Original evidence while those maintenance obligations remain open. The separate continuation described below is deliberately outside the captured owner union. All behavior here is static reconstruction; no original runtime execution was observed.

## Portal position and entrance ordering

`0063D310` receives the routing owner in ECX. It calls `00631870`, obtains two coordinate words through `00625E70`, and enumerates the selected record block using WORD+16Ch and stride44h. For each record it passes the +20h/+24h coordinates, flag1 and the coordinate scratch pointer to `0063A9E0`. It then calls `LotRouting_SelectMainEntranceIdentifier` and finally the routing service update. The corresponding existing producer is [ASM](../../evidence/native/functions/0063BF30_LotRouting_SelectMainEntranceIdentifier.asm) ([C](../../evidence/native/functions/0063BF30_LotRouting_SelectMainEntranceIdentifier.c)); the downstream getter is [ASM](../../evidence/native/functions/00631F40_LotRouting_GetMainEntranceWorldPosition.asm) ([C](../../evidence/native/functions/00631F40_LotRouting_GetMainEntranceWorldPosition.c)).

`008323D0` is another actual caller of `0063A9E0`, using flag0 and null scratch. Its selected path checks the service inputs, nonnull lot, successful identity lookup and lot byte+4BCh, derives inset footprint points, enumerates compact portal candidates and creates only when no matching portal is collected. Matching collection remains the separate existing helper [ASM](../../evidence/native/functions/0062FF80_LotRouteGraph_CollectObjectPortals.asm) ([C](../../evidence/native/functions/0062FF80_LotRouteGraph_CollectObjectPortals.c)). Enumeration ordinals, packed identifiers and output coordinates have distinct roles.

Three concrete projection limits govern `0063A9E0`:

- At `0063ACA8`, Original bytes `FF 24 8D 34 B3 63 00` perform an indirect **jump**, whereas C emits an indirect call and immediately returns. The eight-DWORD table at `0063B334` selects `0063ACAF`, `0063ACDA` or `0063AD09`. The separate interval `[0063ACAF,0063ADD7)` contains 296 bytes /69 starts with calls, tests and backedges to `0063AC84` and `0063AC7B`. The captured owner union is 2,071 bytes; adding this logical continuation gives a different 2,367-byte quantity. No new function, standalone continuation ABI or ownership repair follows.
- Physical stack words at EBP+10h/+14h are consumed by `MOVSS`/`FLD`, and callers form those slots with `FLD`/`FSTP`. Generated pointer formals do not establish pointer semantics. The physical ECX receiver, six stack words and `RET 18h` remain distinct from a recovered source declaration.
- Entry ECX is saved at stable stack base+48h. Calls to `006300C0`, `00637410` and `00635C60` reload that owner; the first uses ESP+54h after three pushes. C instead supplies `local_94`, which it has defined from a coordinate. This is a receiver projection loss, not evidence that coordinates are routing objects.

`008323D0` also has a conditional numerical mismatch. At `008327FB`, an actually completed unordered `FCOMIP` sets CF=ZF=PF=1; `JBE` at `008327FF` then selects the helper output. C's `result <= finiteCap` is false for NaN and selects its fallback. Whether the helper can produce NaN and whether the x87 exception state permits completion remain open. Separately, both quantizations save x87 control word, set RC bits0C00h, convert with `FISTP QWORD` and restore the word. Bare C `ROUND` is insufficient to specify that state-sensitive sequence.

These facts extend the [entrance boundary contract](../bridge/lot-spatial-resource-boundaries.md). They do not establish a complete portal producer graph, callback effects, event atomicity or all target-admission policies.

## Lot reset preserves a field that C leaves apparently uninitialized

`00A47400` captures selected border vectors, performs the lot reset/reinitialization, restores those vectors, resets water below the floor, notifies routing and frees its temporary vectors. Before the virtual+14h call and `00AB19C0`, Original `00A4748F/97` loads lot+10h and saves it to stack scratch. `00A474AB/AF` reloads the scratch and restores lot+10h. Its C restores `iStack_70` without a preceding generated assignment. The original instructions therefore preserve the old field; they do not demonstrate an original uninitialized read. Later use of the scratch's low byte for lot+4BCh is a distinct stage.

The reinitialization child is [ASM](../../evidence/native/construction/owner-records/00ACDC90_InitializeLotStateAndOwners.asm) ([C](../../evidence/native/construction/owner-records/00ACDC90_InitializeLotStateAndOwners.c)). The water reset at `00A47556` receives lot+294h and calls [ASM](../../evidence/native/functions/00AEA370_LotWater_ResetHeightsBelowFloor.asm) ([C](../../evidence/native/functions/00AEA370_LotWater_ResetHeightsBelowFloor.c)). Their child contracts remain separate from this caller's field-preservation proof.

## Pond refresh, rebuild and object identity

`00B65EC0` first runs `00B63840` when manager+9 is nonzero, then sets manager+8. If +8 is clear, the input option's low byte controls the refresh call. If +8 is set, it forwards the **entire incoming DWORD** to the rebuild child. `00B65F00` uses the same +9/+8 preparation, tail-jumps to refresh when +8 is clear and otherwise passes literal1 to rebuild. The generated C omits the rebuild argument in both callers. For example, a physical input word12345601 is forwarded unchanged on the rebuild path, even though the alternative refresh test reads only its low byte. This does not establish whether the child consumes the upper bits.

The existing refresh child is [ASM](../../evidence/native/functions/00B65E20_LotPonds_RefreshExistingHelperFootprints.asm) ([C](../../evidence/native/functions/00B65E20_LotPonds_RefreshExistingHelperFootprints.c)); rebuild is [ASM](../../evidence/native/functions/00B65220_LotPonds_RebuildAndUpdateNativeHelpers.asm) ([C](../../evidence/native/functions/00B65220_LotPonds_RebuildAndUpdateNativeHelpers.c)). The latter's physical `RET 4` is relevant to the missing argument, independently of its current inferred C prototype.

`00B63840` selects objects with product hash94A61341E464E854, collects them on the lot, and for each nonnull object invokes lot virtual+3Ch and `0076D2A0` with the object GUID. It then clears record GUID words+48h/+4Ch at stride60h, clears manager+9 and frees the temporary collection. It does **not** clear record pond ID+18h. Object GUID, product hash, ordinal and pond ID must remain distinct. All writers of manager+8/+9 and the children's actual creation/destruction failure policy remain open.

## Transformed terrain resources mutate before final status

`00AF1AA0` opens an index resource of type04EE6ABB using descriptor key words and the third input word. After an admitted open it resets selected terrain state, reads a separate version and entry count, builds stride18h resource-reference entries through descriptor+74h, records ordinal map values and reads terrain+18h plus another local word. That other word is not reused here as a version-admission gate.

It resizes the +60h vector, closes the index stream and constructs a coordinate transform from terrain+1Ch/+20h, descriptor dimensions `4*n+1` and descriptor+64h/+68h. For every reference it installs an allocated44h alpha-map object. Version>=9 uses a byte-block header and group `00D4DAA4+ordinal`. Sticky-success and positive signed traversal bounds admit its nested loop. A source WORD's sign bit selects the uniform-byte lane; otherwise the source comes from an expanded4x4 byte lane. `00CB30C0` supplies destination coordinates to `00AEE310`; this caller does not subsequently validate them. Allocator-null-looking C branches do not establish safe OOM handling, because the installed object is subsequently used.

The later layers retain separate payload contracts:

| Layer | Group / header / transformed copy | Caller-side payload |
| --- | --- | --- |
| Water | 00FF2067 / `00AEA1B0` / `00AEB0B0` | DWORD temporary vector and byte-order-aware word reader |
| Pond bits | 00137BE1 / `00AE9B10` / `00AE9F80` | Raw byte payload |
| Face flags, only version>4 | 00958344 / separate header / `00AEB180` | Raw byte payload |

Each copy follows the stream close and frees its temporary allocation afterward. All three calls supply the terrain receiver in ECX **in addition to five stack arguments**; their C omits the physical receiver. Exact swizzles, clipping, failure outputs and transform orientation remain delegated to the five unclosed child bodies `00CB2FD0`, `00CB30C0`, `00AEB0B0`, `00AE9F80` and `00AEB180`.

Version<10 calls `00AEA080`; empty/nonempty reference state selects dirty bounds, and a zero product on the nonempty path admits total-alpha initialization/rebuild. `00AEF480` ensures water/pond layers rather than unconditionally resetting every retained layer. Version<11 calls `00AF05F0`; version<12 calls `00AEED70`. Finally `00AF0DD0` runs, terrain byte0 is set to1 at `00AF22BD`, and AL is loaded from context+14h. There is **no final sticky-success test around that byte0 store** on the admitted-open path. Earlier failure can remain accumulated while private mutation continues; rollback, publication and actual malformed-input execution are not established.

The initial open-false branch also returns context+14h (`00AF1AFD -> 00AF22C0`) rather than the open helper's AL. The previously captured absent-provider path in [ASM](../../evidence/native/functions/007D8540_ResourceStreamContext_OpenRead.asm) ([C](../../evidence/native/functions/007D8540_ResourceStreamContext_OpenRead.c)) leaves that byte unchanged. Thus an open-false result alone does not prove that this caller returns false. The conditional case with an already-true sticky byte is a static relation, not an observed missing-provider execution.

## Header arithmetic and return width

`00AEE880`, `00AEF080` and `00AEF160` install/resize private pond-bit, water-word and face-byte storage before their final sticky-status check. Failure closes the resource; success leaves it open for the payload caller. Their first/header word is not universally required to equal1. Raw low32 dimension multiplication does not imply overflow validation.

The pond-bit count uses signed quotient/remainder operations: a raw productFFFFFFFF produces signed quotient0 plus the nonzero-remainder increment, yielding1. Unsigned ceiling division would yield536870912. This is a conditional arithmetic example, not an accepted malformed-file policy. Water uses a DWORD/Float32 payload vector and face uses bytes; a shared resource-type field does not unify those lanes.

Their final result is locally defined by `MOV AL,[context+14h]` followed by `RET 10h`; generated `undefined4`/`CONCAT31` does not establish a full-EAX Boolean. `00AEFF00` independently calls the ensure and sea-boundary rebuild children, then writes AL=1. It does not combine their success results.

## Remaining acceptance boundary

The context closes the missing-current-C dimension for twelve definitions and preserves exact Original instructions for every recorded range. It does not prove whole-operation closure for `0063A9E0`, precise source ABIs, complete indirect dependencies, all field writers, provider lifetime, concurrency, runtime failure handling or saved semantic Ghidra annotation. Canonical adoption must preserve one properly named ASM/C pair per function with maintained heads and references. Existing C parameter/local mappings remain untouched for the final export from maintained Ghidra.
