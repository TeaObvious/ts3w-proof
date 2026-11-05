/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564d8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_AbortDelayedModelSwapImpl [assembly=ScriptCore token=0x06000338;
   scriptHandle: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_AbortDelayedModelSwapImpl(undefined4 param_1,undefined4 param_2)

{
  uint *puVar1;
  int iVar2;
  void *this;
  undefined4 local_60;
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined1 local_50 [76];
  
  iVar2 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar2);
  if (this != (void *)0x0) {
    iVar2 = FUN_00934260(this,DAT_011ea0fc);
    if (iVar2 != 0) {
      puVar1 = (uint *)(iVar2 + 0x34);
      if (DAT_011d4c84 != (int *)0x0) {
        (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,&LAB_00d4b3a0);
      }
      if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
        (**(code **)(*(int *)*puVar1 + 4))();
        *puVar1 = 0;
      }
      *puVar1 = 0;
      *(undefined4 *)(iVar2 + 0x20) = 0;
      *(undefined4 *)(iVar2 + 0x24) = 0;
      *(undefined4 *)(iVar2 + 0x28) = 0;
      *(undefined4 *)(iVar2 + 0x2c) = 0;
    }
  }
  local_60 = 0x76211120;
  local_58 = param_1;
  local_54 = param_2;
  local_5c = &PTR_PTR_01156870;
  local_50[0] = 1;
  FUN_00693380(&local_60);
  if (local_5c != (undefined **)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}

