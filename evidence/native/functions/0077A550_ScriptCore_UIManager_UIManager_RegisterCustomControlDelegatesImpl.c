/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162da8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_RegisterCustomControlDelegatesImpl [assembly=ScriptCore
   token=0x06000DF0; winHandle: System.UInt32, propID: System.UInt32, typeID: System.UInt16,
   getDelegate: System.Delegate, setDelegate: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_RegisterCustomControlDelegatesImpl
               (uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  void *this;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      this = (void *)(**(code **)(*piVar1 + 0xc))(0x56bb768);
      if (this != (void *)0x0) {
        FUN_007e33d0(this,unaff_retaddr,(short)param_1,param_2,param_3);
      }
    }
  }
  return;
}

