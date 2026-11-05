/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __thiscall FUN_00726090(void *this,uint param_1,undefined4 *param_2,char param_3)

{
  int *piVar1;
  
  if (param_1 < *(uint *)((int)this + 0x10)) {
    piVar1 = (int *)(*(uint *)(*(int *)((int)this + 0x28) + param_1 * 4) & 0xfffffffe);
    if (param_2 != (undefined4 *)0x0) {
      (**(code **)*param_2)();
    }
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
    *(uint *)(*(int *)((int)this + 0x28) + param_1 * 4) = (uint)(param_3 == '\0') + (int)param_2;
  }
  return;
}

