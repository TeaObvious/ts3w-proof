/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManager_SetDrawOccludersEnable. Export
   ordinal(s): 2290. Entry VA: 0x1098eab0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000164. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManager_SetDrawOccludersEnable(int param_1,int param_2)

{
  int iVar1;
  
                    /* 0x98eab0  2290  SceneManager_SetDrawOccludersEnable */
  iVar1 = FUN_104de430(param_1);
  *(bool *)(iVar1 + 0x108) = param_2 != 0;
  return;
}

