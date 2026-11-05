/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CompoundBlendGetNumBlendsImpl. Export
   ordinal(s): 74. Entry VA: 0x103a56a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000443. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl CASUtils_CompoundBlendGetNumBlendsImpl(uint param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar2 = (int *)FUN_1055b120();
    iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
    if (iVar3 != 0) {
      iVar4 = 0;
      for (puVar1 = *(undefined4 **)(iVar3 + 0x40); puVar1 != (undefined4 *)(iVar3 + 0x40);
          puVar1 = (undefined4 *)*puVar1) {
        iVar4 = iVar4 + 1;
      }
      return iVar4;
    }
  }
  return 0;
}

