/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_RemoveFromTopWindowImpl. Export
   ordinal(s): 1145. Entry VA: 0x1056f6b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006A3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_RemoveFromTopWindowImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 == (int *)0x0) {
      iVar2 = 0;
    }
    else {
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218);
    }
    piVar1 = (int *)FUN_1093d2e0();
    piVar1 = (int *)(**(code **)(*piVar1 + 4))();
    if ((iVar2 != 0) &&
       (piVar1 = (int *)(**(code **)(*piVar1 + 0xf4))(param_1,1), piVar1 != (int *)0x0)) {
      (**(code **)(*piVar1 + 0xe0))(iVar2);
    }
  }
  return;
}

