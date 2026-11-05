/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Random_NextDoubleImpl. Export ordinal(s): 538.
   Entry VA: 0x1053b670. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000A1B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Random_NextDoubleImpl(void)

{
  int *piVar1;
  
                    /* 0x53b670  538  Random_NextDoubleImpl */
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
                    /* WARNING: Could not recover jumptable at 0x1053b688. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar1 + 0x28))();
  return;
}

