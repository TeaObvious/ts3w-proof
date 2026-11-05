# Polygon footprint persistence and bounds

Static original PC1.67 writer/reader/consumer comparison via GhidrAssist explicitly
on /TS3W.exe. Analyst names are descriptive. Six complete canonical original
bodies contain799instructions/2100bytes, independently matching pristine bytes.
The actual annotated C retains decompiler artifacts. Database saved clean; no
original bytes changed. No original game execution.

## Contracts

Footprint base records retain64-bit object and owner IDs independently. Current
writer stores a counted lock-key list; reader versions below5 consume a single
key, from5 a list, with native reference resolution and versioned flag repair.
Native polygon storage preserves ordered rings and every vertex. Four stored
AABB words follow the rings plus a Boolean. The writer does not derive AABB from
vertices. The reader clears all four bounds when either minimum magnitude is
at least65536: machine comparisons are unsigned magnitude bits against47800000
with JNC, equivalent to the C expression greater than477FFFFF. Maximum lanes are
not separately constrained by that predicate. Do not invent a full finite check.

Current derived-loop bounds, lot+4 admission, half-cell occupancy/center padding,
small-component removal, area cutoffs and metric wall coalescing remain distinct
frontend projection policies. This persistence proof does not certify them as
native geometry behavior. Reconstructing complete routing state and native render
emission remains separate.

## Canonical original pairs

- [RoutingFootprint_WriteBase ASM](../../evidence/native/functions/008071C0_RoutingFootprint_WriteBase.asm) ([C](../../evidence/native/functions/008071C0_RoutingFootprint_WriteBase.c)): Analyst name. ECX footprint; stream/routingOwner stack slots RET8, AL always1 after writes. Emit UInt64 objectID+ C,UInt64 ownerID+14,rawfloat32+1C,counted lock-reference UInt32 values resolved through routingOwner,rawfloat32+30 and UInt32flags+34. Writer uses current counted-list form; no rectangle/level/role inference. Stream failures accumulate in context but this leaf still returnsAL1.
- [RoutingFootprint_ReadBase ASM](../../evidence/native/functions/008072E0_RoutingFootprint_ReadBase.asm) ([C](../../evidence/native/functions/008072E0_RoutingFootprint_ReadBase.c)): Analyst name. ECX footprint; four stack slots RET10, ALsuccess. Release/reset prior reference owner and lock-list state, read UInt64object/ownerIDs, raw32+1C; version<5 reads one lock key, version>=5 a counted list, nonzero keys resolved via629570(routingOwner,index,1,key), resolution failure returnsAL0. Readraw32+30 and flags+34. Versions<2 clear7C000000flagbits;2..5 adjust those bits from virtualfootprint/count state;>=6 retain readflags. Original floating payloads may appearUInt32 in inferredC; widths/bitpatterns authoritative.
- [RoutingPolygonFootprint_WritePayload ASM](../../evidence/native/functions/0080DDF0_RoutingPolygonFootprint_WritePayload.asm) ([C](../../evidence/native/functions/0080DDF0_RoutingPolygonFootprint_WritePayload.c)): Analyst name. ECX polygonfootprint; stream/routingOwner stack slots RET8, AL result. Call8071C0basewriter, query actualpolygoncount through vtable0, writeUInt32count and serialize each36-byte polygon record via818D20. It neither rasterizes rectangles nor merges contour edges. Child writes accumulate contextstatus separately from AL1 return.
- [RoutingPolygonFootprint_ReadPayload ASM](../../evidence/native/functions/0080F080_RoutingPolygonFootprint_ReadPayload.asm) ([C](../../evidence/native/functions/0080F080_RoutingPolygonFootprint_ReadPayload.c)): Analyst name. ECX polygonfootprint; four stackslotsRET10, ALresult. Clear old polygon storage, call8072E0base reader, readUInt32polygoncount, allocateadmit80EA40 then call818F50(stream,serializerVersion) for each36-byte polygon record. Second child stackslot is physically pushed from suppliedversion even though body818F50 does not consume it. Any childAL0 returnsfalse; zero polygons canreturnAL1 independently of existing streamstatus. No arbitrary scanner resynchronization occurs.
- [RoutingPolygon_WriteRingsAndBounds ASM](../../evidence/native/functions/00818D20_RoutingPolygon_WriteRingsAndBounds.asm) ([C](../../evidence/native/functions/00818D20_RoutingPolygon_WriteRingsAndBounds.c)): Analyst name. ECX36-byte polygonrecord; stream stackslotRET4, ALalways1. Ringcount=(end-begin)>>4; each ring vertexcount=(end-begin)>>3, orderedbinary32X/Zpairs, then four existing binary32AABBwords+10..+1C and Boolean+20. Bounds are authored/retained state, not recomputed from vertices here. Stream writes accumulate status but do not change leafAL1. Empty rings/counts serialize without current projection safetyceilings.
- [RoutingPolygon_ReadRingsAndBounds ASM](../../evidence/native/functions/00818F50_RoutingPolygon_ReadRingsAndBounds.asm) ([C](../../evidence/native/functions/00818F50_RoutingPolygon_ReadRingsAndBounds.c)): Analyst name. ECX36-byte polygonrecord; two physicalslotsRET8, streamused and suppliedserializerVersionunused. Clear/reserve rings, readUInt32ringcount, per-ringUInt32vertexcount and exact32-bitX/Zlanes, then four storedAABBwords+10..+1C and Boolean+20. Count loopsunsigned. InstructionCMP magnitude0x47800000/JNC clearsALLfourbounds when EITHER minimumlane magnitude>=65536, equivalently unsignedbits>477FFFFF; maximumlanes are not checked by that predicate. ReturnAL contextstatus. InferredUInt32 pointer/float aliases do not certify extra semantic clamps.

## ABI and failure limits

818F50 physically consumes two stack slots and returnsRET8. Its caller80F080
pushes stream and serializer version; the body consumes only stream. This unused
parameter must remain represented rather than inheriting a one-argument inferred
prototype. Writer818D20 has one slotRET4. Base/polygon writer leaves may return
AL1 after accumulating a failed write; that is different from reader818F50's
stream-status return. Native owner allocation/reference/rollback behavior is not
a pure detached-array parser failure contract. Rings/counts remain UInt32, without
current project safety ceilings or scanner resynchronization being implied.
