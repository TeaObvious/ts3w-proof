/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011630e0 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_WinAttachToCycleImpl [assembly=ScriptCore token=0x06000E57;
   winHandle: System.UInt32, secondsPerFrame: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_WinAttachToCycleImpl(undefined4 param_1)

{
  int *piVar1;
  uint *puVar2;
  int *this;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) {
    puVar2 = FUN_005050b0(0x30,8,"Scripting/UIHost/CyclingRenderer",(int *)0x0);
    if (puVar2 == (uint *)0x0) {
      this = (int *)0x0;
    }
    else {
      this = FUN_007e41a0(puVar2);
      if (this != (int *)0x0) {
        (**(code **)*this)();
      }
    }
    FUN_00532db0(this,unaff_retaddr);
    (**(code **)(*piVar1 + 0x88))(this);
    if (this != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0077d6a5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*this + 4))();
      return;
    }
  }
  return;
}

