/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_FacialBlendGetRegionFlagsImpl. Export
   ordinal(s): 92. Entry VA: 0x1039ffe0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600043E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl CASUtils_FacialBlendGetRegionFlagsImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  
                    /* 0x39ffe0  92  CASUtils_FacialBlendGetRegionFlagsImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      uVar3 = FUN_103c0100(iVar2);
      return uVar3;
    }
  }
  return 0;
}

