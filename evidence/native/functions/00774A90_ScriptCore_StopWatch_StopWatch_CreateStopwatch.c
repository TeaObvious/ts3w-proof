/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162838 (original PC 1.67 TS3W.exe).
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
  if (pvVar2 != (void *)0x0) {
    pvVar2 = FUN_004f39b0(pvVar2,param_1,'\0');
    uVar3 = (**(code **)(*piVar1 + 200))(pvVar2,0x10);
    return uVar3;
  }
  uVar3 = (**(code **)(*piVar1 + 200))(0,0x10);
  return uVar3;
}

