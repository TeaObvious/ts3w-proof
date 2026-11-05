/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StopWatch_RestartStopwatch. Export ordinal(s):
   1000. Entry VA: 0x10567060. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F51. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl StopWatch_RestartStopwatch(uint param_1)

{
  int *piVar1;
  DWORD *pDVar2;
  
                    /* 0x567060  1000  StopWatch_RestartStopwatch */
  if ((param_1 & 0xff000000) == 0x10000000) {
    piVar1 = (int *)FUN_1055b120();
    pDVar2 = (DWORD *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (pDVar2 != (DWORD *)0x0) {
      FUN_1000c350(pDVar2);
      return;
    }
  }
  return;
}

