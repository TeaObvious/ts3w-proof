/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: direct stored level-height vertex read. Reads signed X/Z/level bytes, subtracts the
   height object's minimum level, indexes the grid and loads one float into x87 ST0. 00a8c690 uses
   this fast path when fractional local X/Z are each below 0.001; no bounds check is present in this
   leaf. */

float10 __thiscall LotLevelHeight_ReadVertex(void *param_1,char *param_2)

{
  int iVar1;
  
  iVar1 = *(int *)((int)param_1 + 0x24);
  return (float10)*(float *)(*(int *)(iVar1 + 0x10) +
                            ((((int)param_2[2] - *(int *)((int)param_1 + 0x10)) *
                              *(int *)(iVar1 + 4) + (int)*param_2) * *(int *)(iVar1 + 8) +
                            (int)param_2[1]) * 4);
}

