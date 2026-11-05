# Construction references and modular stairs

## Reference and boundary

Static PC1.67 original reader/writer/consumer and x86 instruction comparison.
Names are analyst descriptions. Each pair below contains the complete original
function body, actual annotated Ghidra rendering and explicit nonowned gaps.
Original bytes were checked against the centrally identified pristine executable;
the annotated database was saved clean. No original-game execution is claimed.

## Reference tables and wall ordinals

REFS version3 carries the width Boolean; older versions retain context width.
Registered handle allocation uses retained map count, while serialized tables
traverse native hash structures. Local dependency handles form a set. Narrow
project serializers that preserve source order, allocate above maximum handle or
retain a raw tail implement a subset, not those complete container semantics.

A wall pattern map is F12E5E12: UInt32 version, inline default key, UInt32 count,
then context-registered UInt16 handle / UInt32 ordinal / UInt32 reference-count
rows in the current writer. The default key is consumed for ordinal zero; zero
must not universally mean no pattern. The reader can resolve wide context handles
but the selected writer explicitly narrows its registration result.

## LDES and construction provider ownership

The original LDES writer emits current version45hex and complete fields; the
reader establishes the signed floor range after the variable-length UTF16 name,
identity, transform and dimensions. Patching only supported source-prefix bytes
is distinct from implementing an original old-version writer. Construction
load/save dispatchers own resource identities and manager status; a C# package
path dictionary or stamp cache is not their original representation.

## Stair version and layout

The original manager writer emits version6 and hash-traversed flights. A current
narrow-handle flight has52 fixed bytes: ID, four handles, linked object ID,
direction, two endpoint triples and railing count. Each railing emits20bytes:
ID, four handles, X and Z. Railing serialization resolves its own runtime map;
missing entries retain original default values, followed by dependency calls.
The raw decompiler count CONCAT expression is contradicted by the actual
SUB vector pointers / SAR EAX,2 / write32 instructions; it is not wire packing.

The reader uses inline product keys belowv3 and context keys fromv3. The extra
three design keys appear only when version>4. Linked object IDs appear fromv2.
The trailing flag map appears fromv4; v4/5 records have justUInt32 keys and
implicit true, while v6 adds a Boolean. A copier that supports only a retained
v6 suffix cannot claim original v4/5 conversion.

## Native bucket order

ID comparison/hash usesUInt32. Insert finds equal IDs before growth; missing IDs
use prime growth at load1/growth2 and insert at bucket head. Rehash removes old
heads and reinserts at new heads, with buckets traversed in order. Serialization
then walks those buckets/chains. The growth helper's x87 integer/float slot reuse
is type-punning in decompiler output. The complete256-word original domain at
FB9580..FB9980 is recorded in [original constant data](../../evidence/objects/render-pick-original-data.tsv).
Original small-count buckets are2,5,11,23,47,97,199,409; the final capacity is
FFFFFFFB. This domain does not establish allocator failure or out-of-range safety.

## Canonical original function pairs

- [ReferenceStore_WriteResource ASM](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.asm) ([C](../../evidence/native/functions/007D6940_ReferenceStore_WriteResource.c)): ECX owner RET14: stream,group,instanceLow/high,optional remap. Write version3,normalized width Boolean,UInt32 map count,T/G/I keys and context-width handles,UInt32 local-set count and UInt16 local handles. Hash traversal, key remap and sticky stream status differ from ordered narrow project append tables.
- [ReferenceStore_ReadPayload ASM](../../evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.asm) ([C](../../evidence/native/functions/007D6C90_ReferenceStore_ReadPayload.c)): Version1..3 reader; version3 alone supplies handle-width byte. Duplicate handles overwrite; reverse map is rebuilt through native traversal. Versions2/3 local handles form a set. No count-dependent width heuristic or exact-EOF contract. Beforev3 the caller supplies width; v3 supplies its own flag.
- [ResourceReferences_WriteRegisteredContextKey ASM](../../evidence/native/functions/007D74F0_ResourceReferences_WriteRegisteredContextKey.asm) ([C](../../evidence/native/functions/007D74F0_ResourceReferences_WriteRegisteredContextKey.c)): ECX context with stream/key stack args RET8. Find key in retained map; absent key is assigned existing context count at+C and inserted, rather than max input handle+1. Flag+82 chooses UInt32 or low16-bit write. Both paths accumulate stream status. Actual beginning007D74F0;007D75B0 is an interior instruction, not another entry.
- [WallPatternMap_WriteResource ASM](../../evidence/native/functions/00B6FF20_WallPatternMap_WriteResource.asm) ([C](../../evidence/native/functions/00B6FF20_WallPatternMap_WriteResource.c)): ECX map, five stack words RET14: stream,key context,group,instance low/high. Open F12E5E12,writeUInt32version2,inline16-byte default key,count,hash-traversed rows of registered UInt16 key handle,UInt32 ordinal,UInt32 refcount. Context registration result is explicitly narrowed here. Return ALstatus, false on open failure. Counts belong to live edit-time map state.
- [WallPatternMap_ReadResource ASM](../../evidence/native/functions/00B701E0_WallPatternMap_ReadResource.asm) ([C](../../evidence/native/functions/00B701E0_WallPatternMap_ReadResource.c)): ECX map, five stack words RET14. Clear both maps before openF12E5E12. Readversion,inline defaultkey,count. Belowv2 rowkey inline; fromv2 use resource-table context width. Follow withUInt32ordinal/refcount and publish key/ordinal maps. Unsigned counted loop continues after sticky failures; close and returnAL. No current v2-only or partial-row admission policy is implied.
- [WallPatternSide_ResolveOrdinalKey ASM](../../evidence/native/functions/00B49F20_WallPatternSide_ResolveOrdinalKey.asm) ([C](../../evidence/native/functions/00B49F20_WallPatternSide_ResolveOrdinalKey.c)): ECX sideowner, ordinal-pointer stackarg RET4. Zero-extendUInt16ordinal. Ordinal0 returns map+40 default resource key; other ordinals look up map+20 and return found node+8 or null. Zero ordinal is not inherently an absent native pattern.
- [Lot_ReadDescriptionResource ASM](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.asm) ([C](../../evidence/native/functions/00AC5A40_Lot_ReadDescriptionResource.c)): LDES D063545B/group0 original reader. UInt16version,localization/name/identity/pose/dimensions precede signed floor levels at+17C/+180. Complete selected original reader retained; host description-level rewriting must preserve understood fields through its supported modern decode/re-emission; it does not establish the complete native resource-context, old-version or live-state reconstruction.
- [Lot_WriteDescriptionResource ASM](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.asm) ([C](../../evidence/native/functions/00ACA430_Lot_WriteDescriptionResource.c)): LDES D063545B/group0 writer hardcodesUInt16version45hex, full current header and later fields. Signed floor range+17C/+180 follows the name-dependent prefix. The original writer emits a complete current resource. A host range-only patch is not established original behavior; current host modern decode/re-emission and live/export policy must be compared separately.
- [ModularStairs_WriteManager ASM](../../evidence/native/functions/00B1B8F0_ModularStairs_WriteManager.asm) ([C](../../evidence/native/functions/00B1B8F0_ModularStairs_WriteManager.c)): ECX manager, five stackwords RET14. Open04A09283, writeversion6,count; walk +20bucket table/+24bucketcount and node+80next, invokingB1AB50 perflight. Then write flag map count+ C8 and hash-traversedUInt32key/Boolean rows from+C0. Close and return onlyALstatus; upperEAX concat is a decompiler artifact.
- [ModularStairs_WriteFlight ASM](../../evidence/native/functions/00B1AB50_ModularStairs_WriteFlight.asm) ([C](../../evidence/native/functions/00B1AB50_ModularStairs_WriteFlight.c)): ECX manager,stream,keycontext,flight RET0C. WriteUInt32ID,four registeredUInt16keyhandles,UInt64linkedobject,UInt32direction,two X/Z/level triples,UInt32railing count. Actual count comes from (vectorEnd-vectorBegin)>>2; decompiler CONCAT22 is alias propagation, not an authored packing format. Loop each railing ID and callB18BE0. Fixed narrow wire prefix52bytes; railing output20bytes. Current2-railing guard is a project limit.
- [ModularStairs_ReadManager ASM](../../evidence/native/functions/00B21750_ModularStairs_ReadManager.asm) ([C](../../evidence/native/functions/00B21750_ModularStairs_ReadManager.c)): Clear retained flights,open04A09283 and readversion/count. Product inline belowv3,context handle fromv3. Three additional design keys only when version>4. Linked object exists fromv2. Flag list appears fromv4; v4/5 rows have onlyUInt32key and defaulttrue; v6 adds explicitBoolean. Current suffix copier only supportsv6 or no pre-v4suffix. Existing higher-level helper creation remains original consumer work.
- [ModularStairMap_FindOrInsert ASM](../../evidence/native/functions/00B21560_ModularStairMap_FindOrInsert.asm) ([C](../../evidence/native/functions/00B21560_ModularStairMap_FindOrInsert.c)): ECX hash owner and output iterator/key stackargs. HashUInt32ID modulo bucketcount; equalID returns existingnode without resize. MissingID calls growth004E0EC0 at load1/growth2, createsnode, rehashes when requested, head-inserts using node+80next and increments count. Current ordered replay preserves this small-count insertion behavior.
- [ModularStairMap_Rehash ASM](../../evidence/native/functions/00C4B560_ModularStairMap_Rehash.asm) ([C](../../evidence/native/functions/00C4B560_ModularStairMap_Rehash.c)): ECX owner,new bucketcount RET4. Allocate zeroed bucket array plus sentinelFFFFFFFF; walk old buckets ascending, repeatedly removehead via node+80 and head-insert at UInt32ID%newcount. Free old bucket storage only when oldcount>1, then publish new pointer/count. This reverses chains when keys remain colliding.
- [HashGrowth_SelectPrimeCapacity ASM](../../evidence/native/functions/004E0EC0_HashGrowth_SelectPrimeCapacity.asm) ([C](../../evidence/native/functions/004E0EC0_HashGrowth_SelectPrimeCapacity.c)): Original integer inputs and x87/SSE alias annotations retained. Stair mapB21560 consumes this growth result. The complete256-word domain matches original dataFB9580..FB9980. Native end-of-domain dereference has no local guard.
- [LotDataLayers_WriteSavedResources ASM](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.asm) ([C](../../evidence/native/functions/00AC4FA0_LotDataLayers_WriteSavedResources.c)): Original lot construction save dispatcher. Uses supplied resource stream/key context/lot identity and manager resource keys; current package-copy/source-path dictionary is a project provider mechanism. Full manager ordering and status behavior remain visible here, not replaced by detached array writers.
- [LotDataLayers_ReadSavedResources ASM](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.asm) ([C](../../evidence/native/functions/00AC91D0_LotDataLayers_ReadSavedResources.c)): Original construction load dispatcher creates missing manager owners, resolves records by supplied lot identity and existing key context and consumes their status. Current saved-versus-world delta comparison and per-path registry are project integration policy; this native dispatcher does not implement their cache identity.
- [ResourceReferences_RegisterKey ASM](../../evidence/native/functions/007D7070_ResourceReferences_RegisterKey.asm) ([C](../../evidence/native/functions/007D7070_ResourceReferences_RegisterKey.c)): ECX context,key and low-byte markLocal flag RET8. Lookup existing key; missing key uses context count+C before insertion. If flag lowbyte nonzero, insert truncatedUInt16handle into local set at+40. ReturnUInt32handle. WritersB1AB50,B18BE0,B6FF20 explicitly narrow the returned value, independent from read-context width. Count-based registration and unique local-handle state belong to the context.
- [ModularStairs_WriteRailing ASM](../../evidence/native/functions/00B18BE0_ModularStairs_WriteRailing.asm) ([C](../../evidence/native/functions/00B18BE0_ModularStairs_WriteRailing.c)): ECX manager,stream,keycontext,railingID record RET0C. WriteUInt32ID; lookup existing railing map+3C. Missing lookup retains null/default resource keys and coordinate defaults; found copies full runtime record. Emit four registeredUInt16keys followed byX/Zbinary32, total20bytes. Additional design dependency notifications occur when manager+18 exists. Project writes supplied resolved railing values and does not reproduce this runtime lookup/default/dependency mechanism.

## Limits

Native stream sticky status, hash/set ordering, dependency notifications and
partial mutation remain visible. Original whole-world provider selection,
complete key regeneration and helper-object lifetime are separate contracts.
No current source cache, row-equality heuristic, arbitrary-input guard or
filesystem transaction is promoted to original behavior by this reference.

[Library description candidate/key join](library-description-key-selection.md) now supplies complete9B1780/9B1280 and the bounded type-only predicate read. Native group0 request is distinct from candidate group; concrete provider fallback/iteration and AD5B30/file replacement remain open.
