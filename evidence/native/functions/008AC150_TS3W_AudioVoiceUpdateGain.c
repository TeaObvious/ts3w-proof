/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Reviewed native voice update and gain application. At 0x008AC3A4 evaluate the single embedded
   envelope at voice +0xA88 (unless voice byte +0xB0 bypasses it). Combine that factor with authored
   gain and two controlled gain scalars. Those controlled scalars can have separate rate-limited
   transitions; they are not a second authored start envelope. Remaining decompiler stack/ABI
   artifacts are preserved. */

void __fastcall TS3W_AudioVoiceUpdateGain(int *voiceFields)

{
  char cVar1;
  int *piVar2;
  float *pfVar3;
  undefined4 unaff_EBX;
  float10 fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float unaff_retaddr;
  undefined4 uVar9;
  int iVar10;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  float fStack_40;
  float **ppfStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float *pfStack_28;
  int iStack_18;
  float fStack_c;
  float fStack_8;
  undefined4 uStack_4;

  pfVar3 = (float *)(voiceFields + 0xce);
  pfStack_28 = pfVar3;
  cVar1 = (**(code **)(*(int *)voiceFields[0x16] + 0x38))();
  if (cVar1 == '\0') {
    *pfVar3 = *pfVar3 + unaff_retaddr;
  }
  uStack_34 = 1;
  fStack_38 = -NAN;
  ppfStack_3c = (float **)0x8ac18d;
  (**(code **)(*voiceFields + 0x20))();
  ppfStack_3c = (float **)uStack_4;
  fStack_40 = 1.2742761e-38;
  (**(code **)(*voiceFields + 0x8c))();
  if ((char)uStack_4 != '\0') {
    fStack_40 = 1.2742792e-38;
    (**(code **)(*voiceFields + 100))();
  }
  if ((((voiceFields[0x2b7] & 0x400U) != 0) && (-1 < (char)voiceFields[0x2b7])) &&
     ((float)voiceFields[0x2b2] <= (float)voiceFields[0xcc])) {
    ppfStack_3c = (float **)0x0;
    fStack_40 = 0.0;
    uStack_44 = 0x8ac1ea;
    (**(code **)(*voiceFields + 0x98))();
  }
  if ((((char)voiceFields[0x2b3] != '\0') && ((*(byte *)(voiceFields + 0x2b7) & 0x80) == 0)) &&
     ((int *)voiceFields[0x16] != (int *)0x0)) {
    ppfStack_3c = (float **)&fStack_8;
    fStack_40 = -2.2043163e+11;
    uStack_44 = 0x8ac214;
    cVar1 = (**(code **)(*(int *)voiceFields[0x16] + 0x38))();
    if (cVar1 != '\0') {
      ppfStack_3c = &pfStack_28;
      fStack_40 = -6.482883e+24;
      uStack_44 = 0x8ac22d;
      (**(code **)(voiceFields[1] + 0x10))();
      if (fStack_8 <= (float)pfStack_28) {
        fVar5 = 0.0;
      }
      else {
        fVar5 = fStack_8 - (float)pfStack_28;
      }
      if (fVar5 <= *pfVar3) {
        ppfStack_3c = (float **)0x0;
        fStack_40 = 0.0;
        uStack_44 = 0x8ac260;
        (**(code **)(*voiceFields + 0x98))();
      }
    }
  }
  fVar5 = (float)voiceFields[0x61d];
  if (fVar5 != (float)voiceFields[0x61c]) {
    fStack_8 = (float)voiceFields[0x61c] - fVar5;
    if (fStack_8 < 0.0) {
      fVar7 = -1.0;
    }
    else {
      fVar7 = 1.0;
    }
    fStack_8 = ABS(fStack_8);
    fVar8 = (float)voiceFields[0x61e] * fStack_c;
    if (fStack_8 < (float)voiceFields[0x61e] * fStack_c) {
      fVar8 = fStack_8;
    }
    voiceFields[0x61d] = (int)(fVar8 * fVar7 + fVar5);
  }
  if ((((voiceFields[0x2b7] & 0x800U) != 0) && ((float)voiceFields[0x61d] == 0.0)) &&
     (voiceFields[0x16] != 0)) {
    voiceFields[0x2b7] = voiceFields[0x2b7] & 0xfffff7ff;
    ppfStack_3c = (float **)0x1;
    fStack_40 = 1.274328e-38;
    (**(code **)(*(int *)voiceFields[0x16] + 0x1c))();
  }
  fVar7 = 1.0;
  fVar5 = (float)voiceFields[0x620];
  if ((fVar5 != (float)voiceFields[0x61f]) && (fVar5 != (float)voiceFields[0x61f])) {
    fStack_8 = (float)voiceFields[0x61f] - fVar5;
    if (fStack_8 < 0.0) {
      fVar8 = -1.0;
    }
    else {
      fVar8 = 1.0;
    }
    fStack_8 = ABS(fStack_8);
    fVar6 = (float)voiceFields[0x621] * fStack_c;
    if (fStack_8 < (float)voiceFields[0x621] * fStack_c) {
      fVar6 = fStack_8;
    }
    voiceFields[0x620] = (int)(fVar6 * fVar8 + fVar5);
  }
  if ((char)voiceFields[0x2c] == '\0') {
                    /* Select embedded voice envelope at +0xA88; call evaluator at 0x008AC3AA. */
    ppfStack_3c = (float **)0x8ac3af;
    fVar4 = TS3W_AudioEnvelopeValue((float)(voiceFields + 0x2a2));
    fVar7 = (float)fVar4;
  }
  ppfStack_3c = (float **)voiceFields[0x1e];
  fStack_8 = (float)voiceFields[0x620] * (float)voiceFields[0x61d] * (float)ppfStack_3c * fVar7;
  if (((*(byte *)(voiceFields + 0x34) & 8) != 0) && (*(byte *)(voiceFields + 0x34) != 0xf))
  goto LAB_008ac48d;
  fStack_40 = 1.2743621e-38;
  pfStack_28 = (float *)ppfStack_3c;
  cVar1 = (**(code **)(*voiceFields + 0xa0))();
  if (cVar1 == '\0') {
    ppfStack_3c = (float **)0x0;
    fStack_40 = 2.8026e-45;
    uStack_44 = 0x8ac46e;
    cVar1 = (**(code **)(*voiceFields + 0x20))();
    if (cVar1 == '\0') goto LAB_008ac48d;
    fStack_48 = 0.0;
  }
  else {
    if ((*(char *)((int)voiceFields + 0xad) == '\0') &&
       (*(char *)((int)voiceFields + 0xacd) == '\0')) {
      if (((char)voiceFields[0x2c] == '\0') || ((*(byte *)(voiceFields + 0x2b7) & 0x20) != 0)) {
        ppfStack_3c = (float **)0x0;
        fStack_40 = 4.2039e-45;
        uStack_44 = 0x8ac45f;
        (**(code **)(*voiceFields + 0x98))();
      }
      goto LAB_008ac48d;
    }
    ppfStack_3c = (float **)0x0;
    fStack_40 = 2.8026e-45;
    uStack_44 = 0x8ac42b;
    cVar1 = (**(code **)(*voiceFields + 0x20))();
    if (cVar1 != '\0') goto LAB_008ac48d;
    fStack_48 = 1.4013e-45;
  }
  ppfStack_3c = (float **)0x1;
  fStack_40 = 0.0;
  uStack_44 = 2;
  fStack_4c = 1.2743799e-38;
  (**(code **)(*voiceFields + 0x1c))();
LAB_008ac48d:
  if (((int *)voiceFields[0x16] != (int *)0x0) && ((char)((uint)unaff_EBX >> 0x18) == '\0')) {
    pfVar3 = (float *)voiceFields[0x1f];
    pfStack_28 = pfVar3;
    if (fStack_8 != (float)pfVar3) {
      fVar5 = (float)voiceFields[0x1d];
      if ((0.0 < fVar5) && (0.0 <= (float)pfVar3)) {
        pfStack_28 = (float *)(fStack_8 - (float)pfVar3);
        if (fVar5 < ABS((float)pfStack_28)) {
          fStack_8 = ((float)pfStack_28 / ABS((float)pfStack_28)) * fVar5 + (float)pfVar3;
        }
      }
      ppfStack_3c = (float **)0x1;
      fStack_40 = fStack_8;
      uStack_44 = 0x25df0108;
      fStack_48 = 1.274401e-38;
      (**(code **)(*(int *)voiceFields[0x16] + 0x34))();
    }
    voiceFields[0x1f] = (int)fStack_8;
    if ((*(char *)((int)voiceFields + 0xae) != '\0') && ((char)voiceFields[0x34] == '\x0f')) {
      ppfStack_3c = (float **)0x1;
      if ((char)voiceFields[0x2c] == '\0') {
        fStack_40 = (float)voiceFields[0x2e];
        uStack_44 = 0x50c5d67;
        fStack_48 = 1.274424e-38;
        (**(code **)(*(int *)voiceFields[0x16] + 0x34))();
        fStack_4c = (float)voiceFields[0x2f];
        fStack_48 = 1.4013e-45;
        fStack_50 = 6.599923e-36;
        fStack_54 = 1.2744278e-38;
        (**(code **)(*(int *)voiceFields[0x16] + 0x34))();
        iVar10 = voiceFields[0x30];
        piVar2 = (int *)voiceFields[0x16];
        uVar9 = 0x50c5d65;
      }
      else {
        fStack_40 = (float)voiceFields[0x35];
        uStack_44 = 0x50c5d67;
        fStack_48 = 1.2744112e-38;
        (**(code **)(*(int *)voiceFields[0x16] + 0x34))();
        fStack_4c = (float)voiceFields[0x36];
        fStack_48 = 1.4013e-45;
        fStack_50 = 6.599923e-36;
        fStack_54 = 1.274415e-38;
        (**(code **)(*(int *)voiceFields[0x16] + 0x34))();
        fStack_54 = 1.4013e-45;
        (**(code **)(*(int *)voiceFields[0x16] + 0x34))(0x50c5d65,voiceFields[0x37]);
        iVar10 = voiceFields[0x3a];
        piVar2 = (int *)voiceFields[0x16];
        uVar9 = 0x26341ede;
      }
      (**(code **)(*piVar2 + 0x34))(uVar9,iVar10,1);
      fStack_38 = 96000.0;
      if (1 < voiceFields[0x626]) {
        fVar4 = AudioCurve_EvaluateLinear(voiceFields + 0x2b8,(float)voiceFields[0x17]);
        fStack_54 = (float)fVar4;
        pfVar3 = &fStack_54;
        if ((float10)(float)voiceFields[0x23] <= fVar4) {
          pfVar3 = (float *)(voiceFields + 0x23);
        }
        fStack_38 = *pfVar3;
        fVar4 = AudioCurve_EvaluateLinear(voiceFields + 0x390,(float)voiceFields[0x17]);
        fStack_54 = (float)fVar4;
        fVar4 = AudioCurve_EvaluateLinear(voiceFields + 0x468,(float)voiceFields[0x17]);
        fStack_54 = (float)fVar4;
        if ((voiceFields[0x2b7] & 0x4000U) != 0) {
          piVar2 = (int *)FUN_008afe00();
          pfVar3 = (float *)(**(code **)(*piVar2 + 0x90))(voiceFields[0x2d]);
          fVar5 = pfVar3[1];
          fVar7 = pfVar3[2];
          fStack_50 = (*pfVar3 - (float)voiceFields[0x2e]) - (float)voiceFields[0x31];
          fStack_4c = (fVar5 - (float)voiceFields[0x2f]) - (float)voiceFields[0x32];
          fStack_48 = (fVar7 - (float)voiceFields[0x30]) - (float)voiceFields[0x33];
          voiceFields[0x31] = (int)(*pfVar3 - (float)voiceFields[0x2e]);
          voiceFields[0x32] = (int)(fVar5 - (float)voiceFields[0x2f]);
          voiceFields[0x33] = (int)(fVar7 - (float)voiceFields[0x30]);
          fVar5 = (float)voiceFields[0x28] * 0.9 +
                  (SQRT(fStack_50 * fStack_50 + fStack_4c * fStack_4c + fStack_48 * fStack_48) /
                  (float)ppfStack_3c) * 0.1;
          voiceFields[0x28] = (int)fVar5;
          if (0.0 <= fVar5) {
            ppfStack_3c = (float **)0x3f800000;
          }
          else {
            ppfStack_3c = (float **)0xbf800000;
          }
          fVar4 = AudioCurve_EvaluateLinear(voiceFields + 0x540,ABS(fVar5));
          voiceFields[0x25] = (int)(float)(fVar4 * (float10)(float)ppfStack_3c + (float10)1.0);
        }
      }
      fVar5 = fStack_38;
      (**(code **)(*(int *)voiceFields[0x16] + 0x34))(0x647a7836,fStack_38,1);
      (**(code **)(*(int *)voiceFields[0x16] + 0x34))(0xa26a765f,uVar9,1);
      (**(code **)(*(int *)voiceFields[0x16] + 0x34))(0x49eb68db,fVar5,1);
      *(undefined1 *)((int)voiceFields + 0xae) = 0;
    }
    if ((float)voiceFields[0x27] != (float)voiceFields[0x29]) {
      fStack_40 = (float)voiceFields[0x26] * (float)voiceFields[0x25] * (float)voiceFields[0x27];
      ppfStack_3c = (float **)0x1;
      uStack_44 = 0x71bc3009;
      fStack_48 = 1.2745205e-38;
      (**(code **)(*(int *)voiceFields[0x16] + 0x34))();
      voiceFields[0x29] = iStack_18;
    }
  }
  return;
}

