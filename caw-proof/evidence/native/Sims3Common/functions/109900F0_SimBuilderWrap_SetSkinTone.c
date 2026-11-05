/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SetSkinTone. Export ordinal(s):
   2364. Entry VA: 0x109900f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C57. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
SimBuilderWrap_SetSkinTone
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
                    /* 0x9900f0  2364  SimBuilderWrap_SetSkinTone */
  *(uint *)(param_1 + 0x1c) = *(uint *)(param_1 + 0x1c) | 0x101;
  *(uint *)(param_1 + 0x14) = *(uint *)(param_1 + 0x14) | 0x1f;
  *(undefined4 *)(param_1 + 0x28) = param_4;
  *(undefined4 *)(param_1 + 0x2c) = param_5;
  *(undefined4 *)(param_1 + 0x30) = param_2;
  *(undefined4 *)(param_1 + 0x34) = param_3;
  return;
}

