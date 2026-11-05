/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_GetLookTowardsSpeedImpl. Export
   ordinal(s): 447. Entry VA: 0x105360a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060002B1. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl LookAt_GetLookTowardsSpeedImpl(uint param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  float10 fVar4;
  float unaff_retaddr;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar2 = (int *)FUN_1055b120();
    puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (puVar3 != (undefined4 *)0x0) {
      puVar3[1] = puVar3[1] + 1;
      piVar2 = (int *)FUN_1058e220((int)puVar3);
      fVar4 = (float10)(**(code **)(*piVar2 + 0xc))();
      iVar1 = puVar3[1];
      puVar3[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar3[1] = 1;
        (**(code **)*puVar3)(1);
        fVar4 = (float10)unaff_retaddr;
      }
      return fVar4;
    }
  }
  return (float10)0.0;
}

