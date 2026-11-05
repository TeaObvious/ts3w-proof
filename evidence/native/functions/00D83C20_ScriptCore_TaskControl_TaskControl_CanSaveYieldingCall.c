/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0108d698 (original PC 1.67 TS3W.exe).
   ScriptCore.TaskControl::TaskControl_CanSaveYieldingCall [assembly=ScriptCore token=0x0600012E;
   handle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.TaskControl::TaskControl_CanSaveYieldingCall(uint param_1)

{
  char cVar1;
  int iVar2;
  int *piVar3;
  
  if ((param_1 & 0xff000000) != 0x43000000) {
    return param_1 & 0xff000000;
  }
  iVar2 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar2 == 0) {
    iVar2 = 0;
  }
  else {
    iVar2 = iVar2 + -8;
  }
  piVar3 = (int *)(**(code **)(*(int *)(iVar2 + 8) + 0xcc))(param_1);
  if (piVar3 != (int *)0x0) {
    cVar1 = (**(code **)(*piVar3 + 0x14))();
    if (cVar1 != '\0') {
      return 1;
    }
  }
  return 0;
}

