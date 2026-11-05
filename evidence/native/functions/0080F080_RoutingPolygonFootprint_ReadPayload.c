/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing polygon contract): Analyst name. ECX polygonfootprint; four
   stackslotsRET10, ALresult. Clear old polygon storage, call8072E0base reader,
   readUInt32polygoncount, allocateadmit80EA40 then call818F50(stream,serializerVersion) for
   each36-byte polygon record. Second child stackslot is physically pushed from suppliedversion even
   though body818F50 does not consume it. Any childAL0 returnsfalse; zero polygons canreturnAL1
   independently of existing streamstatus. No arbitrary scanner resynchronization occurs. */

byte __thiscall
RoutingPolygonFootprint_ReadPayload
          (void *this,void *stream,void *routingOwner,uint recordIndex,uint serializerVersion)

{
  byte bVar1;
  bool readSucceeded;
  undefined4 uVar2;
  void *this_00;
  void *pvVar3;
  int iVar4;
  void *local_4;
  
  local_4 = this;
  FUN_0080ef80((int)this);
  bVar1 = RoutingFootprint_ReadBase(this,stream,routingOwner,recordIndex,serializerVersion);
  if (bVar1 == 0) {
    return 0;
  }
  pvVar3 = (void *)0x0;
  local_4 = (void *)0x0;
  readSucceeded =
       Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&local_4,*(uint *)((int)stream + 0x10))
  ;
  StreamReader_AccumulateStatus(stream,readSucceeded);
  uVar2 = FUN_0080ea40(this,(int)local_4);
  if ((char)uVar2 == '\0') {
    return 0;
  }
  if (local_4 != (void *)0x0) {
    iVar4 = 0;
    do {
      this_00 = (void *)(*(int *)((int)this + 0x38) + iVar4);
      *(char **)((int)this_00 + 0xc) = "Routing/PolygonFootprint/PolyVec";
      bVar1 = RoutingPolygon_ReadRingsAndBounds(this_00,stream,serializerVersion);
      if (bVar1 == 0) {
        return 0;
      }
      pvVar3 = (void *)((int)pvVar3 + 1);
      iVar4 = iVar4 + 0x24;
    } while (pvVar3 < local_4);
  }
  return 1;
}

