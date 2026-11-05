/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetFocusImpl. Export ordinal(s): 1152.
   Entry VA: 0x1056f750. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006AB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl UIManager_SetFocusImpl(undefined4 param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 unaff_ESI;
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_2 & 0xff000000) == 0x30000000) {
    if (param_2 != 0) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
      if (piVar1 == (int *)0x0) {
        return;
      }
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (iVar2 == 0) {
        return;
      }
      piVar1 = (int *)FUN_1093d2e0();
      (**(code **)(*piVar1 + 0x58))(unaff_ESI,iVar2);
      return;
    }
  }
  else if (param_2 != 0) {
    return;
  }
  piVar1 = (int *)FUN_1093d2e0();
  (**(code **)(*piVar1 + 0x58))(param_1,0);
  return;
}

