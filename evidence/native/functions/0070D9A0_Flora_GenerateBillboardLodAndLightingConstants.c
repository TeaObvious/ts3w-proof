/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX cluster, RET, no stack arguments. Distance record713100
   supplies (near,far,inverseSpan,cullNear,cullFar). b=far-2; q=(b==near?0:1/(b-near));
   width=2*SPT+20 via7B8B80; x=(width==0?0:(q/width)*1.5), y=1.5-x*b.
   z=(cullNear==cullFar?0:-1/(cullFar-cullNear)), w=0-z*cullFar. Separate SSE operations, not fused.
   Store (x,y,z,w) at+570; copy to+580 then replace x=0,y=1. Store
   lighting(1-adjustment,adjustment,0,0) at+590. Draw-context byte14 selects the distance pair
   independently of FSAA and RenderTreeAlphaEdges. */

void __fastcall Flora_GenerateBillboardLodAndLightingConstants(int param_1)

{
  undefined4 uVar1;
  float *pfVar2;
  float10 fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  
  pfVar2 = (float *)Flora_GetTreeTypeLodDistanceRecord
                              (PTR_DAT_0115c488,*(int *)(*(int *)(param_1 + 0x4b0) + 0x17c));
  fVar4 = pfVar2[1] - DAT_0103fd88;
  if (fVar4 == *pfVar2) {
    fVar5 = 0.0;
  }
  else {
    fVar5 = FLOAT_00f998f8 / (fVar4 - *pfVar2);
  }
  fVar3 = SpeedTree_GetBillboardTransitionWidth(*(int *)(*(int *)(param_1 + 0x4b0) + 0x34));
  if (fVar3 == (float10)0) {
    fVar5 = 0.0;
  }
  else {
    fVar5 = (fVar5 / (float)fVar3) * DAT_0103fd68;
  }
  fVar6 = DAT_0103fd68 - fVar5 * fVar4;
  fVar4 = pfVar2[4];
  if (pfVar2[3] == fVar4) {
    fVar7 = 0.0;
  }
  else {
    fVar7 = FLOAT_00fab218 / (fVar4 - pfVar2[3]);
  }
  fVar4 = FLOAT_00f998f0 - fVar7 * fVar4;
  *(float *)(param_1 + 0x570) = fVar5;
  *(float *)(param_1 + 0x574) = fVar6;
  *(float *)(param_1 + 0x578) = fVar7;
  *(float *)(param_1 + 0x57c) = fVar4;
  *(float *)(param_1 + 0x580) = fVar5;
  *(float *)(param_1 + 0x584) = fVar6;
  *(float *)(param_1 + 0x588) = fVar7;
  *(float *)(param_1 + 0x58c) = fVar4;
  *(undefined4 *)(param_1 + 0x580) = 0;
  *(undefined4 *)(param_1 + 0x584) = *(undefined4 *)(param_1 + 0x584);
  *(undefined4 *)(param_1 + 0x588) = *(undefined4 *)(param_1 + 0x588);
  *(undefined4 *)(param_1 + 0x58c) = *(undefined4 *)(param_1 + 0x58c);
  fVar4 = FLOAT_00f998f8;
  *(undefined4 *)(param_1 + 0x580) = *(undefined4 *)(param_1 + 0x580);
  *(float *)(param_1 + 0x584) = fVar4;
  *(undefined4 *)(param_1 + 0x588) = *(undefined4 *)(param_1 + 0x588);
  *(undefined4 *)(param_1 + 0x58c) = *(undefined4 *)(param_1 + 0x58c);
  fVar3 = SpeedTree_GetLeafLightingAdjustment(*(int *)(*(int *)(param_1 + 0x4b0) + 0x34));
  uVar1 = DAT_010f4ccc;
  *(float *)(param_1 + 0x590) = (float)((float10)1 - fVar3);
  *(float *)(param_1 + 0x594) = (float)fVar3;
  *(undefined4 *)(param_1 + 0x598) = uVar1;
  *(undefined4 *)(param_1 + 0x59c) = uVar1;
  return;
}

