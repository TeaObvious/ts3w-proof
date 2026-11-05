/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_ClearReflectionCache. Export
   ordinal(s): 741. Entry VA: 0x1055e930. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010F4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void Simulator_ClearReflectionCache(void)

{
  int *piVar1;
  
                    /* 0x55e930  741  Simulator_ClearReflectionCache */
  piVar1 = (int *)FUN_1055b120();
                    /* WARNING: Could not recover jumptable at 0x1055e93f. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar1 + 0x178))();
  return;
}

