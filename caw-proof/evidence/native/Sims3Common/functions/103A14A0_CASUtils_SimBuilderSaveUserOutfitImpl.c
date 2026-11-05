/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderSaveUserOutfitImpl. Export
   ordinal(s): 182. Entry VA: 0x103a14a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600040C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
CASUtils_SimBuilderSaveUserOutfitImpl(undefined4 *param_1,int *param_2,uint param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 local_10 [4];
  
                    /* 0x3a14a0  182  CASUtils_SimBuilderSaveUserOutfitImpl */
  puVar2 = FUN_1039f9d0(local_10,param_2,param_3);
  *param_1 = *puVar2;
  param_1[1] = puVar2[1];
  uVar1 = puVar2[3];
  param_1[2] = puVar2[2];
  param_1[3] = uVar1;
  return param_1;
}

