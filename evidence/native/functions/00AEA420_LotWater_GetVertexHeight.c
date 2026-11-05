/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX terrain plus
   twoInt32coordinates, RET8/x87ST0. Out-of-inclusive-lot bounds FLDZ; inbounds readC8water x-major
   index x*stride+z. Complete66B23Listing; no interpolation/repair is proposed. Original managed
   LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical
   ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache
   policy is preserved. */

float10 __thiscall LotWater_GetVertexHeight(void *param_1,int param_2,int param_3)

{
  if ((((-1 < param_2) && (param_2 <= *(int *)(*(int *)((int)param_1 + 4) + 0x174))) &&
      (-1 < param_3)) && (param_3 <= *(int *)(*(int *)((int)param_1 + 4) + 0x178))) {
    return (float10)*(float *)(*(int *)(*(int *)((int)param_1 + 200) + 0xc) +
                              (*(int *)(*(int *)((int)param_1 + 200) + 8) * param_2 + param_3) * 4);
  }
  return (float10)0;
}

