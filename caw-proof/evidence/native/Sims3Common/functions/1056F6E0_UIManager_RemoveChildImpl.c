/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_RemoveChildImpl. Export ordinal(s):
   1144. Entry VA: 0x1056f6e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006A7. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_RemoveChildImpl(uint param_1,uint param_2)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  piVar1 = (int *)FUN_1055b120();
  if (((param_1 & 0xff000000) == 0x30000000) && ((param_2 & 0xff000000) == 0x30000000)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2);
    if (piVar1 == (int *)0x0) {
      iVar3 = 0;
    }
    else {
      iVar3 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
    }
    if ((piVar2 != (int *)0x0) && (iVar3 != 0)) {
      (**(code **)(*piVar2 + 0xe0))(iVar3);
    }
  }
  return;
}

