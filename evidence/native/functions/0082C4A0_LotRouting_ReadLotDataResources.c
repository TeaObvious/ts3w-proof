/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX routing owner; four stack slots
   RET10, AL status. Routing critical section owner+918 surrounds both resource reads.
   Optional07CD07EC requires exactversion5;046A7235/group0 exact suppliedlotID rejects versions>5,
   closes/disables below5, and exact5 invokes63D100 then656780 while sticky status permits. Managed
   pointer-looking lot/version expressions are inferred decompiler types; unsigned32 comparisons and
   low/high ID words are original instruction facts. */

byte __thiscall
LotRouting_ReadLotDataResources
          (void *this,uint lotLow,uint lotHigh,void *stream,uint loadContextValue)

{
  LPCRITICAL_SECTION this_00;
  void *this_01;
  bool bVar1;
  char cVar2;
  byte bVar3;
  undefined4 *this_02;
  undefined1 uVar4;
  uint local_20;
  uint local_1c;
  undefined4 local_18;
  undefined4 local_14;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x918);
  FUN_004e1c00(this_00,(uint *)&DAT_01022d28);
  this_01 = stream;
  uVar4 = 0;
  local_1c = lotHigh;
  local_20 = lotLow;
  local_18 = 0x7cd07ec;
  local_14 = 0;
  bVar1 = ResourceStreamContext_OpenRead(stream,&local_20,0);
  if (bVar1) {
    this_02 = FUN_0082bdd0(this,lotLow,lotHigh);
    if (this_02 == (undefined4 *)0x0) goto LAB_0082c50b;
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_01 + 8),(uint *)&stream,
                              *(uint *)((int)this_01 + 0x10));
    StreamReader_AccumulateStatus(this_01,bVar1);
    if ((&DAT_00000005 < stream) || (stream < &DAT_00000005)) goto LAB_0082c50b;
    if (*(char *)((int)this_01 + 0x14) != '\0') {
      cVar2 = FUN_00662f20(this_02,this_01);
      if (cVar2 == '\0') goto LAB_0082c50b;
    }
    ResourceStreamContext_Close(this_01);
    if (*(char *)((int)this_01 + 0x14) == '\0') {
      *(undefined1 *)((int)this + 0x977) = 0;
    }
  }
  if (((DAT_01167054 == '\0') || (*(char *)((int)this + 0x974) == '\0')) ||
     (*(char *)((int)this + 0x976) == '\0')) {
LAB_0082c5e3:
    *(undefined1 *)((int)this + 0x977) = 0;
    FUN_004e1cc0(this_00);
    return 1;
  }
  local_10 = lotLow;
  local_c = lotHigh;
  local_8 = 0x46a7235;
  local_4 = 0;
  bVar1 = ResourceStreamContext_OpenRead(this_01,&local_10,0);
  if (bVar1) {
    StreamReader_ReadUInt32Into(this_01,(uint *)&stream);
                    /* Unsigned resource version comparison: greater5 fails, below5 closes/disables,
                       exact5 parses. */
    if (&DAT_00000005 < stream) goto LAB_0082c50b;
    if (stream < &DAT_00000005) {
      ResourceStreamContext_Close(this_01);
      goto LAB_0082c5e3;
    }
    if (*(char *)((int)this_01 + 0x14) != '\0') {
      bVar3 = LotRouting_ReadLotLocationPayload
                        (*(void **)((int)this + 0x95c),this_01,lotLow,lotHigh,loadContextValue);
      if (bVar3 == 0) {
LAB_0082c50b:
        ResourceStreamContext_Close(this_01);
        *(undefined1 *)((int)this + 0x977) = 0;
        FUN_004e1cc0(this_00);
        return 0;
      }
      if (*(char *)((int)this_01 + 0x14) != '\0') {
        bVar3 = LotRouting_ReadLotIndexPairs(*(void **)((int)this + 0x960),this_01,lotLow,lotHigh);
        if (bVar3 == 0) goto LAB_0082c50b;
      }
    }
    ResourceStreamContext_Close(this_01);
    if ((*(char *)((int)this + 0x977) != '\0') && (*(char *)((int)this_01 + 0x14) != '\0')) {
      uVar4 = 1;
    }
  }
  *(undefined1 *)((int)this + 0x977) = uVar4;
  bVar3 = *(byte *)((int)this_01 + 0x14);
  FUN_004e1cc0(this_00);
  return bVar3;
}

