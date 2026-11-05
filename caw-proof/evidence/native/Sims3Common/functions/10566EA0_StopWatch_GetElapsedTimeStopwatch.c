/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_GetElapsedTimeStopwatch. Export
   ordinal(s): 997. Entry VA: 0x10566ea0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000F52. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

ulonglong __fastcall StopWatch_GetElapsedTimeStopwatch(undefined4 param_1,uint param_2,uint param_3)

{
  int *piVar1;
  undefined8 uVar2;
  ulonglong uVar3;
  
                    /* 0x566ea0  997  StopWatch_GetElapsedTimeStopwatch */
  if ((param_3 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)FUN_1055b120();
    uVar2 = (**(code **)(*piVar1 + 0xcc))(param_3);
    param_2 = (uint)((ulonglong)uVar2 >> 0x20);
    if ((uint *)uVar2 != (uint *)0x0) {
      uVar3 = FUN_109269b0((uint *)uVar2);
      return uVar3;
    }
  }
  return (ulonglong)param_2 << 0x20;
}

