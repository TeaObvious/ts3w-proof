/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_InvalidateCursorImpl. Export
   ordinal(s): 1126. Entry VA: 0x1056f820. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006B6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_InvalidateCursorImpl(uint param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  
  piVar2 = (int *)FUN_1055b120();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1), piVar2 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218), piVar2 != (int *)0x0)) {
    iVar1 = *piVar2;
    uVar3 = (**(code **)(iVar1 + 0x24))();
    (**(code **)(iVar1 + 0x70))(uVar3);
  }
  return;
}

