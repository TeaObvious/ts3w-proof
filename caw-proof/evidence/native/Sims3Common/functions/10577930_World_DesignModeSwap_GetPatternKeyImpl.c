/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_DesignModeSwap_GetPatternKeyImpl. Export
   ordinal(s): 1282. Entry VA: 0x10577930. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CC5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl World_DesignModeSwap_GetPatternKeyImpl(undefined4 *param_1,uint param_2)

{
  int *piVar1;
  void *this;
  undefined4 unaff_ESI;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
                    /* 0x577930  1282  World_DesignModeSwap_GetPatternKeyImpl */
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  piVar1 = (int *)FUN_1055b120();
  if ((param_2 & 0xff000000) == 0x45000000) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_2);
    if (this != (void *)0x0) {
      FUN_100206b0(this,(uint *)&stack0xffffffec);
      *param_1 = uStack_c;
      param_1[1] = uStack_8;
      param_1[2] = unaff_ESI;
      param_1[3] = uStack_10;
    }
  }
  return param_1;
}

