/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67: uses configured listener index +3C0 for full three-component attenuation
   distance, then listener 1 for projected panner angle/distance. Emits property 6EB7A717
   (pandistance) and CE78D695 (pansize, when channel count >1). Raw assembly governs axes because
   decompiled stack locals are inaccurate. Raw instruction proof:
   008A1290_AudioEmitter_UpdateSpatialProperties.asm. Reference
   original PC 1.67 TS3W.exe. */

undefined4 __fastcall AudioEmitter_UpdateSpatialProperties(int *param_1)

{
  float *pfVar1;
  int *piVar2;
  uint uVar3;
  float unaff_EBX;
  float unaff_ESI;
  float10 fVar4;
  float10 fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fStack_40;
  float local_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float local_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  float fStack_10;
  float fStack_c;
  float *pfStack_8;
  
  param_1[0x10a] = param_1[0x10a] & 0xffffffcf;
  param_1[0x10a] = param_1[0x10a] & 0xffffffbf;
  param_1[0x109] = param_1[0x109] & 0xffffffbf;
  piVar2 = (int *)FUN_008afe00();
  if (piVar2 != (int *)0x0) {
    fVar7 = (float)param_1[0xf0];
    (**(code **)(*piVar2 + 0x8c))();
    pfVar1 = pfStack_8;
    fVar8 = pfStack_8[1] - unaff_EBX;
    fVar9 = pfStack_8[2] - fStack_40;
    fVar6 = *pfStack_8 - unaff_ESI;
    local_3c = fStack_18 * fVar9 + local_24 * fVar8 + fStack_30 * fVar6;
    fStack_38 = fStack_14 * fVar9 + fStack_20 * fVar8 + fStack_2c * fVar6;
    fStack_34 = fStack_10 * fVar9 + fStack_1c * fVar8 + fStack_28 * fVar6;
    pfStack_8 = (float *)SQRT(local_3c * local_3c + fStack_38 * fStack_38 + fStack_34 * fStack_34);
    (**(code **)(*param_1 + 0x80))(pfStack_8);
    if ((param_1[0x109] & 0x100U) != 0) {
      fVar4 = (float10)(**(code **)(*param_1 + 0x50))
                                 (fStack_c,param_1[0xf9],param_1[0xfa],param_1[0xfb]);
      fStack_c = (float)fVar4;
      if ((float10)(float)param_1[0xfc] == fVar4) {
        param_1[0x10a] = param_1[0x10a] & 0xffffff7f;
      }
      else {
        param_1[0x10a] = param_1[0x10a] | 0x80;
      }
      param_1[0xfc] = (int)fStack_c;
    }
    (**(code **)(*piVar2 + 0x8c))(1,&stack0xffffffb4,&fStack_34);
    fVar4 = (float10)((pfVar1[1] - (float)&local_3c) * fStack_2c +
                      (pfVar1[2] - (float)&local_24) * fStack_20 + fStack_38 * (*pfVar1 - fVar7));
    fVar5 = (float10)((pfVar1[1] - (float)&local_3c) * fStack_34 +
                      (pfVar1[2] - (float)&local_24) * fStack_28 + (*pfVar1 - fVar7) * fStack_40);
    fStack_18 = (float)SQRT(fVar5 * fVar5 + fVar4 * fVar4);
    fVar4 = (float10)fpatan(fVar5,-fVar4);
    fVar7 = (float)fVar4;
    if (fVar4 < (float10)0) {
      fVar7 = DAT_0116a738 + fVar7;
    }
    FUN_008bfb40((void *)param_1[0xe0],0x4a77693a,fVar7 * _DAT_0103250c);
    fVar7 = DAT_00f998f8;
    if (fStack_18 < (float)param_1[0xfa]) {
      fVar7 = fStack_18 / (float)param_1[0xfa];
    }
    uVar3 = FUN_008bfb40((void *)param_1[0xe0],0x6eb7a717,fVar7);
    if (1 < param_1[0xeb]) {
      fVar7 = (float)param_1[0xfb];
      fVar6 = (float)param_1[0xfa];
      uVar3 = (uint)CONCAT21((short)(uVar3 >> 0x10),
                             (fVar7 == fVar6) << 6 | (NAN(fVar7) || NAN(fVar6)) << 2 | 2U |
                             fVar7 < fVar6) << 8;
      if (fVar7 != fVar6) {
        uVar3 = (int)(fVar6 - fStack_18) >> 0x1f;
        fVar8 = (float)(~uVar3 & (uint)fVar6 | (uint)fStack_18 & uVar3);
        uVar3 = (int)(fVar7 - fVar8) >> 0x1f;
        fStack_18 = (float)(~uVar3 & (uint)fVar8 | (uint)fVar7 & uVar3);
        uVar3 = FUN_008bfb40((void *)param_1[0xe0],-0x3187296b,
                             DAT_00f998f8 - (fStack_18 - fVar6) / (fVar7 - fVar6));
      }
    }
    return CONCAT31((int3)(uVar3 >> 8),1);
  }
  return 0;
}

