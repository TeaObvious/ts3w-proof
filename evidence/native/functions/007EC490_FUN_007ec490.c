/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Physical ECX is the ScrollAreaWinProc receiver, preserved at entry and recovered in EBX for settings+10/+14. One parent IWindow stackword, void RET4. Current decompiler stdcall signature and apparent address10/address14 globals are artifacts; do not treat them as memory globals. Direct reserved-ID scrollbar-interface lookup, factory orientation1/2, retain/release, viewport/child union, signed CVTTSS2SI range/page/minimum conversions and 18.0 tracks are distinct ordered virtual operations. No generalized class-name exclusion or partial-allocation rollback is inferred. */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

void FUN_007ec490(int *param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  float *pfVar5;
  int *piVar6;
  float *pfVar7;
  uint uVar8;
  float unaff_EDI;
  float fVar9;
  undefined4 uVar10;
  float in_stack_ffffffa0;
  float fStack_5c;
  float fStack_58;
  int **ppiVar11;
  float fStack_30;
  int *local_1c;
  int *apiStack_14 [5];
  
  if (param_1 == (int *)0x0) {
    return;
  }
  fStack_30 = 0.0;
  piVar1 = (int *)(**(code **)(*param_1 + 0xf8))();
  if (piVar1 == (int *)0x0) {
    piVar2 = FUN_00539080(1);
    piVar1 = (int *)0x0;
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      piVar1 = piVar2;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0x10))();
    (**(code **)(*piVar2 + 0x54))();
    iVar3 = *param_1;
    (**(code **)(*piVar1 + 0x10))();
    (**(code **)(iVar3 + 0xdc))();
  }
  else {
    (**(code **)*piVar1)();
  }
  piVar2 = (int *)(**(code **)(*param_1 + 0xf8))();
  if (piVar2 == (int *)0x0) {
    fStack_58 = 1.1642069e-38;
    piVar6 = FUN_00539080(2);
    piVar2 = (int *)0x0;
    if (piVar6 != (int *)0x0) {
      (**(code **)*piVar6)();
      piVar2 = piVar6;
    }
    piVar6 = (int *)(**(code **)(*piVar2 + 0x10))();
    (**(code **)(*piVar6 + 0x54))();
    iVar3 = *param_1;
    (**(code **)(*piVar2 + 0x10))();
    (**(code **)(iVar3 + 0xdc))();
  }
  else {
    (**(code **)*piVar2)();
  }
  iVar3 = (**(code **)(*param_1 + 0x34))();
  apiStack_14[0] = (int *)(*(float *)(iVar3 + 0xc) - *(float *)(iVar3 + 4));
  (**(code **)(*param_1 + 0x34))();
  piVar6 = apiStack_14[0];
  ppiVar11 = apiStack_14;
  local_1c = apiStack_14[0];
  (**(code **)(*param_1 + 0xd0))();
  piVar4 = (int *)(**(code **)(*param_1 + 0xd4))();
  if (piVar6 != (int *)*piVar4) {
    do {
      iVar3 = (**(code **)(local_1c[-1] + 0x1c))();
      if ((iVar3 != -0x710dbd7c) &&
         (iVar3 = (**(code **)(local_1c[-1] + 0x1c))(), iVar3 != -0x710dbd7d)) {
        pfVar7 = &fStack_30;
        pfVar5 = (float *)(**(code **)(local_1c[-1] + 0x34))();
        fStack_58 = 1.164242e-38;
        FUN_0051fe90(&fStack_30,pfVar5,pfVar7);
      }
      local_1c = (int *)*local_1c;
      piVar6 = (int *)(**(code **)(*param_1 + 0xd4))();
    } while (local_1c != (int *)*piVar6);
  }
  if (piVar1 != (int *)0x0) {
    if ((_DAT_00000010 == 1) ||
       ((pfVar7 = (float *)(**(code **)(*param_1 + 0x34))(), 0.0 - fStack_30 <= pfVar7[2] - *pfVar7
        && (_DAT_00000010 != 3)))) {
      piVar6 = (int *)(**(code **)(*piVar1 + 0x10))();
      uVar10 = 0;
    }
    else {
      fStack_58 = 1.1642585e-38;
      (**(code **)(*piVar1 + 0x30))();
      fStack_5c = 0.0;
      fStack_58 = 0.0;
      (**(code **)(*piVar1 + 0x38))();
      pfVar7 = (float *)(**(code **)(*param_1 + 0x34))();
      in_stack_ffffffa0 = 1.4013e-45;
      (**(code **)(*piVar1 + 0x40))((int)(pfVar7[2] - *pfVar7),1);
      uVar8 = (int)(float)ppiVar11 >> 0x1f;
      (**(code **)(*piVar1 + 0x28))(((int)(float)ppiVar11 ^ uVar8) - uVar8,0);
      piVar6 = (int *)(**(code **)(*piVar1 + 0x10))();
      uVar10 = 1;
    }
    (**(code **)(*piVar6 + 0x74))(1,uVar10);
  }
  fVar9 = in_stack_ffffffa0;
  if (piVar2 == (int *)0x0) {
LAB_007ec9c5:
    if (piVar1 == (int *)0x0) goto LAB_007eca7d;
    piVar6 = (int *)(**(code **)(*piVar1 + 0x10))();
    uVar8 = (**(code **)(*piVar6 + 0x28))();
    if ((uVar8 & 1) == 0) goto LAB_007eca7d;
    (**(code **)(*param_1 + 0x34))();
    (**(code **)(*param_1 + 0x34))();
    (**(code **)(*param_1 + 0x34))();
    piVar6 = (int *)(**(code **)(*piVar1 + 0x10))();
LAB_007eca42:
    fStack_5c = 0.0;
  }
  else {
    if ((iRam00000014 == 1) ||
       ((iVar3 = (**(code **)(*param_1 + 0x34))(),
        0.0 - unaff_EDI <= *(float *)(iVar3 + 0xc) - *(float *)(iVar3 + 4) && (iRam00000014 != 3))))
    {
      piVar6 = (int *)(**(code **)(*piVar2 + 0x10))();
      uVar10 = 0;
    }
    else {
      fStack_58 = 1.1642851e-38;
      (**(code **)(*piVar2 + 0x30))();
      fStack_5c = 0.0;
      fStack_58 = 0.0;
      (**(code **)(*piVar2 + 0x38))();
      iVar3 = (**(code **)(*param_1 + 0x34))();
      in_stack_ffffffa0 = 1.4013e-45;
      (**(code **)(*piVar2 + 0x40))((int)(*(float *)(iVar3 + 0xc) - *(float *)(iVar3 + 4)),1);
      (**(code **)(*piVar2 + 0x28))(0,0);
      piVar6 = (int *)(**(code **)(*piVar2 + 0x10))();
      uVar10 = 1;
    }
    (**(code **)(*piVar6 + 0x74))(1,uVar10);
    if (piVar1 != (int *)0x0) {
      piVar6 = (int *)(**(code **)(*piVar2 + 0x10))();
      uVar8 = (**(code **)(*piVar6 + 0x28))();
      if ((uVar8 & 1) == 0) goto LAB_007ec93f;
      piVar6 = (int *)(**(code **)(*piVar1 + 0x10))();
      uVar8 = (**(code **)(*piVar6 + 0x28))();
      if ((uVar8 & 1) == 0) goto LAB_007ec93f;
      iVar3 = (**(code **)(*param_1 + 0x34))();
      fStack_5c = (*(float *)(iVar3 + 0xc) - *(float *)(iVar3 + 4)) - 18.0;
      (**(code **)(*param_1 + 0x34))();
      pfVar7 = (float *)(**(code **)(*param_1 + 0x34))();
      fVar9 = (pfVar7[2] - *pfVar7) - 18.0;
      piVar6 = (int *)(**(code **)(*piVar2 + 0x10))();
      fStack_58 = fVar9;
      (**(code **)(*piVar6 + 100))(&fStack_58);
      (**(code **)(*param_1 + 0x34))();
      (**(code **)(*param_1 + 0x34))();
      iVar3 = (**(code **)(*param_1 + 0x34))();
      fVar9 = (*(float *)(iVar3 + 0xc) - *(float *)(iVar3 + 4)) - 18.0;
      piVar6 = (int *)(**(code **)(*piVar1 + 0x10))();
      goto LAB_007eca42;
    }
LAB_007ec93f:
    piVar6 = (int *)(**(code **)(*piVar2 + 0x10))();
    uVar8 = (**(code **)(*piVar6 + 0x28))();
    fVar9 = in_stack_ffffffa0;
    if ((uVar8 & 1) == 0) goto LAB_007ec9c5;
    (**(code **)(*param_1 + 0x34))();
    (**(code **)(*param_1 + 0x34))();
    (**(code **)(*param_1 + 0x34))();
    piVar6 = (int *)(**(code **)(*piVar2 + 0x10))();
    fVar9 = 0.0;
    fStack_5c = in_stack_ffffffa0;
  }
  fStack_58 = fVar9;
  (**(code **)(*piVar6 + 100))(&fStack_5c);
LAB_007eca7d:
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 4))();
  }
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))();
  }
  return;
}
