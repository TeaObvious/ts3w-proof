/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ForceMaptagTickImpl. Export ordinal(s):
   1315. Entry VA: 0x10581e50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C84. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_ForceMaptagTickImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (((piVar1 != (int *)0x0) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(0), piVar2 != (int *)0x0)) {
    while (piVar3 = (int *)(**(code **)(*piVar2 + 0xc))(0x486526a), piVar3 == (int *)0x0) {
      piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(piVar2);
      if (piVar2 == (int *)0x0) {
        return;
      }
    }
    (**(code **)(*piVar3 + 0x60))(piVar1);
  }
  return;
}

