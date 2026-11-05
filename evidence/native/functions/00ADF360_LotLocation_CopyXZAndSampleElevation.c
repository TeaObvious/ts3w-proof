/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX lot plus input/output pointers, RET0x08. Copy input X/Z into output,
   preserve fourth lane, sample AA0B90 level grid when lot+230 service exists else Y0. Third input
   lane contains raw signed level word from ADC720. Does not perform current lot-origin/rotation
   world transformation or certify arbitrary current proxy-flat-plane parity. Descriptive role, not
   recovered symbol. */

void __thiscall LotLocation_CopyXZAndSampleElevation(void *this,float *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float10 fVar5;
  
  fVar3 = param_2[1];
  fVar4 = param_2[3];
  fVar1 = *param_1;
  *param_2 = fVar1;
  param_2[1] = fVar3;
  param_2[2] = param_2[2];
  param_2[3] = fVar4;
  fVar2 = param_1[1];
  *param_2 = fVar1;
  param_2[1] = fVar3;
  param_2[2] = fVar2;
  param_2[3] = fVar4;
  if (*(void **)((int)this + 0x230) != (void *)0x0) {
    fVar5 = WallFloor_SampleLevelGridHeight(*(void **)((int)this + 0x230),param_1);
    *param_2 = *param_2;
    param_2[1] = (float)fVar5;
    param_2[2] = param_2[2];
    param_2[3] = param_2[3];
    return;
  }
  *param_2 = fVar1;
  param_2[1] = 0.0;
  param_2[2] = fVar2;
  param_2[3] = fVar4;
  return;
}

