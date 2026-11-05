/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX routing owner; three stack slots
   RET0C, AL status. For admitted lot state/availability writeUInt32payload version2,
   call621C00(stream,routingowner) on per-lot record, then sized-block begin/finish/backpatch around
   footprint/object records and key table. Reject/fallback helper63CE40 owns cleanup/status cases.
   It does not establish arbitrary scanner rectangle/coordinate meanings. */

byte __thiscall LotRouting_WriteLotLocationPayload(void *this,void *stream,uint lotLow,uint lotHigh)

{
  uint *puVar1;
  void *this_00;
  uint uVar2;
  uint uVar3;
  char cVar4;
  byte bVar5;
  char cVar6;
  undefined4 uVar7;
  uint uVar8;
  uint arg0;
  uint uVar9;
  
  uVar3 = lotHigh;
  uVar2 = lotLow;
  uVar7 = LotRouting_HasAdmittedLotRecord(this,lotLow,lotHigh);
  cVar4 = (char)uVar7;
  if (cVar4 != '\0') {
    FUN_006303b0(this,uVar2,uVar3);
  }
  this_00 = stream;
  if (*(char *)((int)stream + 0x14) == '\0') {
    FUN_0062cce0(this,'\0');
    if (cVar4 != '\0') {
      FUN_0063cdd0(this,(ushort *)uVar2,uVar3);
    }
    StreamReader_AccumulateStatus(this_00,0);
    *(undefined1 *)((int)this_00 + 0x14) = 0;
    if (cVar4 == '\0') {
      FUN_0062ec40((int)this);
    }
    return *(byte *)((int)this_00 + 0x14);
  }
  if (cVar4 == '\0') {
    FUN_0062cce0(this,'\0');
    return *(byte *)((int)this_00 + 0x14);
  }
  stream = (void *)thunk_FUN_00835d40();
  if (stream == (void *)0x0) {
    bVar5 = FUN_0063ce40(this,this_00,(ushort *)uVar2,uVar3,cVar4,'\0');
    return bVar5;
  }
  uVar8 = FUN_00632280(this,uVar2,uVar3);
  if ((((char)uVar8 == '\0') && (uVar8 = FUN_00631830(this,uVar2,uVar3), (char)uVar8 == '\0')) ||
     ((uVar7 = FUN_0082b210(stream,uVar2,uVar3), (char)uVar7 != '\0' &&
      ((uVar8 = FUN_00632280(this,uVar2,uVar3), (char)uVar8 == '\0' &&
       (uVar8 = FUN_00631830(this,uVar2,uVar3), (char)uVar8 == '\0')))))) {
                    /* UInt32 lot payload version2 before per-lot header and sized blocks. */
    FUN_00565ae0(this_00,2);
    FUN_0062cce0(this,'\x01');
    stream = (void *)FUN_0062f2d0((void *)((int)this + 0x48),&lotLow);
    bVar5 = LotRouting_WriteLotRecordHeader(stream,this_00,this);
    if (bVar5 != 0) {
      uVar8 = Stream_BeginSizedBlock(this_00);
      arg0 = Stream_BeginSizedBlock(this_00);
      FUN_0062cce0(this,'\x01');
      FUN_0062b890(this,*(int **)((int)stream + 0x84));
      FUN_0062b890(this,*(int **)((int)stream + 0x88));
      uVar9 = FUN_006293e0((int)this);
      FUN_00565ae0(this_00,uVar9);
      puVar1 = *(uint **)((int)stream + 0x78);
      for (stream = *(void **)((int)stream + 0x74); stream != puVar1;
          stream = (void *)((int)stream + 4)) {
        lotLow = *(uint *)stream;
        if (lotLow != 0) {
          FUN_005684e0(this_00,*(uint *)(lotLow + 0x44));
          cVar6 = FUN_00666660((void *)lotLow,this_00);
          if (cVar6 == '\0') goto LAB_0063d0e1;
        }
      }
      Stream_FinishSizedBlock(this_00,uVar8);
      stream = (void *)0x0;
      uVar8 = FUN_0062b950(this,this_00,&stream);
      if ((char)uVar8 != '\0') {
        Stream_BackpatchUInt32(this_00,arg0,(uint)stream);
        FUN_0062cce0(this,'\0');
        FUN_0063cdd0(this,(ushort *)uVar2,uVar3);
        return *(byte *)((int)this_00 + 0x14);
      }
    }
  }
LAB_0063d0e1:
  bVar5 = FUN_0063ce40(this,this_00,(ushort *)uVar2,uVar3,cVar4,'\0');
  return bVar5;
}

