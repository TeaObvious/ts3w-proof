/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX manager, five stackwords RET14.
   Open04A09283, writeversion6,count; walk +20bucket table/+24bucketcount and node+80next,
   invokingB1AB50 perflight. Then write flag map count+ C8 and hash-traversedUInt32key/Boolean rows
   from+C0. Close and return onlyALstatus; upperEAX concat is a decompiler artifact. */

undefined4 __thiscall
ModularStairs_WriteManager
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int iVar1;
  uint *puVar2;
  bool bVar3;
  byte bVar4;
  undefined3 extraout_var;
  int *piVar5;
  undefined3 extraout_var_00;
  undefined3 uVar6;
  uint *puVar7;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x4a09283;
  local_4 = param_5;
  bVar3 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  uVar6 = extraout_var;
  if (bVar3) {
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),6,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x28),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    piVar5 = *(int **)((int)this + 0x20);
    puVar7 = (uint *)*piVar5;
    if (puVar7 == (uint *)0x0) {
      piVar5 = piVar5 + 1;
      iVar1 = *piVar5;
      while (iVar1 == 0) {
        piVar5 = piVar5 + 1;
        iVar1 = *piVar5;
      }
      puVar7 = (uint *)*piVar5;
    }
    puVar2 = *(uint **)(*(int *)((int)this + 0x20) + *(int *)((int)this + 0x24) * 4);
    while (puVar7 != puVar2) {
      ModularStairs_WriteFlight(this,param_1,param_2,puVar7);
      for (puVar7 = (uint *)puVar7[0x20]; puVar7 == (uint *)0x0; puVar7 = (uint *)*puVar7) {
        puVar7 = (uint *)(piVar5 + 1);
        piVar5 = piVar5 + 1;
      }
    }
    bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 200),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar4);
    piVar5 = *(int **)((int)this + 0xc0);
    puVar7 = (uint *)*piVar5;
    if (puVar7 == (uint *)0x0) {
      piVar5 = piVar5 + 1;
      iVar1 = *piVar5;
      while (iVar1 == 0) {
        piVar5 = piVar5 + 1;
        iVar1 = *piVar5;
      }
      puVar7 = (uint *)*piVar5;
    }
    puVar2 = *(uint **)(*(int *)((int)this + 0xc0) + *(int *)((int)this + 0xc4) * 4);
    while (puVar7 != puVar2) {
      bVar4 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*puVar7,*(uint *)((int)param_1 + 0x10)
                                );
      StreamReader_AccumulateStatus(param_1,bVar4);
      bVar3 = Stream_WriteBoolean(*(void **)((int)param_1 + 8),(byte)puVar7[1]);
      StreamReader_AccumulateStatus(param_1,bVar3);
      for (puVar7 = (uint *)puVar7[2]; puVar7 == (uint *)0x0; puVar7 = (uint *)*puVar7) {
        puVar7 = (uint *)(piVar5 + 1);
        piVar5 = piVar5 + 1;
      }
    }
    ResourceStreamContext_Close(param_1);
    uVar6 = extraout_var_00;
  }
  return CONCAT31(uVar6,*(undefined1 *)((int)param_1 + 0x14));
}

