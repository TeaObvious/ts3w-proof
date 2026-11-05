/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 billboard orientation contract. Returns borrowed
   embedded.rowPointer+(embedded.rowCount-1)*32, the final eight-float atlas row. No bounds guard, V
   modification, corner reorder or ownership transfer here; caller admission requires authored
   horizontal geometry. */

int __fastcall SpeedTree_GetHorizontalBillboardTextureRow(int param_1)

{
  return *(int *)(*(int *)(param_1 + 0x54) + 8) * 0x20 + -0x20 +
         *(int *)(*(int *)(param_1 + 0x54) + 0xc);
}

