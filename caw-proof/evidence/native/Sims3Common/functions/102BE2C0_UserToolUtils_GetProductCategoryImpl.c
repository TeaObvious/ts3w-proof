/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_GetProductCategoryImpl. Export
   ordinal(s): 1202. Entry VA: 0x102be2c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A7A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UserToolUtils_GetProductCategoryImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)FUN_1055b120();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x45000000)) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if ((param_1 != 0) && ((param_1 < 3 && (piVar1 != (int *)0x0)))) {
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xf14a3b3c);
      if (iVar2 != 0) {
        return *(undefined4 *)(iVar2 + 0xa0);
      }
    }
  }
  return 0;
}

