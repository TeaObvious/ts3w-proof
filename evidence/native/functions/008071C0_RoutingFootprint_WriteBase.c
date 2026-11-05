/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing polygon contract): Analyst name. ECX footprint; stream/routingOwner
   stack slots RET8, AL always1 after writes. Emit UInt64 objectID+ C,UInt64
   ownerID+14,rawfloat32+1C,counted lock-reference UInt32 values resolved through
   routingOwner,rawfloat32+30 and UInt32flags+34. Writer uses current counted-list form; no
   rectangle/level/role inference. Stream failures accumulate in context but this leaf still
   returnsAL1. */

byte __thiscall RoutingFootprint_WriteBase(void *this,void *stream,void *routingOwner)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  byte bVar3;
  uint uVar4;
  
  bVar3 = FUN_004de0c0(*(int **)((int)stream + 8),*(undefined8 *)((int)this + 0xc),
                       *(int *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar3);
  bVar3 = FUN_004de0c0(*(int **)((int)stream + 8),*(undefined8 *)((int)this + 0x14),
                       *(int *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar3);
  bVar3 = FUN_004de390(*(int **)((int)stream + 8),*(undefined4 *)((int)this + 0x1c),
                       *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar3);
  puVar1 = (undefined4 *)((int)this + 0x24);
  uVar4 = 0;
  for (puVar2 = *(undefined4 **)((int)this + 0x24); puVar2 != puVar1; puVar2 = (undefined4 *)*puVar2
      ) {
    uVar4 = uVar4 + 1;
  }
  bVar3 = Stream_WriteUInt32(*(void **)((int)stream + 8),uVar4,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar3);
  for (puVar2 = (undefined4 *)*puVar1; puVar2 != puVar1; puVar2 = (undefined4 *)*puVar2) {
    uVar4 = FUN_0062b890(routingOwner,(int *)puVar2[2]);
    bVar3 = Stream_WriteUInt32(*(void **)((int)stream + 8),uVar4,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar3);
  }
  bVar3 = FUN_004de390(*(int **)((int)stream + 8),*(undefined4 *)((int)this + 0x30),
                       *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar3);
  bVar3 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x34),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar3);
  return 1;
}

