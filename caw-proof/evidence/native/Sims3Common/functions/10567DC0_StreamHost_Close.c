/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_Close. Export ordinal(s): 2445. Entry
   VA: 0x10567dc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F41. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl StreamHost_Close(uint param_1)

{
  int *piVar1;
  
  if (param_1 == DAT_10c7b0a4) {
    DAT_10c7b0a4 = 0;
    DAT_10c7b0a8 = 0;
  }
  if ((param_1 & 0xff000000) == 0x60000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056732d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 8))();
      return;
    }
  }
  return;
}

