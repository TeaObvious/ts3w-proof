/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e88 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_RemoveChildImpl [assembly=ScriptCore token=0x06000E0C;
   parentHandle: System.UInt32, childHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_RemoveChildImpl(uint param_1,uint param_2)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((param_1 & 0xff000000) == 0x30000000) && ((param_2 & 0xff000000) == 0x30000000)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
    if (piVar1 == (int *)0x0) {
      iVar3 = 0;
    }
    else {
      iVar3 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
    }
    if ((piVar2 != (int *)0x0) && (iVar3 != 0)) {
      (**(code **)(*piVar2 + 0xe0))(iVar3);
    }
  }
  return;
}

