/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


uint __thiscall FUN_007260e0(void *this,uint param_1,undefined4 *param_2,undefined4 *param_3)

{
  if (*(uint *)((int)this + 0x10) <= param_1) {
    return param_1 & 0xffffff00;
  }
  *param_2 = *(undefined4 *)(*(int *)((int)this + 0x18) + param_1 * 8);
  *param_3 = *(undefined4 *)(*(int *)((int)this + 0x18) + 4 + param_1 * 8);
  return CONCAT31((int3)((uint)param_3 >> 8),1);
}

