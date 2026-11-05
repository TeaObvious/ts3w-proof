/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC1.67. Lot-map affine transform at record+0xa0 applied to float X/Z with
   homogeneous1 and Y0. Writes two float32 outputs; floor remains caller responsibility. GUID64
   packed atstack4/8; RET24. */

void __thiscall
LotRouteGraph_ApplyLotPositionMatrix
          (void *this,ulonglong lotId,float x,float z,float *outX,float *outZ)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  int iVar8;
  
  fVar7 = z;
  fVar6 = x;
  fVar5 = DAT_00f998f8;
  iVar8 = FUN_0062f2d0((void *)((int)this + 0x48),(uint *)&lotId);
  fVar1 = *(float *)(iVar8 + 0xb8);
  fVar2 = *(float *)(iVar8 + 0xa8);
  fVar3 = *(float *)(iVar8 + 200);
  fVar4 = *(float *)(iVar8 + 0xd8);
  *outX = *(float *)(iVar8 + 0xb0) * 0.0 + fVar6 * *(float *)(iVar8 + 0xa0) +
          fVar7 * *(float *)(iVar8 + 0xc0) + fVar5 * *(float *)(iVar8 + 0xd0);
  *outZ = fVar1 * 0.0 + fVar6 * fVar2 + fVar7 * fVar3 + fVar5 * fVar4;
  return;
}

