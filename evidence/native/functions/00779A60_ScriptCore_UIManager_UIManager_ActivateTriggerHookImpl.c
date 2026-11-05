/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163008 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_ActivateTriggerHookImpl [assembly=ScriptCore token=0x06000E3C;
   triggerHandle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UIManager__UIManager_ActivateTriggerHookImpl(void)

{
  void *pvVar1;
  undefined4 uVar2;
  
  pvVar1 = (void *)FUN_007f0140();
  if (pvVar1 == (void *)0x0) {
    return 0;
  }
  uVar2 = UiTriggerHooks_ActivateByHandle(pvVar1);
  return uVar2;
}

