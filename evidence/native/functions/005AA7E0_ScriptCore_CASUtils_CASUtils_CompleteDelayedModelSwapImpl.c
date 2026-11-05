/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_CompleteDelayedModelSwapImpl [assembly=ScriptCore token=0x06000337;
   scriptHandle: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_CompleteDelayedModelSwapImpl(undefined4 param_1,undefined4 param_2)

{
  void *pvVar1;
  void *pvVar2;
  void *pvVar3;
  int *payload;
  int *piVar4;
  uint uVar5;
  undefined4 *puVar6;
  uint extraout_EDX;
  longlong lVar7;
  undefined4 *puStack_68;
  undefined4 *local_64;
  byte local_60 [4];
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50 [76];
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
  if (pvVar1 != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011ea0fc);
    if (pvVar2 != (void *)0x0) {
      if ((*(uint *)((int)pvVar2 + 0x34) & 3) == 0) {
        local_64 = *(undefined4 **)((int)pvVar2 + 0x34);
      }
      else {
        local_64 = (undefined4 *)0x0;
      }
      puVar6 = local_64;
      FUN_00a9b9b0((void *)((int)pvVar2 + 0x30),local_64);
      *(undefined4 *)((int)pvVar2 + 0x10) = *(undefined4 *)((int)pvVar2 + 0x20);
      *(undefined4 *)((int)pvVar2 + 0x14) = *(undefined4 *)((int)pvVar2 + 0x24);
      *(undefined4 *)((int)pvVar2 + 0x18) = *(undefined4 *)((int)pvVar2 + 0x28);
      *(undefined4 *)((int)pvVar2 + 0x1c) = *(undefined4 *)((int)pvVar2 + 0x2c);
      pvVar3 = Object_GetComponentByMask(pvVar1,DAT_011dd484);
      if ((pvVar3 != (void *)0x0) && (puVar6 != (undefined4 *)0x0)) {
        payload = (int *)(**(code **)(*(int *)((int)pvVar3 + 8) + 0x20))();
        if (payload != (int *)0x0) {
          (**(code **)*payload)();
        }
        ObjectEvents_Dispatch(0x13,pvVar1,payload);
        puStack_68 = (undefined4 *)0x0;
        piVar4 = FUN_0068fef0((int *)&puStack_68);
        lVar7 = FUN_005e5e80((int)local_64,extraout_EDX,piVar4);
        if ((char)lVar7 == '\0') {
          pvVar1 = (void *)FUN_004e4500(0x14,"CAS/BoneDeltas",0);
          if (pvVar1 == (void *)0x0) {
            puVar6 = (undefined4 *)0x0;
          }
          else {
            uVar5 = FUN_00575750((int)(payload + 10));
            puVar6 = FUN_00574850(pvVar1,uVar5);
          }
          FUN_00874fb0(&puStack_68,puVar6);
          FUN_005e5e20(local_64,puStack_68);
        }
        FUN_006934d0(param_1,param_2,payload + 2,(int)puStack_68);
        FUN_007462e0((int *)&puStack_68);
        if (payload != (int *)0x0) {
          (**(code **)(*payload + 4))();
        }
      }
      if (DAT_011d4c84 != (int *)0x0) {
        (**(code **)(*DAT_011d4c84 + 0x3c))((int)pvVar2 + 0x34,ResourceCallback_InvokeVirtual04);
      }
      if ((*(int *)((int)pvVar2 + 0x34) != 0) && ((*(uint *)((int)pvVar2 + 0x34) & 3) == 0)) {
        (**(code **)(**(int **)((int)pvVar2 + 0x34) + 4))();
        *(undefined4 *)((int)pvVar2 + 0x34) = 0;
      }
      *(undefined4 *)((int)pvVar2 + 0x34) = 0;
      *(undefined4 *)((int)pvVar2 + 0x20) = 0;
      *(undefined4 *)((int)pvVar2 + 0x24) = 0;
      *(undefined4 *)((int)pvVar2 + 0x28) = 0;
      *(undefined4 *)((int)pvVar2 + 0x2c) = 0;
    }
  }
  local_60[0] = 0x20;
  local_60[1] = 0x11;
  local_60[2] = 0x21;
  local_60[3] = 0x76;
  local_58 = param_1;
  local_54 = param_2;
  local_5c = &PTR_PTR_01156870;
  local_50[0] = 0;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

