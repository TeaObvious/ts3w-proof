/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_SetSubsortImpl. Export
   ordinal(s): 1290. Entry VA: 0x10577c10. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CCC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_DesignModeSwap_SetSubsortImpl(uint param_1)

{
  int *piVar1;
  void *this;
  
                    /* 0x577c10  1290  World_DesignModeSwap_SetSubsortImpl */
  piVar1 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x45000000) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      FUN_1001e930(this,param_1);
    }
  }
  return;
}

