/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Builds the original zero-to-one clip-depth matrix at
   camera+0x70 using near+0x1C/far+0x20. Perspective M33=f/(n-f),M34=-1,M43=n*f/(n-f); orthographic
   M33=-1/(f-n),M43=-n/(f-n). Renderer-specific minus-one-to-one conversion is not part of this
   producer. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

void __fastcall CAW_CameraBuildNativeProjection(int param_1)

{
  float fVar1;
  float fVar2;
  float *pfVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float local_40;
  float local_3c [14];
  
  fVar2 = _DAT_10aadffc;
  fVar4 = *(float *)(param_1 + 0xc) * DAT_10aae2c0 + *(float *)(param_1 + 0x1f0);
  fVar5 = *(float *)(param_1 + 0x10) * DAT_10aae2c0 + *(float *)(param_1 + 500);
  fVar10 = *(float *)(param_1 + 0x260) * *(float *)(param_1 + 0xc) + fVar4;
  fVar4 = *(float *)(param_1 + 0x268) * *(float *)(param_1 + 0xc) + fVar4;
  fVar6 = *(float *)(param_1 + 0x264) * *(float *)(param_1 + 0x10) + fVar5;
  fVar5 = *(float *)(param_1 + 0x26c) * *(float *)(param_1 + 0x10) + fVar5;
  if (*(int *)(param_1 + 8) == 0) {
    fVar1 = *(float *)(param_1 + 0x20);
    fVar8 = *(float *)(param_1 + 0x1c) - fVar1;
    *(float *)(param_1 + 0x70) = _DAT_10aadffc / (fVar4 - fVar10);
    *(undefined4 *)(param_1 + 0x74) = 0;
    *(undefined4 *)(param_1 + 0x78) = 0;
    *(undefined4 *)(param_1 + 0x7c) = 0;
    *(undefined4 *)(param_1 + 0x80) = 0;
    *(float *)(param_1 + 0x84) = fVar2 / (fVar6 - fVar5);
    *(undefined4 *)(param_1 + 0x88) = 0;
    *(undefined4 *)(param_1 + 0x8c) = 0;
    fVar2 = DAT_10aae184;
    fVar5 = DAT_10aae188 - (fVar6 + fVar5) / (fVar5 - fVar6);
    *(float *)(param_1 + 0x90) = (fVar4 + fVar10) / (fVar4 - fVar10);
    *(float *)(param_1 + 0x94) = fVar5;
    *(float *)(param_1 + 0x98) = fVar1 / fVar8;
    *(float *)(param_1 + 0x9c) = fVar2;
    *(undefined4 *)(param_1 + 0xa0) = 0;
    *(undefined4 *)(param_1 + 0xa4) = 0;
    *(float *)(param_1 + 0xa8) = (fVar1 * *(float *)(param_1 + 0x1c)) / fVar8;
    *(undefined4 *)(param_1 + 0xac) = 0;
    return;
  }
  local_3c[0] = DAT_10abf094;
  local_40 = fVar4 - fVar10;
  pfVar3 = local_3c;
  if (DAT_10abf094 <= fVar4 - fVar10) {
    pfVar3 = &local_40;
  }
  fVar2 = *pfVar3;
  local_40 = fVar6 - fVar5;
  pfVar3 = local_3c;
  if (DAT_10abf094 <= fVar6 - fVar5) {
    pfVar3 = &local_40;
  }
  fVar1 = *pfVar3;
  local_40 = *(float *)(param_1 + 0x20) - *(float *)(param_1 + 0x1c);
  pfVar3 = local_3c;
  if (DAT_10abf094 <= local_40) {
    pfVar3 = &local_40;
  }
  fVar9 = DAT_10acb0d4 / *pfVar3;
  fVar7 = DAT_10aae188 - fVar9 * *(float *)(param_1 + 0x1c);
  *(float *)(param_1 + 0x70) = _DAT_10aadffc / fVar2;
  *(undefined4 *)(param_1 + 0x74) = 0;
  *(undefined4 *)(param_1 + 0x78) = 0;
  *(undefined4 *)(param_1 + 0x7c) = 0;
  fVar8 = _DAT_10aadffc / fVar1;
  *(undefined4 *)(param_1 + 0x80) = 0;
  *(float *)(param_1 + 0x84) = fVar8;
  *(undefined4 *)(param_1 + 0x88) = 0;
  *(undefined4 *)(param_1 + 0x8c) = 0;
  fVar8 = DAT_10aae184;
  fVar9 = fVar9 * DAT_10aae184;
  *(undefined4 *)(param_1 + 0x90) = 0;
  *(undefined4 *)(param_1 + 0x94) = 0;
  *(float *)(param_1 + 0x98) = fVar9;
  *(undefined4 *)(param_1 + 0x9c) = 0;
  fVar9 = DAT_10acb0d4;
  *(float *)(param_1 + 0xa0) = (fVar4 + fVar10) * (fVar8 / fVar2);
  *(float *)(param_1 + 0xa4) = (fVar6 + fVar5) * (fVar8 / fVar1);
  *(float *)(param_1 + 0xa8) = fVar7;
  *(float *)(param_1 + 0xac) = fVar9;
  return;
}

