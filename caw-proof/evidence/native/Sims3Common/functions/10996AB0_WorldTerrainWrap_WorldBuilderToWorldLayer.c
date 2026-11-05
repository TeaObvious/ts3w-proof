/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_WorldBuilderToWorldLayer. Export
   ordinal(s): 2601. Entry VA: 0x10996ab0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B1D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl WorldTerrainWrap_WorldBuilderToWorldLayer(int param_1,byte param_2,byte param_3)

{
  void *this;
  undefined4 uVar1;
  
                    /* 0x996ab0  2601  WorldTerrainWrap_WorldBuilderToWorldLayer */
  if ((param_1 != 0) && (*(int *)(param_1 + 100) != 0)) {
    this = (void *)FUN_106b6a50(*(int *)(param_1 + 100));
    if (this != (void *)0x0) {
      uVar1 = FUN_101f1fe0(this,param_2,param_3);
      return (char)uVar1 != '\0';
    }
  }
  return false;
}

