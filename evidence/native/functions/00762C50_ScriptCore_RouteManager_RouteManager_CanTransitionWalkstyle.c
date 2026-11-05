/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161d40 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  undefined4 *puVar2;
  void *this;
  undefined4 *extraout_EAX;
  undefined4 *extraout_EAX_00;
  undefined4 *extraout_EAX_01;
  undefined4 *extraout_EAX_02;
  undefined4 *extraout_EAX_03;
  undefined4 *allocation;
  undefined4 extraout_EAX_04;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  int *piVar6;
  undefined4 *puVar7;
  undefined4 *puStack_bc;
  undefined4 *puStack_b8;
  undefined4 auStack_a8 [42];
  
  this = DAT_011da140;
  puStack_bc = auStack_a8;
  puStack_b8 = auStack_a8;
  FindOrBuildLocomotionVariantSequence(DAT_011da140,param_1,param_3,(uint *)&puStack_bc);
  puVar2 = puStack_b8;
  iVar1 = (int)puStack_b8 - (int)puStack_bc >> 0x1f;
  iVar5 = ((int)puStack_b8 - (int)puStack_bc) / 0x1c + iVar1;
  if ((iVar5 != iVar1) && (uVar3 = 0, iVar5 != iVar1)) {
    piVar6 = puStack_bc + 6;
    do {
      if (*piVar6 == param_2) {
        allocation = puStack_b8;
        puVar7 = puStack_bc;
        if (puStack_bc < puStack_b8) {
          do {
            allocation = (undefined4 *)*puVar7;
            if ((allocation != (undefined4 *)0x0) && (allocation != (undefined4 *)puVar7[4])) {
              Memory_FreeIfNonNull(allocation);
              allocation = extraout_EAX_01;
            }
            puVar7 = puVar7 + 7;
          } while (puVar7 < puVar2);
        }
        if ((puStack_bc != (undefined4 *)0x0) && (puStack_bc != auStack_a8)) {
          Memory_FreeIfNonNull(puStack_bc);
          allocation = extraout_EAX_02;
        }
        goto LAB_00762dc2;
      }
      uVar3 = uVar3 + 1;
      piVar6 = piVar6 + 7;
    } while (uVar3 < (uint)(iVar5 - iVar1));
  }
  FindOrBuildLocomotionVariantSequence(this,param_2,param_3,(uint *)&puStack_bc);
  puVar7 = puStack_b8;
  allocation = (undefined4 *)(((int)puStack_b8 - (int)puStack_bc) / 0x1c);
  puVar2 = puStack_bc;
  if ((allocation != (undefined4 *)0x0) &&
     (puVar4 = (undefined4 *)0x0, allocation != (undefined4 *)0x0)) {
    piVar6 = puStack_bc + 6;
    do {
      if (*piVar6 == param_1) {
        for (; puVar2 < puVar7; puVar2 = puVar2 + 7) {
          allocation = (undefined4 *)*puVar2;
          if ((allocation != (undefined4 *)0x0) && (allocation != (undefined4 *)puVar2[4])) {
            Memory_FreeIfNonNull(allocation);
            allocation = extraout_EAX_03;
          }
        }
        if ((puStack_bc != (undefined4 *)0x0) && (puStack_bc != auStack_a8)) {
          Memory_FreeIfNonNull(puStack_bc);
          return CONCAT31((int3)((uint)extraout_EAX_04 >> 8),1);
        }
LAB_00762dc2:
        return CONCAT31((int3)((uint)allocation >> 8),1);
      }
      puVar4 = (undefined4 *)((int)puVar4 + 1);
      piVar6 = piVar6 + 7;
    } while (puVar4 < allocation);
  }
  for (; puVar2 < puVar7; puVar2 = puVar2 + 7) {
    allocation = (undefined4 *)*puVar2;
    if ((allocation != (void *)0x0) && (allocation != (void *)puVar2[4])) {
      Memory_FreeIfNonNull(allocation);
      allocation = extraout_EAX;
    }
  }
  if ((puStack_bc != (undefined4 *)0x0) && (puStack_bc != auStack_a8)) {
    Memory_FreeIfNonNull(puStack_bc);
    allocation = extraout_EAX_00;
  }
  return (uint)allocation & 0xffffff00;
}

