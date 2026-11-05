/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162870 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StopWatch::StopWatch_GetElapsedTimeFloatStopwatch [assembly=ScriptCore
   token=0x06000148; handle: System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 __cdecl ScriptCore.StopWatch::StopWatch_GetElapsedTimeFloatStopwatch(uint param_1)

{
  int *piVar1;
  void *this;
  float10 fVar2;
  
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      fVar2 = ElapsedClock_ReadScaledTicks(this);
      return fVar2;
    }
  }
  return (float10)0;
}

