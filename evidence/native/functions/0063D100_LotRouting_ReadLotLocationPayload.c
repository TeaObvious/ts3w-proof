/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX routing owner; four stack slots
   RET10, AL status. ReadUInt32payload version; unsigned>2 fails; <2 enters63CE40 fallback. For2
   retain supplied context at lot record+170 and low16+4 at+16C, then623EC0(stream,routingowner).
   Read sized blocks/object count, invoke per-object reader667230, seek declared relative remaining
   length, then63CE40 finalization. Version/context pointer expressions in C are type-propagation
   artifacts. */

byte __thiscall
LotRouting_ReadLotLocationPayload
          (void *this,void *stream,uint lotLow,uint lotHigh,uint loadContextValue)

{
  void *this_00;
  uint uVar1;
  uint uVar2;
  char cVar3;
  bool bVar4;
  char cVar5;
  byte bVar6;
  undefined4 uVar7;
  int *this_01;
  void *pvVar8;
  uint local_c;
  uint local_8;
  uint local_4;
  
  uVar2 = lotHigh;
  uVar1 = lotLow;
  uVar7 = LotRouting_HasAdmittedLotRecord(this,lotLow,lotHigh);
  cVar3 = (char)uVar7;
  if (cVar3 != '\0') {
    FUN_006303b0(this,uVar1,uVar2);
  }
  this_00 = stream;
  if (*(char *)((int)stream + 0x14) != '\0') {
    bVar4 = Stream_ReadUInt32(*(void **)((int)stream + 8),&local_4,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar4);
    if (local_4 < 3) {
      if (local_4 < 2) {
        pvVar8 = (void *)0x0;
LAB_0063d2d6:
        bVar6 = FUN_0063ce40(this,this_00,(ushort *)uVar1,uVar2,cVar3,(char)pvVar8);
        return bVar6;
      }
      stream = (void *)FUN_0062f2d0((void *)((int)this + 0x48),&lotLow);
      *(uint *)((int)stream + 0x170) = loadContextValue;
      *(short *)((int)stream + 0x16c) = (short)loadContextValue + 4;
      bVar6 = LotRouting_ReadLotRecordHeader(stream,this_00,this);
      if (bVar6 != 0) {
        local_c = 0;
        StreamReader_ReadUInt32Into(this_00,&local_c);
        loadContextValue = local_c;
        cVar5 = FUN_0062d190(this,this_00,(int *)&loadContextValue,'\x01',(int)stream,local_4);
        if (cVar5 != '\0') {
          StreamReader_ReadUInt32Into(this_00,&local_c);
          lotLow = local_c;
          local_8 = 0;
          StreamReader_ReadUInt32Into(this_00,&local_8);
          loadContextValue = 0;
          if (local_8 != 0) {
            do {
              stream = (void *)0x0;
              bVar4 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&stream,
                                        *(uint *)((int)this_00 + 0x10));
              StreamReader_AccumulateStatus(this_00,bVar4);
              this_01 = FUN_006300c0(this,uVar1,uVar2,(int)stream,1);
              if (this_01 == (int *)0x0) {
                bVar6 = FUN_0063ce40(this,this_00,(ushort *)uVar1,uVar2,cVar3,'\0');
                return bVar6;
              }
              cVar5 = FUN_00667230(this_01,this_00);
              if (cVar5 == '\0') goto LAB_0063d1d7;
              loadContextValue = loadContextValue + 1;
            } while (loadContextValue < local_8);
          }
          StreamContext_SeekWithSignedAbsoluteGuard(this_00,lotLow,1);
          stream = (void *)CONCAT31(stream._1_3_,*(undefined1 *)((int)this_00 + 0x14));
          pvVar8 = stream;
          goto LAB_0063d2d6;
        }
      }
LAB_0063d1d7:
      bVar6 = FUN_0063ce40(this,this_00,(ushort *)uVar1,uVar2,cVar3,'\0');
      return bVar6;
    }
  }
  FUN_0062cce0(this,'\0');
  if (cVar3 != '\0') {
    FUN_0063cdd0(this,(ushort *)uVar1,uVar2);
  }
  StreamReader_AccumulateStatus(this_00,0);
  *(undefined1 *)((int)this_00 + 0x14) = 0;
  if (cVar3 == '\0') {
    FUN_0062ec40((int)this);
  }
  return *(byte *)((int)this_00 + 0x14);
}

