/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163008 (original PC 1.67 TS3W.exe).
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
  if (pvVar1 != (void *)0x0) {
    uVar2 = FUN_007f0e50(pvVar1);
    return uVar2;
  }
  return 0;
}

