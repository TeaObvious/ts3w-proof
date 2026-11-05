/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_SetSourceObjectImpl. Export
   ordinal(s): 1289. Entry VA: 0x10577a70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CC6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_DesignModeSwap_SetSourceObjectImpl(undefined4 *param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  uint uVar2;
  
                    /* 0x577a70  1289  World_DesignModeSwap_SetSourceObjectImpl */
  piVar1 = (int *)FUN_1055b120();
  if (((uint)param_1 & 0xff000000) == 0x45000000) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    piVar1 = (int *)0x0;
    if (this != (void *)0x0) {
      uVar2 = FUN_1001fa10(this,param_1,param_2);
      return uVar2;
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

