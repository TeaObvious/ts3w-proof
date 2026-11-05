/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX grid. Open05FF6BA4
   suppliedgroup/instance; version1,width32,depth32. Success leaves stream open for caller raw
   array, failure closes. AF0F20 selects FF2067 for water and958344 for face flags. Header is
   common; payload element interpretation is caller-specific. */

undefined4 __thiscall
LotFloatGrid_WriteResourceHeader
          (void *this,void *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  bool bVar1;
  byte bVar2;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 uVar3;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x5ff6ba4;
  local_4 = param_2;
  bVar1 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  uVar3 = extraout_var;
  if (bVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),1,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 4),
                         *(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    bVar2 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 8),
                         *(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
    uVar3 = extraout_var_00;
    if (*(char *)((int)param_1 + 0x14) == '\0') {
      ResourceStreamContext_Close(param_1);
      uVar3 = extraout_var_01;
    }
  }
  return CONCAT31(uVar3,*(undefined1 *)((int)param_1 + 0x14));
}

