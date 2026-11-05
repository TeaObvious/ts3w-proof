/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Four stack words, RET10hex; first lot word unused here, dx at+8, dz at+C, float output
   pointer+10. AL0 writes0 for absolute-sum<or unordered against .01. FPATAN(-dz,dx), adds
   float3FC90FDC, storesFloat32; extended sum<0 then ADDSS40C90FDC to stored value. Ambient x87
   precision/control remains inherited. */

undefined4
ObjectTool_DirectionToRawYaw(undefined4 param_1,float param_2,float param_3,float *param_4)

{
  uint in_EAX;
  float10 fVar1;
  float fVar2;
  
  if ((float10)_DAT_0106e6ec <= ABS((float10)param_3) + ABS((float10)param_2)) {
    fVar1 = (float10)fpatan(-(float10)param_3,(float10)param_2);
    fVar2 = (float)(fVar1 + (float10)_DAT_0108402c);
    if (fVar1 + (float10)_DAT_0108402c < (float10)0) {
      fVar2 = fVar2 + DAT_01084028;
    }
    *param_4 = fVar2;
    return CONCAT31((int3)((uint)param_4 >> 8),1);
  }
  *param_4 = 0.0;
  return in_EAX & 0xffffff00;
}

