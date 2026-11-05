/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162870 (original PC 1.67 TS3W.exe).
   ScriptCore.StopWatch::StopWatch_GetElapsedTimeFloatStopwatch [assembly=ScriptCore
   token=0x06000148; handle: System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 __cdecl ScriptCore.StopWatch::StopWatch_GetElapsedTimeFloatStopwatch(uint param_1)

{
  int *piVar1;
  uint *puVar2;
  float10 fVar3;
  
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar2 = (uint *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (puVar2 != (uint *)0x0) {
      fVar3 = FUN_004f37c0(puVar2);
      return fVar3;
    }
  }
  return (float10)0;
}

