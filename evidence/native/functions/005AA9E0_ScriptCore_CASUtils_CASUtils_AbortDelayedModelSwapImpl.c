/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_AbortDelayedModelSwapImpl [assembly=ScriptCore token=0x06000338;
   scriptHandle: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_AbortDelayedModelSwapImpl(undefined4 param_1,undefined4 param_2)

{
  uint *puVar1;
  void *pvVar2;
  byte local_60 [4];
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50 [76];
  
  pvVar2 = ObjectRegistry_GetGlobal();
  pvVar2 = ObjectRegistry_FindBorrowed(pvVar2,CONCAT44(param_2,param_1));
  if (pvVar2 != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(pvVar2,DAT_011ea0fc);
    if (pvVar2 != (void *)0x0) {
      puVar1 = (uint *)((int)pvVar2 + 0x34);
      if (DAT_011d4c84 != (int *)0x0) {
        (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
      }
      if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
        (**(code **)(*(int *)*puVar1 + 4))();
        *puVar1 = 0;
      }
      *puVar1 = 0;
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
  local_50[0] = 1;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

