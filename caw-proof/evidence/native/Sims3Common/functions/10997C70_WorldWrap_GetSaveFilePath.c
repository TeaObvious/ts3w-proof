/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetSaveFilePath. Export ordinal(s):
   2649. Entry VA: 0x10997c70. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004C8. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetSaveFilePath(int param_1)

{
  undefined4 uVar1;
  
                    /* 0x997c70  2649  WorldWrap_GetSaveFilePath */
  if (param_1 != 0) {
    uVar1 = FUN_10a55410(param_1);
    return uVar1;
  }
  return 0;
}

