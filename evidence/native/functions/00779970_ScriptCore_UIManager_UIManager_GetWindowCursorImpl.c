/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f18 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetWindowCursorImpl [assembly=ScriptCore token=0x06000E1E;
   cursorID: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UIManager__UIManager_GetWindowCursorImpl(undefined4 param_1)

{
  int *piVar1;
  void *this;
  undefined4 *puVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  this = (void *)FUN_007f2710();
  if (this != (void *)0x0) {
    puVar2 = (undefined4 *)FUN_007f2cf0(this,param_1);
    if (puVar2 != (undefined4 *)0x0) {
      (**(code **)*puVar2)();
      uVar3 = (**(code **)(*piVar1 + 200))(puVar2,0x30);
      return uVar3;
    }
  }
  return 0;
}

