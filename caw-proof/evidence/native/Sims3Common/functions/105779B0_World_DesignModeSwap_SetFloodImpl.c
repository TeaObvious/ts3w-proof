/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_SetFloodImpl. Export
   ordinal(s): 1285. Entry VA: 0x105779b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CC7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl World_DesignModeSwap_SetFloodImpl(uint param_1)

{
  undefined1 uVar1;
  int *piVar2;
  void *this;
  
                    /* 0x5779b0  1285  World_DesignModeSwap_SetFloodImpl */
  piVar2 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) == 0x45000000) {
    this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      uVar1 = FUN_1001e3f0(this,(char)param_1);
      return uVar1;
    }
  }
  return 0;
}

