/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimOutfitResourceWrap_GetSkinToneKey. Export
   ordinal(s): 2381. Entry VA: 0x10990e30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600038F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SimOutfitResourceWrap_GetSkinToneKey(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
                    /* 0x990e30  2381  SimOutfitResourceWrap_GetSkinToneKey */
  uVar1 = *(undefined4 *)(param_2 + 0x40);
  uVar2 = *(undefined4 *)(param_2 + 0x44);
  uVar3 = *(undefined4 *)(param_2 + 0x48);
  param_1[1] = *(undefined4 *)(param_2 + 0x4c);
  *param_1 = uVar3;
  param_1[2] = uVar1;
  param_1[3] = uVar2;
  return;
}

