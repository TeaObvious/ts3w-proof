/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX lot. WorldWater_GetSeaLevel when
   world global exists, then subtract lot transform originY using native floating-point return.
   Decompiler fStack_28 appears uninitialized because the vector/return ABI alias is not fully
   recovered; do not use it as literal undefined-input behavior. Relevant consumer AEC260 rounds the
   result to binary32. */

float10 __fastcall Lot_GetLocalSeaLevel(int *param_1)

{
  int iVar1;
  float fStack_28;
  undefined1 local_20 [28];
  
  if (DAT_011edbc4 != 0) {
    WorldWater_GetSeaLevel(DAT_011edbc4);
  }
  iVar1 = (**(code **)(*param_1 + 100))(local_20);
  return (float10)(fStack_28 - *(float *)(iVar1 + 4));
}

