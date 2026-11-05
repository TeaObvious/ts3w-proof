/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011630b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
    puVar2 = AllocateWithAllocatorHeader(0x10,4,"Scripting/UIHost/CameraFlashWinProc",(int *)0x0);
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

