/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX lot owner; two aligned four-float input/output pointer stack arguments; RET8. Captures input
   before output. FSIN/FCOS use lot+1A0 and store binary32; FCHS separately negates the x87 sine
   before its store. Horizontal output is X=z*sin+(cos*x+originX), Z=x*negativeSin+(cos*z+originZ),
   using lot+190/+198. ADDPS adds origin to cosine products before cross products; all four lanes
   are written. Registered World_GetWorldPosition0078EE40 calls this after ADC750. Transcendental
   rounding/control state and nonhorizontal lane meaning require their own callers. */

void __thiscall Lot_LocalPositionToWorldVector(void *this,float *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float10 fVar8;
  float10 fVar9;
  float fVar10;
  float fVar11;
  
  fVar2 = *param_1;
  fVar3 = param_1[2];
  fVar4 = param_1[3];
  fVar8 = (float10)fsin((float10)*(float *)((int)this + 0x1a0));
  fVar9 = (float10)fcos((float10)*(float *)((int)this + 0x1a0));
  fVar1 = (float)fVar9;
  fVar10 = param_1[1] * DAT_010f4ccc;
  fVar11 = FLOAT_00f998f8 * param_1[1];
  fVar5 = *(float *)((int)this + 0x194);
  fVar6 = *(float *)((int)this + 0x198);
  fVar7 = *(float *)((int)this + 0x19c);
  *param_2 = fVar3 * (float)fVar8 + fVar1 * fVar2 + *(float *)((int)this + 400);
  param_2[1] = fVar10 + fVar11 + fVar5;
  param_2[2] = fVar2 * (float)-fVar8 + fVar1 * fVar3 + fVar6;
  param_2[3] = fVar2 * (float)fVar8 + fVar1 * fVar4 + fVar7;
  return;
}

