/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_GetElapsedTimeFloatStopwatch. Export
   ordinal(s): 996. Entry VA: 0x10566fb0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000F53. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl StopWatch_GetElapsedTimeFloatStopwatch(uint param_1)

{
  int *piVar1;
  uint *puVar2;
  float10 fVar3;
  
                    /* 0x566fb0  996  StopWatch_GetElapsedTimeFloatStopwatch */
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)FUN_1055b120();
    puVar2 = (uint *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (puVar2 != (uint *)0x0) {
      fVar3 = FUN_10926ab0(puVar2);
      return fVar3;
    }
  }
  return (float10)0.0;
}

