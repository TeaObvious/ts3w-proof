/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162848 (original PC 1.67 TS3W.exe).
   ScriptCore.StopWatch::StopWatch_StartStopwatch [assembly=ScriptCore token=0x06000143; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.StopWatch::StopWatch_StartStopwatch(uint param_1)

{
  int *piVar1;
  DWORD *pDVar2;
  
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pDVar2 = (DWORD *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (pDVar2 != (DWORD *)0x0) {
      FUN_00408760(pDVar2);
      return;
    }
  }
  return;
}

