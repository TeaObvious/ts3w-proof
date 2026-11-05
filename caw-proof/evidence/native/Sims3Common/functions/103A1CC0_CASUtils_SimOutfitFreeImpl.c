/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimOutfitFreeImpl. Export ordinal(s):
   212. Entry VA: 0x103a1cc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000470. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_SimOutfitFreeImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  void *this;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    (**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar2 != (int *)0x0) {
      this = (void *)FUN_103e5fe0();
      FUN_103e82a0(this,piVar2);
                    /* WARNING: Could not recover jumptable at 0x103a0493. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar2 + 4))();
      return;
    }
  }
  return;
}

