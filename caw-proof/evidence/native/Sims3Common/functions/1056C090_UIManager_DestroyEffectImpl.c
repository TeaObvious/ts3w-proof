/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_DestroyEffectImpl. Export ordinal(s):
   1080. Entry VA: 0x1056c090. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006DA. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_DestroyEffectImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x30000000)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar2 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056b7e9. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar2 + 4))();
      return;
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056b805. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

