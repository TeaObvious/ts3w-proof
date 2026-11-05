/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __thiscall FUN_005ed9e0(void *this,undefined4 *param_1,uint *param_2)

{
  uint uVar1;
  int iVar2;
  int *local_8;
  undefined4 *local_4;
  
  uVar1 = *(uint *)((int)this + 8);
  iVar2 = *(int *)((int)this + 4);
  local_4 = (undefined4 *)(iVar2 + ((param_2[3] ^ *param_2) % uVar1) * 4);
  local_8 = ResourceKeyMap_FindChain((int *)*local_4,(int *)param_2);
  if (local_8 == (int *)0x0) {
    local_8 = *(int **)(iVar2 + uVar1 * 4);
    local_4 = (undefined4 *)(iVar2 + uVar1 * 4);
  }
  *param_1 = local_8;
  param_1[1] = local_4;
  return;
}

