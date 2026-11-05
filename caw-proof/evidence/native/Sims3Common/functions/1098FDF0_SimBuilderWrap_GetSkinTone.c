/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_GetSkinTone. Export ordinal(s):
   2338. Entry VA: 0x1098fdf0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C58. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SimBuilderWrap_GetSkinTone(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
                    /* 0x98fdf0  2338  SimBuilderWrap_GetSkinTone */
  *param_1 = *(undefined4 *)(param_2 + 0x30);
  param_1[2] = *(undefined4 *)(param_2 + 0x28);
  uVar1 = *(undefined4 *)(param_2 + 0x34);
  param_1[3] = *(undefined4 *)(param_2 + 0x2c);
  param_1[1] = uVar1;
  return;
}

