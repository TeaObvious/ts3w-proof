/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Accepts detail index0/1, copies the corresponding retained
   per-chunk/global budget pair from builder +4C/+50 with a12-byte stride. Rejects indices above
   one. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

uint __thiscall CAW_GetTerrainDetailTriangleBudgets(void *this,uint param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  if (1 < param_1) {
    return param_1 & 0xffffff00;
  }
  *param_2 = *(undefined4 *)((int)this + param_1 * 0xc + 0x4c);
  uVar1 = *(undefined4 *)((int)this + param_1 * 0xc + 0x50);
  param_2[1] = uVar1;
  return CONCAT31((int3)((uint)uVar1 >> 8),1);
}

