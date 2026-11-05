/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162838 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StopWatch::StopWatch_CreateStopwatch [assembly=ScriptCore token=0x06000141; tickStyle:
   System.Int32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.StopWatch::StopWatch_CreateStopwatch(int param_1)

{
  int *piVar1;
  void *pvVar2;
  undefined4 uVar3;
  
  if (7 < param_1) {
    return 0;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pvVar2 = (void *)FUN_004e4500(0x18,"Scripting/StopwatchHost/CreateStopwatch",0);
  if (pvVar2 == (void *)0x0) {
    uVar3 = (**(code **)(*piVar1 + 200))(0,0x10);
    return uVar3;
  }
  pvVar2 = ElapsedClock_ConstructAndOptionallyStart(pvVar2,param_1,'\0');
  uVar3 = (**(code **)(*piVar1 + 200))(pvVar2,0x10);
  return uVar3;
}

