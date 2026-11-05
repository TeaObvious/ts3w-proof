/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_DestroyStopwatch. Export ordinal(s):
   995. Entry VA: 0x105671b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F4D. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl StopWatch_DestroyStopwatch(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x5671b0  995  StopWatch_DestroyStopwatch */
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xd8))(param_1);
    if (iVar2 != 0) {
      FUN_10918e90(iVar2);
      return;
    }
  }
  return;
}

