/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetTextureSize. Export ordinal(s):
   2367. Entry VA: 0x1098fea0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C6A. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SimBuilderWrap_SetTextureSize(int param_1,undefined4 param_2)

{
                    /* 0x98fea0  2367  SimBuilderWrap_SetTextureSize */
  *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 0x4f00;
  *(undefined4 *)(param_1 + 100) = param_2;
  *(undefined4 *)(param_1 + 0x14) = 0x1f;
  *(undefined4 *)(param_1 + 0x18) = 0x1f;
  return;
}

