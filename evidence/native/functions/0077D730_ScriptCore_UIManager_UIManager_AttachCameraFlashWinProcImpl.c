/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011630b0 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_AttachCameraFlashWinProcImpl [assembly=ScriptCore
   token=0x06000E51; winHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_AttachCameraFlashWinProcImpl(undefined4 param_1)

{
  int *piVar1;
  uint *puVar2;
  int *piVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) {
    puVar2 = FUN_005050b0(0x10,4,"Scripting/UIHost/CameraFlashWinProc",(int *)0x0);
    if (puVar2 == (uint *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)FUN_007dd520(puVar2);
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
      }
    }
    (**(code **)(*piVar1 + 0x108))(piVar3);
    if (piVar3 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0077d7a6. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar3 + 4))();
      return;
    }
  }
  return;
}

