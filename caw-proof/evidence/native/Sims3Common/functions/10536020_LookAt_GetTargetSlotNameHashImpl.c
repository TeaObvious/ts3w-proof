/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_GetTargetSlotNameHashImpl. Export
   ordinal(s): 451. Entry VA: 0x10536020. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060002AD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl LookAt_GetTargetSlotNameHashImpl(uint param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)FUN_1055b120();
    puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (puVar3 != (undefined4 *)0x0) {
      puVar3[1] = puVar3[1] + 1;
      piVar2 = (int *)FUN_1058e220((int)puVar3);
      uVar4 = (**(code **)(*piVar2 + 4))();
      iVar1 = puVar3[1];
      puVar3[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar3[1] = 1;
        (**(code **)*puVar3)(1);
      }
      return uVar4;
    }
  }
  return 0;
}

