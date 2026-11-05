/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldTerrainWrap_Update. Export ordinal(s): 2598.
   Entry VA: 0x10996af0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000AE9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldTerrainWrap_Update(void *param_1,float param_2,undefined4 param_3)

{
  float local_20 [3];
  float fStack_14;
  
                    /* 0x996af0  2598  WorldTerrainWrap_Update */
  local_20[0] = param_2;
  local_20[1] = 0.0;
  local_20[2] = (float)param_3;
  fStack_14 = param_2;
  FUN_1025a0b0(param_1,local_20,'\0');
  return;
}

