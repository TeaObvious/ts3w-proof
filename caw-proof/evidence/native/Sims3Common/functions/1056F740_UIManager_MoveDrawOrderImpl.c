/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_MoveDrawOrderImpl. Export ordinal(s):
   1136. Entry VA: 0x1056f740. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006A9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_MoveDrawOrderImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  char unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if (((((param_1 & 0xff000000) == 0x30000000) &&
       (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar1 != (int *)0x0)) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) &&
     (iVar2 = (**(code **)(*piVar1 + 0x10))(), iVar2 != 0)) {
    piVar3 = (int *)(**(code **)(*piVar1 + 0x10))();
    if (unaff_retaddr != '\0') {
      (**(code **)(*piVar3 + 0xec))();
      return;
    }
    (**(code **)(*piVar3 + 0xf0))(piVar1);
  }
  return;
}

