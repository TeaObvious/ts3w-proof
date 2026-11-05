/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX SpeedTree wrapper, output nineDWORD LOD record,float
   fraction sentinel-1,low-byte simplifiedLeafLod, RET0C. Uses currentLOD when input-1. Fullyvisible
   fraction>=1 setsbranch/frond indices0 and alpha fields to wrapper+48. Intermediate fractions
   choose signed LOD indices and alpha in same authored raw scale; leaf mode1 can return two indices
   and two crossfadealphas, mode3 selects0; mode and global11D962C affect lowLOD admission. Some
   alpha shaping uses x87 pow. No output alpha normalization to0..1 occurs here. Original body does
   not establish bit equality with CLR pow or a particular GPU alpha quantizer. */

void __thiscall
SpeedTree_ComputeLodIndicesAndAlpha
          (void *this,void *outLodRecord,float lodFraction,uchar simplifyLeafLod)

{
  undefined4 uVar1;
  float fVar2;
  int iVar3;
  uint uVar4;
  float10 fVar5;
  float10 fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  fVar8 = FLOAT_00f998f8;
  fVar7 = *(float *)((int)this + 0x20) * DAT_0103fd88;
  fVar11 = FLOAT_00f998f8 - *(float *)((int)this + 0x2c);
  fVar10 = fVar7 * fVar11;
  if (lodFraction == FLOAT_00fab218) {
    if (*(int *)((int)this + 0x38) == 0) {
      lodFraction = *(float *)(*(int *)this + 0x14);
    }
    else {
      lodFraction = *(float *)(*(int *)((int)this + 0x38) + 0x10);
    }
  }
  fVar9 = FLOAT_00f998f8 - lodFraction;
  *(undefined4 *)((int)outLodRecord + 0x20) = 0;
  if (0.0 < lodFraction) {
    if (lodFraction < fVar8) {
      *(int *)outLodRecord = (int)((float)*(int *)((int)this + 0xbc) * fVar9);
      *(int *)((int)outLodRecord + 8) = (int)((float)*(int *)((int)this + 0xc0) * fVar9);
      if ((DAT_011d962c != '\0') && (lodFraction < fVar10)) {
        fVar2 = *(float *)((int)this + 0x48);
        fVar5 = (float10)_CIpow();
        fVar8 = FLOAT_00f998f8;
        fVar7 = (FLOAT_00f998f8 - lodFraction / fVar7) * DAT_0103fd68;
        fVar5 = fVar5 * ((float10)DAT_010172f8 - (float10)fVar2) + (float10)fVar2;
        *(float *)((int)outLodRecord + 0x20) = fVar7;
        *(float *)((int)outLodRecord + 0xc) = (float)fVar5;
        *(float *)((int)outLodRecord + 4) = (float)fVar5;
        if (fVar8 < fVar7) {
          *(float *)((int)outLodRecord + 0x20) = fVar8;
        }
        goto LAB_007b8cae;
      }
    }
    else {
      *(undefined4 *)((int)outLodRecord + 8) = 0;
      *(undefined4 *)outLodRecord = 0;
    }
LAB_007b8c9f:
    uVar1 = *(undefined4 *)((int)this + 0x48);
    *(undefined4 *)((int)outLodRecord + 0xc) = uVar1;
    *(undefined4 *)((int)outLodRecord + 4) = uVar1;
  }
  else {
    if (DAT_011d962c == '\0') {
      *(int *)outLodRecord = *(int *)((int)this + 0xbc) + -1;
      *(int *)((int)outLodRecord + 8) = *(int *)((int)this + 0xc0) + -1;
      goto LAB_007b8c9f;
    }
    *(undefined4 *)((int)outLodRecord + 8) = 0xffffffff;
    *(undefined4 *)outLodRecord = 0xffffffff;
    *(float *)((int)outLodRecord + 0x20) = fVar8;
  }
LAB_007b8cae:
  fVar7 = DAT_010172f8;
  if (lodFraction <= 0.0) {
    if (DAT_011d962c == '\0') {
      iVar3 = *(int *)((int)this + 0xc4) + -1;
    }
    else {
      iVar3 = -1;
    }
    *(int *)((int)outLodRecord + 0x10) = iVar3;
    if (DAT_011d962c == '\0') {
      *(undefined4 *)((int)outLodRecord + 0x18) = *(undefined4 *)((int)this + 0x48);
      *(undefined4 *)((int)outLodRecord + 0x14) = 0xffffffff;
      return;
    }
    *(float *)((int)outLodRecord + 0x18) = DAT_010172f8;
    *(undefined4 *)((int)outLodRecord + 0x14) = 0xffffffff;
    return;
  }
  if (fVar8 <= lodFraction) {
    *(undefined4 *)((int)outLodRecord + 0x10) = 0;
    *(undefined4 *)((int)outLodRecord + 0x18) = *(undefined4 *)((int)this + 0x48);
    *(undefined4 *)((int)outLodRecord + 0x14) = 0xffffffff;
    return;
  }
  if (*(int *)((int)this + 0x1c) == 1) {
    if (DAT_011d962c == '\0') {
      fVar8 = *(float *)((int)this + 0xcc);
      fVar9 = *(float *)((int)this + 0xd4);
    }
    else {
      fVar8 = *(float *)((int)this + 0xd0);
      fVar9 = *(float *)((int)this + 0xd8);
    }
    *(undefined4 *)((int)outLodRecord + 0x14) = 0xffffffff;
    *(float *)((int)outLodRecord + 0x1c) = fVar7;
    if (DAT_011d962c != '\0') {
      if (lodFraction < fVar10) {
        fVar8 = *(float *)((int)this + 0x48);
        fVar5 = (float10)_CIpow();
        fVar6 = (float10)DAT_010172f8;
        fVar5 = fVar5 * (fVar6 - (float10)fVar8) + (float10)fVar8;
        *(float *)((int)outLodRecord + 0x18) = (float)fVar5;
        if (fVar5 == fVar6) {
          iVar3 = -1;
        }
        else {
          iVar3 = *(int *)((int)this + 0xc4) + -1;
        }
        *(int *)((int)outLodRecord + 0x10) = iVar3;
        if (simplifyLeafLod == '\0') {
          return;
        }
        if (iVar3 < 1) {
          return;
        }
        *(undefined4 *)((int)outLodRecord + 0x10) = 0;
        return;
      }
      lodFraction = lodFraction - *(float *)((int)this + 200);
    }
    uVar4 = (*(int *)((int)this + 0xc4) - (int)(lodFraction / fVar9)) - 1;
    fVar10 = lodFraction - (float)(int)(lodFraction / fVar9) * fVar9;
    uVar4 = ((int)uVar4 < 1) - 1 & uVar4;
    *(uint *)((int)outLodRecord + 0x10) = uVar4;
    fVar7 = *(float *)((int)this + 0x48);
    fVar5 = (float10)fVar7;
    if (fVar8 <= fVar10) {
      fVar8 = (fVar10 - fVar8) / *(float *)((int)this + 200);
      if (*(float *)((int)this + 0x2c) < fVar8) {
        fVar5 = (float10)_CIpow();
        fVar5 = fVar5 * ((float10)DAT_010172f8 - (float10)fVar7) + (float10)fVar7;
      }
      *(float *)((int)outLodRecord + 0x1c) = (float)fVar5;
      fVar7 = *(float *)((int)this + 0x48);
      fVar5 = (float10)fVar7;
      if (fVar8 < fVar11) {
        fVar6 = (float10)_CIpow();
        fVar5 = (float10)fVar7;
        fVar5 = fVar6 * ((float10)DAT_010172f8 - fVar5) + fVar5;
      }
      *(float *)((int)outLodRecord + 0x18) = (float)fVar5;
      *(uint *)((int)outLodRecord + 0x10) = uVar4 - 1;
      *(uint *)((int)outLodRecord + 0x14) = uVar4;
      if (simplifyLeafLod != '\0') {
        if (0 < (int)(uVar4 - 1)) {
          *(undefined4 *)((int)outLodRecord + 0x10) = 0;
        }
        if (0 < (int)uVar4) {
          *(undefined4 *)((int)outLodRecord + 0x14) = 0;
        }
        if ((*(int *)((int)outLodRecord + 0x10) == 0) && (*(int *)((int)outLodRecord + 0x14) == 0))
        {
          *(undefined4 *)((int)outLodRecord + 0x10) = 0;
          *(undefined4 *)((int)outLodRecord + 0x18) = *(undefined4 *)((int)this + 0x48);
          *(undefined4 *)((int)outLodRecord + 0x14) = 0xffffffff;
          return;
        }
      }
    }
    else {
      *(float *)((int)outLodRecord + 0x18) = fVar7;
      if ((simplifyLeafLod != '\0') && (0 < (int)uVar4)) {
        *(undefined4 *)((int)outLodRecord + 0x10) = 0;
      }
    }
    return;
  }
  if (*(int *)((int)this + 0x1c) != 3) {
    *(undefined4 *)((int)outLodRecord + 0x14) = 0xffffffff;
    iVar3 = (int)((float)*(int *)((int)this + 0xc4) * fVar9);
    *(int *)((int)outLodRecord + 0x10) = iVar3;
    if ((simplifyLeafLod == '\0') || (iVar3 < 1)) goto LAB_007b901b;
  }
  *(undefined4 *)((int)outLodRecord + 0x10) = 0;
LAB_007b901b:
  *(undefined4 *)((int)outLodRecord + 0x18) = *(undefined4 *)((int)this + 0x48);
  return;
}

