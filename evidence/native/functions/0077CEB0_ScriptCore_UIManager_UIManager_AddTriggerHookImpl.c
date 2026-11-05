/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162ff8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_AddTriggerHookImpl [assembly=ScriptCore token=0x06000E3A;
   winHandle: System.UInt32, map: System.String, mode: System.Int32, priority: System.Int32, modal:
   System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UIManager__UIManager_AddTriggerHookImpl
               (uint param_1,undefined4 param_2,char param_3)

{
  void *this;
  int *piVar1;
  int *piVar2;
  uint uVar3;
  
  this = (void *)FUN_007f0140();
  if ((this == (void *)0x0) || ((param_1 & 0xff000000) != 0x30000000)) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (piVar2 == (int *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
  }
  uVar3 = (**(code **)(*piVar1 + 0x58))(param_1);
  uVar3 = UiTriggerHooks_RegisterWindowHook
                    (this,uVar3,UiTriggerHooks_BuildAndDispatchWindowRecord,piVar2,param_1,param_2,
                     param_3 != '\0');
  return uVar3;
}

