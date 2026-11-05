/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_GetLayerVisibility. Export
   ordinal(s): 2258. Entry VA: 0x1098eae0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600015D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl SceneManWrap_GetLayerVisibility(void *param_1,uint param_2)

{
  uint uVar1;
  undefined4 local_4;
  
                    /* 0x98eae0  2258  SceneManWrap_GetLayerVisibility */
  if (0xf < param_2) {
    return false;
  }
  uVar1 = 0x10000 << ((byte)param_2 & 0x1f);
  if ((uVar1 & 0x7ffff000) == 0) {
    return false;
  }
  FUN_104de450(param_1,&local_4,&param_2);
  return (param_2 & uVar1) != 0;
}

