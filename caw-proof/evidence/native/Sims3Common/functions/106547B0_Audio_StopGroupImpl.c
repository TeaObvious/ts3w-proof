/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_StopGroupImpl. Export ordinal(s): 43. Entry
   VA: 0x106547b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000090. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Audio_StopGroupImpl(void)

{
  int *piVar1;
  char unaff_SI;
  undefined4 unaff_retaddr;
  
                    /* 0x6547b0  43  Audio_StopGroupImpl */
  piVar1 = (int *)FUN_106a3c60();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x44))(0x1549cebe);
    (**(code **)(*piVar1 + 0x4c))(0x4362049,unaff_retaddr);
    (**(code **)(*piVar1 + 0x4c))(0x34753a0,unaff_SI != '\0');
                    /* WARNING: Could not recover jumptable at 0x106547fd. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x68))();
    return;
  }
  return;
}

