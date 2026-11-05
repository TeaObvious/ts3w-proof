/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_EnableObjectScreenCoverage. Export
   ordinal(s): 1298. Entry VA: 0x105797a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CA8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_EnableObjectScreenCoverage(int param_1)

{
  char *pcVar1;
  
                    /* 0x5797a0  1298  World_EnableObjectScreenCoverage */
  pcVar1 = FUN_10398bb0();
  if (param_1 != 0) {
    FUN_103988d0(pcVar1);
    return;
  }
  FUN_10398b70(pcVar1);
  return;
}

