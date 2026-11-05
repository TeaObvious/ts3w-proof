/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX manager;
   writes065B8B38,version7,count from24-byte manager entries, each through B68430. Closes and
   returns AL sticky status. Original manager does not preserve an arbitrary installed version or
   skip serialization based on a project row-equality optimization. */

undefined4 __thiscall
PoolManager_WriteResource
          (void *this,void *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  int iVar1;
  bool bVar2;
  byte bVar3;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 uVar4;
  int iVar5;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x65b8b38;
  local_4 = param_5;
  bVar2 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  uVar4 = extraout_var;
  if (bVar2) {
    bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),7,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    bVar3 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                               (*(int *)((int)this + 0xc) - *(int *)((int)this + 8)) / 0x18,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar3);
    iVar1 = *(int *)((int)this + 0xc);
    for (iVar5 = *(int *)((int)this + 8); iVar5 != iVar1; iVar5 = iVar5 + 0x18) {
      PoolManager_WriteRoomObjectRow((void *)(iVar5 + 8),param_1);
    }
    ResourceStreamContext_Close(param_1);
    uVar4 = extraout_var_00;
  }
  return CONCAT31(uVar4,*(undefined1 *)((int)param_1 + 0x14));
}

