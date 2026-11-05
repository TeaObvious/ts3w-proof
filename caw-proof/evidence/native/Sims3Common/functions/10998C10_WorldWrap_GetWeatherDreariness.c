/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetWeatherDreariness. Export
   ordinal(s): 2663. Entry VA: 0x10998c10. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004D6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl WorldWrap_GetWeatherDreariness(int param_1)

{
  int iVar1;
  float10 fVar2;
  
                    /* 0x998c10  2663  WorldWrap_GetWeatherDreariness */
  if ((param_1 != 0) && (*(int *)(param_1 + 0x74) != 0)) {
    iVar1 = FUN_10342370(*(int *)(param_1 + 0x74));
    if (iVar1 != 0) {
      fVar2 = FUN_101e4430(iVar1);
      return fVar2;
    }
  }
  return (float10)0;
}

