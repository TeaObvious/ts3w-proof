/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_EnableGroupImpl. Export ordinal(s): 24.
   Entry VA: 0x10654810. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000091. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Audio_EnableGroupImpl(void)

{
  int *piVar1;
  char unaff_SI;
  undefined4 unaff_retaddr;
  
                    /* 0x654810  24  Audio_EnableGroupImpl */
  piVar1 = (int *)FUN_106a3c60();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x44))(0xd549bf94);
    (**(code **)(*piVar1 + 0x4c))(0x4362049,unaff_retaddr);
    (**(code **)(*piVar1 + 0x4c))(0x1549c50a,unaff_SI != '\0');
                    /* WARNING: Could not recover jumptable at 0x1065485d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x68))();
    return;
  }
  return;
}

