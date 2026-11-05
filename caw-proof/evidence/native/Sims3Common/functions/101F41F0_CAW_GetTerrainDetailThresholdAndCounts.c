/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Accepts detail index0/1, copies retained threshold from
   builder +54 with a12-byte stride and current optimizer leaf/split-derived counts from optimizer
   +18/+1C; returns zero counts when no optimizer exists. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

uint __thiscall CAW_GetTerrainDetailThresholdAndCounts(void *this,uint param_1,undefined4 *param_2)

{
  undefined3 uVar1;
  
  if (1 < param_1) {
    return param_1 & 0xffffff00;
  }
  *param_2 = *(undefined4 *)((int)this + (param_1 * 3 + 0x15) * 4);
  uVar1 = (undefined3)((uint)param_2 >> 8);
  if (*(int *)((int)this + 0x68) != 0) {
    param_2[1] = *(undefined4 *)(*(int *)((int)this + 0x68) + 0x18);
    param_2[2] = *(undefined4 *)(*(int *)((int)this + 0x68) + 0x1c);
    return CONCAT31(uVar1,1);
  }
  param_2[1] = 0;
  param_2[2] = 0;
  return CONCAT31(uVar1,1);
}

