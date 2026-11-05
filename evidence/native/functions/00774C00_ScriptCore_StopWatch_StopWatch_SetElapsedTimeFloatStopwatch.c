/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162880 (original PC 1.67 TS3W.exe).
   ScriptCore.StopWatch::StopWatch_SetElapsedTimeFloatStopwatch [assembly=ScriptCore
   token=0x0600014A; handle: System.UInt32, elapsedTime: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.StopWatch::StopWatch_SetElapsedTimeFloatStopwatch(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      FUN_004f3860(iVar2);
    }
  }
  return;
}

