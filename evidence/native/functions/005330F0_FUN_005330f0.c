/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __thiscall FUN_005330f0(void *this,int *param_1,float *param_2)

{
  float fVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  piVar2 = (int *)(**(code **)(*param_1 + 0x10))();
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x38))();
  uStack_10 = *puVar3;
  uStack_c = puVar3[1];
  uStack_8 = puVar3[2];
  uStack_4 = puVar3[3];
  (**(code **)(*(int *)((int)this + 0x10) + 0x14))(&uStack_10,param_2);
  fVar1 = *param_2;
  if (param_2[2] <= fVar1 && fVar1 != param_2[2]) {
    param_2[2] = fVar1;
  }
  fVar1 = param_2[1];
  if (param_2[3] <= fVar1 && fVar1 != param_2[3]) {
    param_2[3] = fVar1;
  }
  return;
}

