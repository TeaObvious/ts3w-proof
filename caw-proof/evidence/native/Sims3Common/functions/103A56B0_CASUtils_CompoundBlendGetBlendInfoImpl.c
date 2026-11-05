/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CompoundBlendGetBlendInfoImpl. Export
   ordinal(s): 72. Entry VA: 0x103a56b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600044F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int * __cdecl CASUtils_CompoundBlendGetBlendInfoImpl(int *param_1,uint param_2)

{
  int iVar1;
  int *piVar2;
  int local_18 [6];
  
                    /* 0x3a56b0  72  CASUtils_CompoundBlendGetBlendInfoImpl */
  piVar2 = FUN_103a54a0(local_18,param_2);
  *param_1 = *piVar2;
  param_1[1] = piVar2[1];
  param_1[2] = piVar2[2];
  param_1[3] = piVar2[3];
  iVar1 = piVar2[5];
  param_1[4] = piVar2[4];
  param_1[5] = iVar1;
  return param_1;
}

