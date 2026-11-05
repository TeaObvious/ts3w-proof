/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_ClearOldCompositorsImpl.
   Export ordinal(s): 1279. Entry VA: 0x10577ab0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CC9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_DesignModeSwap_ClearOldCompositorsImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x577ab0  1279  World_DesignModeSwap_ClearOldCompositorsImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x45000000) {
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      FUN_1001fdc0(iVar2);
      return;
    }
  }
  return;
}

