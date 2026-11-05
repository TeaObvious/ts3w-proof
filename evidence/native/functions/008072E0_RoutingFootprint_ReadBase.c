/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing polygon contract): Analyst name. ECX footprint; four stack slots
   RET10, ALsuccess. Release/reset prior reference owner and lock-list state, read
   UInt64object/ownerIDs, raw32+1C; version<5 reads one lock key, version>=5 a counted list, nonzero
   keys resolved via629570(routingOwner,index,1,key), resolution failure returnsAL0. Readraw32+30
   and flags+34. Versions<2 clear7C000000flagbits;2..5 adjust those bits from virtualfootprint/count
   state;>=6 retain readflags. Original floating payloads may appearUInt32 in inferredC;
   widths/bitpatterns authoritative. */

byte __thiscall
RoutingFootprint_ReadBase
          (void *this,void *stream,void *routingOwner,uint recordIndex,uint serializerVersion)

{
  uint *outUInt32;
  undefined4 *puVar1;
  bool bVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  void *pvVar6;
  void *pvStack_4;
  
  puVar1 = *(undefined4 **)((int)this + 0x20);
  pvStack_4 = this;
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)this + 0x20) = 0;
    iVar5 = puVar1[1];
    puVar1[1] = iVar5 + -1;
    if (iVar5 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  bVar2 = Stream_ReadUInt64(*(void **)((int)stream + 8),(ulonglong *)((int)this + 0xc),
                            *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_ReadUInt64(*(void **)((int)stream + 8),(ulonglong *)((int)this + 0x14),
                            *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0x1c),
                            *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  puVar1 = (undefined4 *)((int)this + 0x24);
  FUN_00806ea0(puVar1);
  uVar4 = serializerVersion;
  pvStack_4 = (void *)0x0;
  *puVar1 = puVar1;
  *(undefined4 **)((int)this + 0x28) = puVar1;
  if (serializerVersion < 5) {
    serializerVersion = 0;
    bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),&serializerVersion,
                              *(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    if (serializerVersion != 0) {
      pvStack_4 = (void *)0x1;
      uVar3 = FUN_00629570(routingOwner,recordIndex,1,serializerVersion);
      if ((char)uVar3 == '\0') {
        return 0;
      }
    }
  }
  else {
    bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)&pvStack_4,
                              *(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    uVar3 = recordIndex;
    pvVar6 = (void *)0x0;
    if (pvStack_4 != (void *)0x0) {
      do {
        recordIndex = 0;
        bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),&recordIndex,
                                  *(uint *)((int)stream + 0x10));
        StreamReader_AccumulateStatus(stream,bVar2);
        if ((recordIndex != 0) &&
           (uVar4 = FUN_00629570(routingOwner,uVar3,1,recordIndex), (char)uVar4 == '\0')) {
          return 0;
        }
        pvVar6 = (void *)((int)pvVar6 + 1);
        uVar4 = serializerVersion;
      } while (pvVar6 < pvStack_4);
    }
  }
  bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),(uint *)((int)this + 0x30),
                            *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  outUInt32 = (uint *)((int)this + 0x34);
  bVar2 = Stream_ReadUInt32(*(void **)((int)stream + 8),outUInt32,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  if (uVar4 < 2) {
    *outUInt32 = *outUInt32 & 0x83ffffff;
    return 1;
  }
  if (uVar4 < 6) {
    iVar5 = (*(code *)**(undefined4 **)this)();
    uVar4 = *outUInt32;
    *outUInt32 = (uVar4 + iVar5 * (int)pvStack_4 * -0x4000000 ^ uVar4) & 0x7c000000 ^ uVar4;
  }
  return 1;
}

