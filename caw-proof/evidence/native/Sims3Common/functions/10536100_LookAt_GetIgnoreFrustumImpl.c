/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_GetIgnoreFrustumImpl. Export ordinal(s):
   444. Entry VA: 0x10536100. Original managed P/Invoke MethodDef(s): ScriptCore:0x060002B5. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 __cdecl LookAt_GetIgnoreFrustumImpl(uint param_1)

{
  int iVar1;
  undefined1 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  if ((param_1 & 0xff000000) == 0x46000000) {
    piVar3 = (int *)FUN_1055b120();
    puVar4 = (undefined4 *)(**(code **)(*piVar3 + 0xcc))(param_1);
    if (puVar4 != (undefined4 *)0x0) {
      puVar4[1] = puVar4[1] + 1;
      piVar3 = (int *)FUN_1058e220((int)puVar4);
      uVar2 = (**(code **)(*piVar3 + 0x14))();
      iVar1 = puVar4[1];
      puVar4[1] = iVar1 + -1;
      if (iVar1 + -1 == 0) {
        puVar4[1] = 1;
        (**(code **)*puVar4)(1);
      }
      return uVar2;
    }
  }
  return 1;
}

