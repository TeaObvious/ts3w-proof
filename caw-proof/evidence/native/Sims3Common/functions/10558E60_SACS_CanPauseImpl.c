/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_CanPauseImpl. Export ordinal(s): 710. Entry
   VA: 0x10558e60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EB5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl SACS_CanPauseImpl(int param_1)

{
  bool bVar1;
  int *piVar2;
  void *this;
  
                    /* 0x558e60  710  SACS_CanPauseImpl */
  piVar2 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
  if (this != (void *)0x0) {
    bVar1 = FUN_105f1c70(this,param_1);
    return bVar1;
  }
  return false;
}

