/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimOutfitResourceWrap_SetSkinToneKey. Export
   ordinal(s): 2392. Entry VA: 0x10990f50. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600038D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SimOutfitResourceWrap_SetSkinToneKey
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5)

{
                    /* 0x990f50  2392  SimOutfitResourceWrap_SetSkinToneKey */
  *(undefined4 *)(param_1 + 0x40) = param_4;
  *(undefined4 *)(param_1 + 0x44) = param_5;
  *(undefined4 *)(param_1 + 0x48) = param_2;
  *(undefined4 *)(param_1 + 0x4c) = param_3;
  return;
}

