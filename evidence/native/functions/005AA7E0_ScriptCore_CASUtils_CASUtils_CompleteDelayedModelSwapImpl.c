/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564d0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_CompleteDelayedModelSwapImpl [assembly=ScriptCore token=0x06000337;
   scriptHandle: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_CompleteDelayedModelSwapImpl(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  int *piVar4;
  int *piVar5;
  uint uVar6;
  undefined4 *puVar7;
  uint extraout_EDX;
  longlong lVar8;
  undefined4 *puStack_68;
  undefined4 *local_64;
  undefined4 local_60;
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50 [76];
  
  iVar1 = FUN_00937570();
  pvVar2 = (void *)FUN_00937f80(iVar1);
  if (pvVar2 != (void *)0x0) {
    iVar1 = FUN_00934260(pvVar2,DAT_011ea0fc);
    if (iVar1 != 0) {
      if ((*(uint *)(iVar1 + 0x34) & 3) == 0) {
        local_64 = *(undefined4 **)(iVar1 + 0x34);
      }
      else {
        local_64 = (undefined4 *)0x0;
      }
      puVar7 = local_64;
      FUN_00a9b9b0((void *)(iVar1 + 0x30),local_64);
      *(undefined4 *)(iVar1 + 0x10) = *(undefined4 *)(iVar1 + 0x20);
      *(undefined4 *)(iVar1 + 0x14) = *(undefined4 *)(iVar1 + 0x24);
      *(undefined4 *)(iVar1 + 0x18) = *(undefined4 *)(iVar1 + 0x28);
      *(undefined4 *)(iVar1 + 0x1c) = *(undefined4 *)(iVar1 + 0x2c);
      iVar3 = FUN_00934260(pvVar2,DAT_011dd484);
      if ((iVar3 != 0) && (puVar7 != (undefined4 *)0x0)) {
        piVar4 = (int *)(**(code **)(*(int *)(iVar3 + 8) + 0x20))();
        if (piVar4 != (int *)0x0) {
          (**(code **)*piVar4)();
        }
        FUN_009356c0(0x13,pvVar2,piVar4);
        puStack_68 = (undefined4 *)0x0;
        piVar5 = FUN_0068fef0((int *)&puStack_68);
        lVar8 = FUN_005e5e80((int)local_64,extraout_EDX,piVar5);
        if ((char)lVar8 == '\0') {
          pvVar2 = (void *)FUN_004e4500(0x14,"CAS/BoneDeltas",0);
          if (pvVar2 == (void *)0x0) {
            puVar7 = (undefined4 *)0x0;
          }
          else {
            uVar6 = FUN_00575750((int)(piVar4 + 10));
            puVar7 = FUN_00574850(pvVar2,uVar6);
          }
          FUN_00874fb0(&puStack_68,puVar7);
          FUN_005e5e20(local_64,puStack_68);
        }
        FUN_006934d0(param_1,param_2,piVar4 + 2,(int)puStack_68);
        FUN_007462e0((int *)&puStack_68);
        if (piVar4 != (int *)0x0) {
          (**(code **)(*piVar4 + 4))();
        }
      }
      if (DAT_011d4c84 != (int *)0x0) {
        (**(code **)(*DAT_011d4c84 + 0x3c))(iVar1 + 0x34,&LAB_00d4b3a0);
      }
      if ((*(int *)(iVar1 + 0x34) != 0) && ((*(uint *)(iVar1 + 0x34) & 3) == 0)) {
        (**(code **)(**(int **)(iVar1 + 0x34) + 4))();
        *(undefined4 *)(iVar1 + 0x34) = 0;
      }
      *(undefined4 *)(iVar1 + 0x34) = 0;
      *(undefined4 *)(iVar1 + 0x20) = 0;
      *(undefined4 *)(iVar1 + 0x24) = 0;
      *(undefined4 *)(iVar1 + 0x28) = 0;
      *(undefined4 *)(iVar1 + 0x2c) = 0;
    }
  }
  local_60 = 0x76211120;
  local_58 = param_1;
  local_54 = param_2;
  local_5c = &PTR_PTR_01156870;
  local_50[0] = 0;
  FUN_00693380(&local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

