/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_RemovePaintingLayer. Export
   ordinal(s): 2587. Entry VA: 0x109969a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000B16. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldTerrainWrap_RemovePaintingLayer(int param_1,byte param_2)

{
  void *this;
  void *this_00;
  undefined4 uVar1;
  
                    /* 0x9969a0  2587  WorldTerrainWrap_RemovePaintingLayer */
  if ((((param_1 != 0) && (this = *(void **)(param_1 + 100), this != (void *)0x0)) &&
      (this_00 = (void *)FUN_106b6a50((int)this), this_00 != (void *)0x0)) &&
     (uVar1 = FUN_101f20f0(this_00,param_2), (char)uVar1 != '\0')) {
    FUN_101fc7b0(this,(uint)param_2);
    FUN_101f0530((int)this_00);
    return;
  }
  return;
}

