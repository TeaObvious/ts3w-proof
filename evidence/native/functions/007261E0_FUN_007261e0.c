/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


undefined4 __thiscall FUN_007261e0(void *this,undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
  if (param_1 != (undefined4 *)0x0) {
    if (param_2 == 0) {
      return 0;
    }
    uVar1 = (**(code **)(*(int *)this + 0x40))();
    *param_1 = uVar1;
  }
  return 1;
}

