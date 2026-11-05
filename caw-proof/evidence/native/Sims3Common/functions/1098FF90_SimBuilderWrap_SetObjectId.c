/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetObjectId. Export ordinal(s):
   2363. Entry VA: 0x1098ff90. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C75. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SimBuilderWrap_SetObjectId(int param_1,undefined4 param_2,undefined4 param_3)

{
                    /* 0x98ff90  2363  SimBuilderWrap_SetObjectId */
  *(undefined4 *)(param_1 + 0x1f8) = param_2;
  *(undefined4 *)(param_1 + 0x1fc) = param_3;
  return;
}

