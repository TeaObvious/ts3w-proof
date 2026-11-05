/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161d40 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_CanTransitionWalkstyle [assembly=ScriptCore
   token=0x06001079; oldWalkstyleHash: System.UInt32, newWalkstyleHash: System.UInt32, ageSpecies:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_RouteManager__RouteManager_CanTransitionWalkstyle
               (int param_1,int param_2,uint param_3)

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
  
  this = DAT_011da140;
  piStack_bc = aiStack_a8;
  piStack_b8 = aiStack_a8;
  FUN_00844140(DAT_011da140,param_1,param_3,(uint *)&piStack_bc);
  piVar2 = piStack_b8;
  iVar1 = (int)piStack_b8 - (int)piStack_bc >> 0x1f;
  iVar7 = ((int)piStack_b8 - (int)piStack_bc) / 0x1c + iVar1;
  if ((iVar7 != iVar1) && (uVar5 = 0, iVar7 != iVar1)) {
    piVar8 = piStack_bc + 6;
    do {
      piVar6 = piStack_bc;
      piVar3 = piStack_b8;
      if (*piVar8 == param_2) goto joined_r0x00762d89;
      uVar5 = uVar5 + 1;
      piVar8 = piVar8 + 7;
    } while (uVar5 < (uint)(iVar7 - iVar1));
  }
  FUN_00844140(this,param_2,param_3,(uint *)&piStack_bc);
  piVar8 = piStack_b8;
  piVar3 = (int *)(((int)piStack_b8 - (int)piStack_bc) / 0x1c);
  piVar2 = piStack_bc;
  if ((piVar3 != (int *)0x0) && (piVar6 = (int *)0x0, piVar3 != (int *)0x0)) {
    piVar9 = piStack_bc + 6;
    do {
      if (*piVar9 == param_1) goto joined_r0x00762dd1;
      piVar6 = (int *)((int)piVar6 + 1);
      piVar9 = piVar9 + 7;
    } while (piVar6 < piVar3);
  }
  for (; piVar2 < piVar8; piVar2 = piVar2 + 7) {
    piVar3 = (int *)*piVar2;
    if ((piVar3 != (int *)0x0) && (piVar3 != (int *)piVar2[4])) {
      piVar3 = (int *)FUN_004e44e0((int)piVar3);
    }
  }
  if ((piStack_bc != (int *)0x0) && (piStack_bc != aiStack_a8)) {
    piVar3 = (int *)FUN_004e44e0((int)piStack_bc);
  }
  return (uint)piVar3 & 0xffffff00;
joined_r0x00762d89:
  for (; piVar6 < piVar2; piVar6 = piVar6 + 7) {
    piVar3 = (int *)*piVar6;
    if ((piVar3 != (int *)0x0) && (piVar3 != (int *)piVar6[4])) {
      piVar3 = (int *)FUN_004e44e0((int)piVar3);
    }
  }
  if ((piStack_bc != (int *)0x0) && (piStack_bc != aiStack_a8)) {
    piVar3 = (int *)FUN_004e44e0((int)piStack_bc);
  }
  goto LAB_00762dc2;
joined_r0x00762dd1:
  for (; piVar2 < piVar8; piVar2 = piVar2 + 7) {
    piVar3 = (int *)*piVar2;
    if ((piVar3 != (int *)0x0) && (piVar3 != (int *)piVar2[4])) {
      piVar3 = (int *)FUN_004e44e0((int)piVar3);
    }
  }
  if ((piStack_bc != (int *)0x0) && (piStack_bc != aiStack_a8)) {
    uVar4 = FUN_004e44e0((int)piStack_bc);
    return CONCAT31((int3)((uint)uVar4 >> 8),1);
  }
LAB_00762dc2:
  return CONCAT31((int3)((uint)piVar3 >> 8),1);
}

