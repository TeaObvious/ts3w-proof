/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162868 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StopWatch::StopWatch_GetElapsedTimeStopwatch [assembly=ScriptCore token=0x06000147;
   handle: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

ulonglong __fastcall
ScriptCore.StopWatch::StopWatch_GetElapsedTimeStopwatch
          (undefined4 param_1,uint param_2,uint param_3)

{
  int *piVar1;
  undefined8 uVar2;
  ulonglong uVar3;
  
  if ((param_3 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar2 = (**(code **)(*piVar1 + 0xcc))(param_3);
    param_2 = (uint)((ulonglong)uVar2 >> 0x20);
    if ((uint *)uVar2 != (uint *)0x0) {
      uVar3 = ElapsedClock_ReadRoundedScaledTicks((uint *)uVar2);
      return uVar3;
    }
  }
  return (ulonglong)param_2 << 0x20;
}

