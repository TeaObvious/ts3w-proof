/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimOutfitGetBlendInfoImpl. Export
   ordinal(s): 215. Entry VA: 0x103a3d80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000467. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl CASUtils_SimOutfitGetBlendInfoImpl(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_18 [6];
  
                    /* 0x3a3d80  215  CASUtils_SimOutfitGetBlendInfoImpl */
  puVar2 = FUN_103a3410(local_18,param_2);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  param_1[2] = puVar2[2];
  param_1[3] = puVar2[3];
  uVar1 = puVar2[5];
  param_1[4] = puVar2[4];
  param_1[5] = uVar1;
  return param_1;
}

