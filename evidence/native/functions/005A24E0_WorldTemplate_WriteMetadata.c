/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX metadata,
   stream-context pointer RET4, accumulated AL status. Writes typed resources using same01156138 key
   table, strings/hashes conditionally; lotcount and additional vector separately. Identity296A6258
   writer emits UInt16version1 thenUInt32stored+60 and+64, accumulatingstatus/closing each scope.
   Thumbnail image/path handling is retained as dependency context; external decoder implementation
   is not reverse engineered here. */

bool __thiscall WorldTemplate_WriteMetadata(void *this,void *streamContext)

{
  int *piVar1;
  void *this_00;
  bool bVar2;
  byte bVar3;
  bool bVar4;
  char cVar5;
  undefined4 local_2c [11];
  
  this_00 = streamContext;
  if (((*(int *)((int)this + 0x38) != 0 || *(int *)((int)this + 0x3c) != 0) &&
      (*(char *)((int)streamContext + 0x14) != '\0')) &&
     (bVar2 = ResourceStreamContext_OpenWrite(streamContext,&DAT_01156168,1), bVar2)) {
    bVar3 = FUN_004de0c0(*(int **)((int)this_00 + 8),
                         CONCAT26((short)((uint)*(undefined4 *)((int)this + 0x3c) >> 0x10),
                                  CONCAT15((char)((uint)*(undefined4 *)((int)this + 0x3c) >> 8),
                                           *(undefined5 *)((int)this + 0x38))),
                         *(int *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    ResourceStreamContext_Close(this_00);
  }
  if (((*(int *)((int)this + 0x28) != *(int *)((int)this + 0x2c)) &&
      (*(char *)((int)this_00 + 0x14) != '\0')) &&
     (bVar2 = ResourceStreamContext_OpenWrite(this_00,&DAT_01156158,1), bVar2)) {
    StreamContext_WriteUtf16String(this_00,(undefined4 *)((int)this + 0x28));
    ResourceStreamContext_Close(this_00);
  }
  if (((*(int *)((int)this + 0x20) != 0 || *(int *)((int)this + 0x24) != 0) &&
      (*(char *)((int)this_00 + 0x14) != '\0')) &&
     (bVar2 = ResourceStreamContext_OpenWrite(this_00,&DAT_01156148,1), bVar2)) {
    bVar3 = FUN_004de0c0(*(int **)((int)this_00 + 8),*(undefined8 *)((int)this + 0x20),
                         *(int *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    ResourceStreamContext_Close(this_00);
  }
  if (*(int *)((int)this + 0xc) == *(int *)((int)this + 0x10)) {
LAB_005a25de:
    if ((*(char *)((int)this_00 + 0x14) != '\0') &&
       (bVar2 = ResourceStreamContext_OpenWrite(this_00,&DAT_01156178,1), bVar2)) {
      bVar3 = Stream_WriteUInt32(*(void **)((int)this_00 + 8),*(uint *)((int)this + 8),
                                 *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar3);
      ResourceStreamContext_Close(this_00);
    }
  }
  else if (*(char *)((int)this_00 + 0x14) != '\0') {
    bVar2 = ResourceStreamContext_OpenWrite(this_00,&DAT_01156138,1);
    if (bVar2) {
      StreamContext_WriteUtf16String(this_00,(undefined4 *)((int)this + 0xc));
      ResourceStreamContext_Close(this_00);
    }
    goto LAB_005a25de;
  }
  piVar1 = (int *)((int)this + 0x40);
  if (((*(int *)((int)this + 0x40) != *(int *)((int)this + 0x44)) ||
      (*(int *)((int)this + 0x68) != 0)) && (*(char *)((int)this_00 + 0x14) != '\0')) {
    bVar2 = true;
    streamContext = (void *)0x0;
    bVar4 = ResourceStreamContext_OpenWrite(this_00,&DAT_01156188,1);
    if (bVar4) {
      if (*(int *)((int)this + 0x68) == 0) {
        cVar5 = FUN_00c88f40((wchar_t *)*piVar1,&streamContext,'\0','\x01');
        if (cVar5 != '\0') {
          FUN_00445400(local_2c);
          cVar5 = FUN_00445660(*(int **)((int)this_00 + 8),4,streamContext);
          bVar2 = cVar5 != '\0';
          if (streamContext != (void *)0x0) {
            (*(code *)**(undefined4 **)streamContext)(1);
          }
          streamContext = (void *)0x0;
          goto LAB_005a26df;
        }
      }
      else {
        FUN_00445400(local_2c);
        cVar5 = FUN_00445660(*(int **)((int)this_00 + 8),4,*(int **)((int)this + 0x68));
        if (cVar5 == '\0') {
          bVar2 = false;
        }
LAB_005a26df:
        FUN_00445440(local_2c);
      }
      ResourceStreamContext_Close(this_00);
      if (bVar2) goto LAB_005a2701;
    }
    StreamReader_AccumulateStatus(this_00,0);
    *(undefined1 *)((int)this_00 + 0x14) = 0;
  }
LAB_005a2701:
  if (*piVar1 != *(int *)((int)this + 0x44)) {
    bVar2 = true;
    if (*(char *)((int)this_00 + 0x14) == '\0') goto LAB_005a2734;
    bVar2 = ResourceStreamContext_OpenWrite(this_00,&DAT_01156198,1);
    if (bVar2) {
      StreamContext_WriteUtf16String(this_00,piVar1);
      ResourceStreamContext_Close(this_00);
    }
  }
  bVar2 = *(char *)((int)this_00 + 0x14) == '\0';
LAB_005a2734:
  if ((!bVar2) && (bVar2 = ResourceStreamContext_OpenWrite(this_00,&DAT_011561a8,1), bVar2)) {
    FUN_007d8810(this_00,(void *)((int)this + 0x50));
    ResourceStreamContext_Close(this_00);
  }
  if ((*(char *)((int)this_00 + 0x14) != '\0') &&
     (bVar2 = ResourceStreamContext_OpenWrite(this_00,&DAT_011561b8,1), bVar2)) {
                    /* Analyst: Identity writer emits UInt16 version1 before stored name/type words.
                        */
    bVar3 = Stream_WriteUInt16(*(void **)((int)this_00 + 8),1,*(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    bVar3 = FUN_004de060(*(int **)((int)this_00 + 8),*(uint *)((int)this + 0x60),
                         *(int *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    bVar3 = FUN_004de060(*(int **)((int)this_00 + 8),*(uint *)((int)this + 100),
                         *(int *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar3);
    ResourceStreamContext_Close(this_00);
  }
  return (bool)*(undefined1 *)((int)this_00 + 0x14);
}

