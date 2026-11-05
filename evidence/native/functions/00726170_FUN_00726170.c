/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


uint __thiscall
FUN_00726170(void *this,int *param_1,undefined4 *param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  undefined4 uVar2;
  uint uVar3;
  
  piVar1 = (int *)(**(code **)(*(int *)this + 0x34))();
  if (piVar1 == (int *)0x0) {
LAB_007261b4:
    uVar3 = (**(code **)(*param_1 + 0x20))();
    return uVar3 & 0xffffff00;
  }
  uVar2 = (**(code **)*piVar1)();
  if (param_1 != (int *)0x0) {
    uVar2 = (**(code **)(*(int *)this + 0x24))(param_1,piVar1,param_3,param_4);
    if ((char)uVar2 == '\0') {
      (**(code **)(*piVar1 + 4))();
      goto LAB_007261b4;
    }
  }
  *param_2 = piVar1;
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

