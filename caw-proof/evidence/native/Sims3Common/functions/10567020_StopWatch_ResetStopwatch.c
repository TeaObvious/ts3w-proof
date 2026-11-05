/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_ResetStopwatch. Export ordinal(s): 999.
   Entry VA: 0x10567020. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F50. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl StopWatch_ResetStopwatch(uint param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  
                    /* 0x567020  999  StopWatch_ResetStopwatch */
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)FUN_1055b120();
    puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (puVar2 != (undefined4 *)0x0) {
      *puVar2 = 0;
      puVar2[1] = 0;
      puVar2[2] = 0;
      puVar2[3] = 0;
    }
  }
  return;
}

