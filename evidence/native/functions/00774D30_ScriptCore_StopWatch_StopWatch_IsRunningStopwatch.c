/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162888 (original PC 1.67 TS3W.exe).
   ScriptCore.StopWatch::StopWatch_IsRunningStopwatch [assembly=ScriptCore token=0x0600014B; handle:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.StopWatch::StopWatch_IsRunningStopwatch(uint param_1)

{
  uint uVar1;
  int *piVar2;
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x10000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (piVar2 != (int *)0x0) {
      if (*piVar2 != 0 || piVar2[1] != 0) {
        return 1;
      }
      return 0;
    }
  }
  return uVar1;
}

