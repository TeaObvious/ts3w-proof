/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing polygon contract): Analyst name. ECX polygonfootprint;
   stream/routingOwner stack slots RET8, AL result. Call8071C0basewriter, query actualpolygoncount
   through vtable0, writeUInt32count and serialize each36-byte polygon record via818D20. It neither
   rasterizes rectangles nor merges contour edges. Child writes accumulate contextstatus separately
   from AL1 return. */

byte __thiscall RoutingPolygonFootprint_WritePayload(void *this,void *stream,void *routingOwner)

{
  byte bVar1;
  uint value;
  uint uVar2;
  int iVar3;
  
  bVar1 = RoutingFootprint_WriteBase(this,stream,routingOwner);
  if (bVar1 == 0) {
    return 0;
  }
  value = (*(code *)**(undefined4 **)this)();
  bVar1 = Stream_WriteUInt32(*(void **)((int)stream + 8),value,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar1);
  uVar2 = 0;
  if (value != 0) {
    iVar3 = 0;
    do {
      bVar1 = RoutingPolygon_WriteRingsAndBounds
                        ((void *)(*(int *)((int)this + 0x38) + iVar3),stream);
      if (bVar1 == 0) {
        return 0;
      }
      uVar2 = uVar2 + 1;
      iVar3 = iVar3 + 0x24;
    } while (uVar2 < value);
  }
  return 1;
}

