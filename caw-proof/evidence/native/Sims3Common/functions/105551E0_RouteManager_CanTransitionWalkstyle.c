/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_CanTransitionWalkstyle. Export
   ordinal(s): 561. Entry VA: 0x105551e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000E1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl RouteManager_CanTransitionWalkstyle(int param_1,int param_2,uint param_3)

{
  int iVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  undefined4 uVar4;
  uint uVar5;
  int *piVar6;
  int iVar7;
  int *piVar8;
  int *piVar9;
  int *piStack_bc;
  int *piStack_b8;
  int aiStack_a8 [42];
  
  this = DAT_10c7d9a0;
  piStack_bc = aiStack_a8;
  piStack_b8 = aiStack_a8;
  FUN_10635c70(DAT_10c7d9a0,param_1,param_3,(uint *)&piStack_bc);
  piVar2 = piStack_b8;
  iVar1 = (int)piStack_b8 - (int)piStack_bc >> 0x1f;
  iVar7 = ((int)piStack_b8 - (int)piStack_bc) / 0x1c + iVar1;
  if ((iVar7 != iVar1) && (uVar5 = 0, iVar7 != iVar1)) {
    piVar8 = piStack_bc + 6;
    do {
      piVar6 = piStack_bc;
      piVar3 = piStack_b8;
      if (*piVar8 == param_2) goto joined_r0x10554649;
      uVar5 = uVar5 + 1;
      piVar8 = piVar8 + 7;
    } while (uVar5 < (uint)(iVar7 - iVar1));
  }
  FUN_10635c70(this,param_2,param_3,(uint *)&piStack_bc);
  piVar8 = piStack_b8;
  piVar3 = (int *)(((int)piStack_b8 - (int)piStack_bc) / 0x1c);
  piVar2 = piStack_bc;
  if ((piVar3 != (int *)0x0) && (piVar6 = (int *)0x0, piVar3 != (int *)0x0)) {
    piVar9 = piStack_bc + 6;
    do {
      if (*piVar9 == param_1) goto joined_r0x10554691;
      piVar6 = (int *)((int)piVar6 + 1);
      piVar9 = piVar9 + 7;
    } while (piVar6 < piVar3);
  }
  for (; piVar2 < piVar8; piVar2 = piVar2 + 7) {
    piVar3 = (int *)*piVar2;
    if ((piVar3 != (int *)0x0) && (piVar3 != (int *)piVar2[4])) {
      piVar3 = (int *)FUN_10918e90((int)piVar3);
    }
  }
  if ((piStack_bc != (int *)0x0) && (piStack_bc != aiStack_a8)) {
    piVar3 = (int *)FUN_10918e90((int)piStack_bc);
  }
  return (uint)piVar3 & 0xffffff00;
joined_r0x10554649:
  for (; piVar6 < piVar2; piVar6 = piVar6 + 7) {
    piVar3 = (int *)*piVar6;
    if ((piVar3 != (int *)0x0) && (piVar3 != (int *)piVar6[4])) {
      piVar3 = (int *)FUN_10918e90((int)piVar3);
    }
  }
  if ((piStack_bc != (int *)0x0) && (piStack_bc != aiStack_a8)) {
    piVar3 = (int *)FUN_10918e90((int)piStack_bc);
  }
  goto LAB_10554682;
joined_r0x10554691:
  for (; piVar2 < piVar8; piVar2 = piVar2 + 7) {
    piVar3 = (int *)*piVar2;
    if ((piVar3 != (int *)0x0) && (piVar3 != (int *)piVar2[4])) {
      piVar3 = (int *)FUN_10918e90((int)piVar3);
    }
  }
  if ((piStack_bc != (int *)0x0) && (piStack_bc != aiStack_a8)) {
    uVar4 = FUN_10918e90((int)piStack_bc);
    return CONCAT31((int3)((uint)uVar4 >> 8),1);
  }
LAB_10554682:
  return CONCAT31((int3)((uint)piVar3 >> 8),1);
}

