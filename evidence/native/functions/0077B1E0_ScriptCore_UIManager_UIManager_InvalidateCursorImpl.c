/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f00 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_InvalidateCursorImpl [assembly=ScriptCore token=0x06000E1B;
   winHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_InvalidateCursorImpl(uint param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1), piVar2 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218), piVar2 != (int *)0x0)) {
    iVar1 = *piVar2;
    uVar3 = (**(code **)(iVar1 + 0x24))();
    (**(code **)(iVar1 + 0x70))(uVar3);
  }
  return;
}

