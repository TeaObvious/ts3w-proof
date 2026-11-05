/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


undefined4 __thiscall FUN_004b0210(void *this,int param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 *puVar5;
  
  piVar2 = FUN_004b01c0(this,param_1 + 8);
  if (piVar2 != (int *)0x0) {
    uVar3 = (**(code **)(*piVar2 + 0x1c))(param_1,param_2);
    return uVar3;
  }
  uVar4 = 0;
  if ((char)param_2 != '\0') {
    puVar1 = *(undefined4 **)((int)this + 0xa4);
    for (puVar5 = *(undefined4 **)((int)this + 0xa0); puVar5 != puVar1; puVar5 = puVar5 + 2) {
      uVar4 = (**(code **)(*(int *)*puVar5 + 0x1c))(param_1,param_2);
      if ((char)uVar4 != '\0') {
        return CONCAT31((int3)(uVar4 >> 8),1);
      }
    }
  }
  return uVar4 & 0xffffff00;
}

