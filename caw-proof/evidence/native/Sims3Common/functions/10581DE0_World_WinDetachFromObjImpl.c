/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_WinDetachFromObjImpl;
   World_WinDetachFromWorldPositionImpl. Export ordinal(s): 1625; 1626. Entry VA: 0x10581de0.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C80; ScriptCore:0x06000C82. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_WinDetachFromObjImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  char unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) {
    if (unaff_retaddr == '\0') {
      (**(code **)(*piVar1 + 0x88))(0);
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(0);
    while (piVar2 != (int *)0x0) {
      piVar4 = (int *)0x0;
      if ((piVar2 != (int *)0x0) && (iVar3 = (**(code **)(*piVar2 + 0xc))(0x486526a), iVar3 != 0)) {
        (**(code **)(*piVar2 + 0xc))(0x486526a);
        piVar4 = piVar2;
      }
      piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(piVar2);
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar1 + 0x10c))(piVar4);
      }
    }
  }
  return;
}

