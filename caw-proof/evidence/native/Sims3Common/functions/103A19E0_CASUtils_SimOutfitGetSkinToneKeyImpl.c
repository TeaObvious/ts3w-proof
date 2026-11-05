/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimOutfitGetSkinToneKeyImpl. Export
   ordinal(s): 233. Entry VA: 0x103a19e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000454. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl CASUtils_SimOutfitGetSkinToneKeyImpl(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_10 [4];
  
                    /* 0x3a19e0  233  CASUtils_SimOutfitGetSkinToneKeyImpl */
  puVar2 = (undefined4 *)FUN_103a0520(local_10,param_2);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  uVar1 = puVar2[3];
  param_1[2] = puVar2[2];
  param_1[3] = uVar1;
  return param_1;
}

