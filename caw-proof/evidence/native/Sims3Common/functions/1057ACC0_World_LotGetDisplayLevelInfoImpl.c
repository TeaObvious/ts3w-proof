/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotGetDisplayLevelInfoImpl. Export
   ordinal(s): 1442. Entry VA: 0x1057acc0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BCF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int * __cdecl World_LotGetDisplayLevelInfoImpl(int *param_1,int param_2,int param_3)

{
  int iVar1;
  int *piVar2;
  int local_18 [6];
  
                    /* 0x57acc0  1442  World_LotGetDisplayLevelInfoImpl */
  piVar2 = FUN_105783b0(local_18,param_2,param_3);
  *param_1 = *piVar2;
  param_1[1] = piVar2[1];
  param_1[2] = piVar2[2];
  param_1[3] = piVar2[3];
  iVar1 = piVar2[5];
  param_1[4] = piVar2[4];
  param_1[5] = iVar1;
  return param_1;
}

