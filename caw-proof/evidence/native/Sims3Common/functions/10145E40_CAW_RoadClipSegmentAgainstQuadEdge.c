/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Uses stored outcode bits to classify the two segment
   endpoints. Entering appends edge intersection then current endpoint; inside-inside appends
   current endpoint; leaving appends only edge intersection; outside-outside appends nothing.
   Intersection outcodes are recomputed against the entire quad by0x10141150. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

void __cdecl
CAW_RoadClipSegmentAgainstQuadEdge
          (undefined4 *param_1,float *param_2,float *param_3,float *param_4,float *param_5,
          float *param_6,void *param_7)

{
  bool bVar1;
  float local_60;
  undefined4 uStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50 [2];
  undefined4 uStack_48;
  char local_30 [44];
  
  bVar1 = (*(byte *)(param_6 + 8) & (byte)*param_1) == 0;
  if ((*(byte *)(param_5 + 8) & (byte)*param_1) != 0) {
    if (bVar1) {
      CAW_RoadIntersectEdgeAndClipSegment(param_3,param_4,param_5,param_6,local_50);
      local_60 = local_50[0];
      uStack_5c = uStack_48;
      fStack_58 = local_50[0];
      fStack_54 = local_50[0];
      CAW_RoadQuadPointOutcode(param_2,&local_60,local_30);
      FUN_1013e3d0(param_7,local_50);
      FUN_1013e3d0(param_7,param_6);
    }
    return;
  }
  if (bVar1) {
    FUN_1013e3d0(param_7,param_6);
    return;
  }
  CAW_RoadIntersectEdgeAndClipSegment(param_3,param_4,param_5,param_6,local_50);
  local_60 = local_50[0];
  uStack_5c = uStack_48;
  fStack_58 = local_50[0];
  fStack_54 = local_50[0];
  CAW_RoadQuadPointOutcode(param_2,&local_60,local_30);
  FUN_1013e3d0(param_7,local_50);
  return;
}

