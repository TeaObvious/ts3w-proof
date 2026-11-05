/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetCameraControllerType. Export
   ordinal(s): 2698. Entry VA: 0x1099a4e0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000853. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void WorldWrap_SetCameraControllerType(void)

{
  int iVar1;
  
                    /* 0x99a4e0  2698  WorldWrap_SetCameraControllerType */
  iVar1 = FUN_1075c630();
  iVar1 = FUN_10937a80(iVar1);
  if (iVar1 != 0) {
    FUN_1099a480('\x01',iVar1,FUN_1075d9b0,0);
  }
  return;
}

