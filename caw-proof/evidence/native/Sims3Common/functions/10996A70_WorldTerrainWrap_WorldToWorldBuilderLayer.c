/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_WorldToWorldBuilderLayer. Export
   ordinal(s): 2602. Entry VA: 0x10996a70. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B1C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl WorldTerrainWrap_WorldToWorldBuilderLayer(int param_1,byte param_2,byte param_3)

{
  void *this;
  uint uVar1;
  
                    /* 0x996a70  2602  WorldTerrainWrap_WorldToWorldBuilderLayer */
  if ((param_1 != 0) && (*(int *)(param_1 + 100) != 0)) {
    this = (void *)FUN_106b6a50(*(int *)(param_1 + 100));
    if (this != (void *)0x0) {
      uVar1 = FUN_101f1f90(this,param_2,param_3);
      return (char)uVar1 != '\0';
    }
  }
  return false;
}

