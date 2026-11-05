/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetCameraControllerType. Export
   ordinal(s): 2627. Entry VA: 0x10997980. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000852. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 WorldWrap_GetCameraControllerType(void)

{
  int iVar1;
  
                    /* 0x997980  2627  WorldWrap_GetCameraControllerType */
  iVar1 = FUN_1075c630();
  iVar1 = FUN_10937a80(iVar1);
  if (iVar1 != 0) {
    return *(undefined4 *)(iVar1 + 0x90);
  }
  return 0;
}

