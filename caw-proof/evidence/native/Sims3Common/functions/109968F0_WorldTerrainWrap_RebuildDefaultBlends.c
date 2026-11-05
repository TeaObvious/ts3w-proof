/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_RebuildDefaultBlends. Export
   ordinal(s): 2584. Entry VA: 0x109968f0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B12. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_RebuildDefaultBlends(int param_1)

{
  int iVar1;
  void *this;
  
                    /* 0x9968f0  2584  WorldTerrainWrap_RebuildDefaultBlends */
  if ((param_1 != 0) && (iVar1 = *(int *)(param_1 + 100), iVar1 != 0)) {
    this = (void *)FUN_106b6a50(iVar1);
    if ((this != (void *)0x0) && (*(char **)(iVar1 + 8) != (char *)0x0)) {
      FUN_101f2210(this,*(char **)(iVar1 + 8),iVar1);
      FUN_101f0490((int)this);
      return;
    }
  }
  return;
}

