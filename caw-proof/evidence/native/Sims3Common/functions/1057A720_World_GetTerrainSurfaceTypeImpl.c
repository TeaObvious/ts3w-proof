/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetTerrainSurfaceTypeImpl. Export
   ordinal(s): 1384. Entry VA: 0x1057a720. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000BA3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl World_GetTerrainSurfaceTypeImpl(float param_1,float param_2,int param_3)

{
  uint uVar1;
  
                    /* 0x57a720  1384  World_GetTerrainSurfaceTypeImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    uVar1 = FUN_10240a10(DAT_10c700c4,param_1,param_2,param_3,0xffff);
    return uVar1;
  }
  return 0;
}

