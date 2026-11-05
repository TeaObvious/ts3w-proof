/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Resizes8-byte slot records{uint hash;float weight}. New records
   default hash0 and weight1.0f; shrink removes trailing records. Array bridge overrides each hash
   and optional weight afterward. */

void __thiscall SlotGoals_ResizeWithUnitWeight(void *this,uint param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 local_8;
  undefined4 local_4;
  
  iVar1 = *(int *)this;
  puVar2 = *(undefined4 **)((int)this + 4);
  if ((uint)((int)puVar2 - iVar1 >> 3) < param_1) {
    local_8 = 0;
    local_4 = DAT_00f998f8;
    FUN_00622200(this,puVar2,param_1 - ((int)puVar2 - iVar1 >> 3),&local_8);
    return;
  }
  FUN_00c98550(this,(undefined4 *)(iVar1 + param_1 * 8),puVar2);
  return;
}

