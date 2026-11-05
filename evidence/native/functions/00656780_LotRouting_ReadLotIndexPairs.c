/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX secondary routing owner; three
   physical stack slots RET0C, AL status; only stream slot consumed in body, twoID slots retained
   for caller ABI. Require stream/dependencies; version>1 returnsfalse; version0 clears sticky
   status and returnsfalse; version1 readsUInt32count and key/value rows, inserting/updating map+
   A0. Original counted comparison unsigned; sticky read failures do not independently stop loop. */

byte __thiscall LotRouting_ReadLotIndexPairs(void *this,void *stream,uint lotLow,uint lotHigh)

{
  void *this_00;
  bool bVar1;
  uint *puVar2;
  void *pvVar3;
  uint local_c;
  uint local_8;
  uint local_4;
  
  this_00 = stream;
  if (((*(char *)((int)stream + 0x14) != '\0') && (*(int *)((int)this + 0xc) != 0)) &&
     (*(int *)((int)this + 0x10) != 0)) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_4,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
                    /* Version1 only: unsigned greater fails; zero enters sticky failure path. */
    if (1 < local_4) {
      return 0;
    }
    if (local_4 != 0) {
      stream = (void *)0x0;
      StreamReader_ReadUInt32Into(this_00,(uint *)&stream);
      pvVar3 = (void *)0x0;
      if (stream != (void *)0x0) {
        do {
          local_c = 0;
          local_8 = 0;
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_c,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_8,
                                    *(uint *)((int)this_00 + 0x10));
          StreamReader_AccumulateStatus(this_00,bVar1);
          puVar2 = (uint *)FUN_00654810((void *)((int)this + 0xa0),&local_c);
          pvVar3 = (void *)((int)pvVar3 + 1);
          *puVar2 = local_8;
        } while (pvVar3 < stream);
      }
      return *(byte *)((int)this_00 + 0x14);
    }
  }
  StreamReader_AccumulateStatus(this_00,0);
  *(undefined1 *)((int)this_00 + 0x14) = 0;
  return 0;
}

