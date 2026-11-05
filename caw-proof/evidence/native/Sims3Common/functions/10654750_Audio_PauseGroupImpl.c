/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_PauseGroupImpl. Export ordinal(s): 27.
   Entry VA: 0x10654750. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600008F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Audio_PauseGroupImpl(void)

{
  int *piVar1;
  char unaff_SI;
  undefined4 unaff_retaddr;
  
                    /* 0x654750  27  Audio_PauseGroupImpl */
  piVar1 = (int *)FUN_106a3c60();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x44))(0x44f2b21);
    (**(code **)(*piVar1 + 0x4c))(0x4362049,unaff_retaddr);
    (**(code **)(*piVar1 + 0x4c))(0x42c8c8b,unaff_SI != '\0');
                    /* WARNING: Could not recover jumptable at 0x1065479d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x68))();
    return;
  }
  return;
}

