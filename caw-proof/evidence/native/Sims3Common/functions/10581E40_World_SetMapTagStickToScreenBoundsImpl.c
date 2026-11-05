/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetMapTagStickToScreenBoundsImpl. Export
   ordinal(s): 1589. Entry VA: 0x10581e40. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000C83. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_SetMapTagStickToScreenBoundsImpl(char param_1)

{
  int *piVar1;
  int *piVar2;
  void *this;
  int iVar3;
  
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) {
    for (piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(0); piVar2 != (int *)0x0;
        piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(piVar2)) {
      this = (void *)(**(code **)(*piVar2 + 0xc))(0x486526a);
      if (this != (void *)0x0) {
        FUN_105cee10(this,param_1,(int)piVar1);
        break;
      }
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0x4c))();
    if ((piVar1 != (int *)0x0) && (iVar3 = (**(code **)(*piVar1 + 0xc))(0x5d14a88), iVar3 != 0)) {
      *(char *)(iVar3 + 0x33) = param_1;
    }
  }
  return;
}

