/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_TriggerEffectImpl. Export ordinal(s):
   1167. Entry VA: 0x1056fa70. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006DB. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_TriggerEffectImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  char unaff_SI;
  char unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar1 != (int *)0x0)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0x8f2b630b);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x48))(unaff_retaddr == '\0');
      return;
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0x8239c2f);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x20))(unaff_SI == '\0');
    }
  }
  return;
}

