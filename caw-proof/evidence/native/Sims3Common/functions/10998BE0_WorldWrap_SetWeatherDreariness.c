/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetWeatherDreariness. Export
   ordinal(s): 2711. Entry VA: 0x10998be0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004D5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldWrap_SetWeatherDreariness(int param_1,float param_2)

{
  void *this;
  
                    /* 0x998be0  2711  WorldWrap_SetWeatherDreariness */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x74) != 0)) {
    this = (void *)FUN_10342370(*(int *)(param_1 + 0x74));
    if (this != (void *)0x0) {
      FUN_101e4400(this,param_2);
    }
  }
  return;
}

