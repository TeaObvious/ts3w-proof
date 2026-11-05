/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_CloseScriptErrorFileImpl. Export
   ordinal(s): 742. Entry VA: 0x1055e7c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010EB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl Simulator_CloseScriptErrorFileImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  
                    /* 0x55e7c0  742  Simulator_CloseScriptErrorFileImpl */
  piVar1 = (int *)FUN_1055b120();
  piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))();
    (**(code **)*piVar2)(1);
    uVar3 = (**(code **)(*piVar1 + 0xd8))(param_1);
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  return 0;
}

