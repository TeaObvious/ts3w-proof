/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SceneManWrap_SetLayerVisibility. Export
   ordinal(s): 2281. Entry VA: 0x1098eb30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600015E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SceneManWrap_SetLayerVisibility(void *param_1,uint param_2,int param_3)

{
  uint uVar1;
  undefined4 local_4;
  
                    /* 0x98eb30  2281  SceneManWrap_SetLayerVisibility */
  if ((param_2 < 0x10) && (uVar1 = 0x10000 << ((byte)param_2 & 0x1f), (uVar1 & 0x7ffff000) != 0)) {
    FUN_104de450(param_1,&local_4,&param_2);
    if (param_3 != 0) {
      param_2 = param_2 | uVar1;
      FUN_104de470(param_1,local_4,param_2);
      return;
    }
    param_2 = param_2 & ~uVar1;
    FUN_104de470(param_1,local_4,param_2);
  }
  return;
}

