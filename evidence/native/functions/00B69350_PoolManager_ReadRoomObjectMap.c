/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX receiver plus five stack words, RET0x14; meaningful AL status, upper
   return bits not certified. Open resource type065B8B38, read version/count, B54380 rows and insert
   only while sticky status succeeds; version6 reads one extra Boolean, then close context. The
   child analyst label OpenWrite is not semantic evidence: this selected path reads. Native unsigned
   count/status and current parser signed-count/trailing-byte handling differ. No resource context
   layout, virtual child lifetime or full manager ownership inferred. Descriptive role, not
   recovered symbol. */

undefined4 __thiscall
PoolManager_ReadRoomObjectMap
          (void *this,void *param_1,undefined4 param_2,uint param_3,undefined4 param_4,
          undefined4 param_5)

{
  void *this_00;
  bool bVar1;
  char cVar2;
  undefined3 extraout_var;
  short *psVar3;
  undefined3 extraout_var_00;
  undefined3 uVar4;
  void *pvVar5;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  this_00 = param_1;
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x65b8b38;
  local_4 = param_5;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,0);
  uVar4 = extraout_var;
  if (bVar1) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&param_3,*(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar1);
    if ((*(char *)((int)this_00 + 0x14) != '\0') && (param_1 != (void *)0x0)) {
      pvVar5 = (void *)0x0;
      do {
        local_18 = 0xff00ffff;
        cVar2 = PoolManager_ReadRoomObjectRow(&local_20,this_00);
        if (cVar2 == '\0') break;
        psVar3 = FUN_00b69280((void *)((int)this + 8),(short *)&local_14);
        *(undefined4 *)psVar3 = local_20;
        *(undefined4 *)(psVar3 + 2) = local_1c;
        *(undefined4 *)(psVar3 + 4) = local_18;
        pvVar5 = (void *)((int)pvVar5 + 1);
        *(undefined4 *)(psVar3 + 6) = local_14;
      } while (pvVar5 < param_1);
    }
    if (param_3 == 6) {
      param_5 = CONCAT31(param_5._1_3_,1);
      bVar1 = Stream_ReadBoolean(*(void **)((int)this_00 + 8),&param_5);
      StreamReader_AccumulateStatus(this_00,bVar1);
    }
    ResourceStreamContext_Close(this_00);
    uVar4 = extraout_var_00;
  }
  return CONCAT31(uVar4,*(undefined1 *)((int)this_00 + 0x14));
}

