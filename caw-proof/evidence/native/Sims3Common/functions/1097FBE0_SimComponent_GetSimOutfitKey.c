/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimComponent_GetSimOutfitKey. Export ordinal(s):
   2370. Entry VA: 0x1097fbe0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000127. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SimComponent_GetSimOutfitKey(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
                    /* 0x97fbe0  2370  SimComponent_GetSimOutfitKey */
  *param_1 = *(undefined4 *)(param_2 + 0x10);
  param_1[1] = *(undefined4 *)(param_2 + 0x14);
  uVar1 = *(undefined4 *)(param_2 + 0x1c);
  param_1[2] = *(undefined4 *)(param_2 + 0x18);
  param_1[3] = uVar1;
  return;
}

