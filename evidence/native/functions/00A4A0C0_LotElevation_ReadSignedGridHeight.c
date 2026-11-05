/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Physical ECX elevation owner plus1stackDWORD pointer/RET4,
   x87ST0 return. MOVSX each packed x,z,level byte; index ((level-owner.min)*dimX+x)*dimZ+z then FLD
   binary32. No bounds validation/null/default is added by this body. Stored metadata lists receiver
   as param1; physical ABI governs. */

float10 __thiscall LotElevation_ReadSignedGridHeight(void *param_1,char *param_2)

{
  int iVar1;
  
  iVar1 = *(int *)((int)param_1 + 0x78);
  return (float10)*(float *)(*(int *)(iVar1 + 0x10) +
                            ((((int)param_2[2] - *(int *)((int)param_1 + 0xc)) * *(int *)(iVar1 + 4)
                             + (int)*param_2) * *(int *)(iVar1 + 8) + (int)param_2[1]) * 4);
}

