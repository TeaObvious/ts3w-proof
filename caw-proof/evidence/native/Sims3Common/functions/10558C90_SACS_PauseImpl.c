/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_PauseImpl. Export ordinal(s): 724. Entry VA:
   0x10558c90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EB6. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SACS_PauseImpl(int param_1)

{
  int *piVar1;
  void *this;
  undefined4 uVar2;
  
                    /* 0x558c90  724  SACS_PauseImpl */
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    uVar2 = FUN_105f5c50(this,param_1);
    return uVar2;
  }
  return 0;
}

