/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): Packed x/z/level bytes
   load with MOVSX; subtract base level, index original elevation storage. ADDSS opposite corners;
   COMISS sum00+11 against10+01; JBE selects0 including unordered. Returns full EAX1 only when
   sum00+11 > sum10+01, else0; RET4. This is equivalent to opposite-sum < for ordinary finite
   values; no epsilon/tie flip. */

undefined4 __thiscall FloorElevation_SelectCellDiagonal(void *this,char *param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar3 = *(int *)((int)this + 0x78);
  iVar1 = *(int *)(iVar3 + 0x10);
  iVar2 = (((int)param_1[2] - *(int *)((int)this + 0xc)) * *(int *)(iVar3 + 4) + (int)*param_1) *
          *(int *)(iVar3 + 8) + (int)param_1[1];
  iVar3 = *(int *)(iVar3 + 8) + iVar2;
  if (*(float *)(iVar1 + iVar3 * 4) + *(float *)(iVar1 + 4 + iVar2 * 4) <
      *(float *)(iVar1 + 4 + iVar3 * 4) + *(float *)(iVar1 + iVar2 * 4)) {
    return 1;
  }
  return 0;
}

