/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderApplyBoneDeltasImpl. Export
   ordinal(s): 146. Entry VA: 0x1039ff50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000425. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CASUtils_SimBuilderApplyBoneDeltasImpl(uint param_1)

{
  int *piVar1;
  
                    /* 0x39ff50  146  CASUtils_SimBuilderApplyBoneDeltasImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      FUN_103dc3a0(piVar1);
      return;
    }
  }
  return;
}

