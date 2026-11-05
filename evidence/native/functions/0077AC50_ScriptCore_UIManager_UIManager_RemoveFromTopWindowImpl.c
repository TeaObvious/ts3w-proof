/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e68 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_RemoveFromTopWindowImpl [assembly=ScriptCore token=0x06000E08;
   winHandle: System.UInt32, id: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_RemoveFromTopWindowImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 == (int *)0x0) {
      iVar2 = 0;
    }
    else {
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
    }
    piVar1 = (int *)FUN_0050af90();
    piVar1 = (int *)(**(code **)(*piVar1 + 4))();
    if ((iVar2 != 0) &&
       (piVar1 = (int *)(**(code **)(*piVar1 + 0xf4))(param_1,1), piVar1 != (int *)0x0)) {
      (**(code **)(*piVar1 + 0xe0))(iVar2);
    }
  }
  return;
}

