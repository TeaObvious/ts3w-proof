/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetTerrainNormal. Export ordinal(s):
   2658. Entry VA: 0x10999cb0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004E2. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: WorldWrap_GetTerrainNormal delegates the bounded
   query0x1023F270; an out-of-world request retains upward normal. In-world terrain normals come
   from collision-hit data. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

void __cdecl
WorldWrap_GetTerrainNormal(void *param_1,float param_2,float param_3,undefined4 *param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 *puVar3;
  undefined4 local_20 [7];
  
                    /* 0x999cb0  2658  WorldWrap_GetTerrainNormal */
  puVar3 = CAW_WorldQueryTerrainNormal(param_1,local_20,param_2,param_3);
  uVar1 = puVar3[1];
  uVar2 = puVar3[2];
  *param_4 = *puVar3;
  param_4[1] = uVar1;
  param_4[2] = uVar2;
  return;
}

