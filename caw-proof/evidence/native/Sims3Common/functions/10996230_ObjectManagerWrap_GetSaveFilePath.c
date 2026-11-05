/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetSaveFilePath. Export
   ordinal(s): 1979. Entry VA: 0x10996230. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000268. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ObjectManagerWrap_GetSaveFilePath(int param_1)

{
                    /* 0x996230  1979  ObjectManagerWrap_GetSaveFilePath */
  if (param_1 != 0) {
    return *(undefined4 *)(param_1 + 0x60);
  }
  return 0;
}

