/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderResetAnimationImpl. Export
   ordinal(s): 177. Entry VA: 0x103a11c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060003F9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASUtils_SimBuilderResetAnimationImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  
                    /* 0x3a11c0  177  CASUtils_SimBuilderResetAnimationImpl */
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x35000000) {
    piVar2 = (int *)FUN_1055b120();
    iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (iVar3 != 0) {
      uVar1 = FUN_103dc000(iVar3);
      return uVar1;
    }
  }
  return uVar1;
}

