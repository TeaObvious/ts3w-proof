/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_GetCustomFlyThroughIndex. Export
   ordinal(s): 280. Entry VA: 0x1052f780. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A48. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 Camera_GetCustomFlyThroughIndex(void)

{
  int iVar1;
  undefined4 uVar2;
  
                    /* 0x52f780  280  Camera_GetCustomFlyThroughIndex */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      uVar2 = FUN_1075c930(iVar1);
      return uVar2;
    }
  }
  return 0;
}

