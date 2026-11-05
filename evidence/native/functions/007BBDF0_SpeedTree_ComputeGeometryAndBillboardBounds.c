/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 billboard orientation contract. Guard wrapper+E0 prevents second Compute. The
   selected billboard tail computes width from maximum XZ corner radius using the original bit-level
   fast square root. Horizontal corners at+6C are
   (maxX,middleY,maxZ),(minX,middleY,maxZ),(minX,middleY,minZ),(maxX,middleY,minZ). X uses two SUBSS
   from the same zero, preserving its signed value; it is not negated. middleY=(maxY+minY)*0.5. This
   entry also performs broader tree generation/optional transforms; no claim all arithmetic or its
   decompiler-inferred ABI is fully reconstructed. */

undefined1 __fastcall
SpeedTree_ComputeGeometryAndBillboardBounds
          (int *param_1,int param_2,float *param_3,int param_4,char param_5)

{
  undefined4 *puVar1;
  char cVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  float *pfVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  float local_40 [16];
  
  if ((char)param_1[0x38] != '\0') {
    FUN_007ba7b0("Compute() called more than once for single tree model (ignored)");
    return (char)param_1[0x38];
  }
  DAT_011d94f0 = param_1[0x18];
  FUN_007bd0a0(*param_1,param_2,param_4);
  TreeEngine_ComputeWithPreparedRandom((void *)*param_1,(float)param_1[10]);
  FUN_007aebd0((void *)param_1[0x18],param_1[0x19],param_1[4]);
  iVar4 = *param_1;
  param_1[0x30] = *(int *)(param_1[0x19] + 0x1c);
  FUN_007b3bf0((void *)(iVar4 + 0x7c),(*(int *)(iVar4 + 0x80) - *(int *)(iVar4 + 0x7c)) / 0x58);
  if (*(int *)(param_1[4] + 0x38) == 1) {
    FUN_007bb660(param_1);
  }
  FUN_007c0850((void *)param_1[5],(undefined4 *)(*param_1 + 0xf0));
  iVar4 = *param_1;
  FUN_007b3ac0((void *)param_1[2],*(int *)(iVar4 + 0xac),*(int *)(iVar4 + 0xd0),
               (int *)(iVar4 + 0x7c),(float)param_1[10]);
  piVar3 = FUN_007b9290(*(int *)(param_1[2] + 0x2c));
  param_1[3] = (int)piVar3;
  if ((int *)param_1[0x15] != (int *)0x0) {
    iVar4 = 0;
    if (0 < *(int *)param_1[0x15]) {
      iVar5 = 0;
      do {
        FUN_007b1350((void *)param_1[2],iVar4,(undefined4 *)(*(int *)(param_1[0x15] + 4) + iVar5));
        iVar4 = iVar4 + 1;
        iVar5 = iVar5 + 0x20;
      } while (iVar4 < *(int *)param_1[0x15]);
    }
    cVar2 = DAT_011d962d;
    iVar4 = 0;
    if (0 < *(int *)(param_1[0x15] + 0x10)) {
      iVar5 = 0;
      do {
        FUN_007aa190((void *)param_1[0x19],(char)iVar4,
                     (float *)(*(int *)(param_1[0x15] + 0x14) + iVar5),cVar2);
        iVar4 = iVar4 + 1;
        iVar5 = iVar5 + 0x20;
      } while (iVar4 < *(int *)(param_1[0x15] + 0x10));
    }
  }
  if (param_5 != '\0') {
    FUN_007b0400((void *)param_1[1],'\0');
    FUN_007b0400((void *)param_1[0x19],'\0');
  }
  FUN_007af4d0(param_1[1]);
  FUN_007af4d0(param_1[0x19]);
  fVar8 = FLOAT_00f998f8;
  fVar10 = (float)param_1[8] * DAT_0103fd88;
  param_1[0x2f] = *(int *)(param_1[1] + 0x1c);
  param_1[0x30] = *(int *)(param_1[0x19] + 0x1c);
  iVar4 = *(int *)(param_1[2] + 0x2c);
  iVar5 = iVar4 + -1;
  param_1[0x31] = iVar4;
  param_1[0x32] = (int)fVar10;
  fVar7 = fVar8;
  if (iVar5 != 0) {
    fVar7 = (fVar8 - (float)iVar5 * fVar10) / (float)iVar5;
  }
  param_1[0x33] = (int)fVar7;
  if (iVar5 != 0) {
    fVar8 = (fVar8 - (float)iVar4 * fVar10) / (float)iVar5;
  }
  param_1[0x34] = (int)fVar8;
  param_1[0x35] = (int)(fVar7 + fVar10);
  param_1[0x36] = (int)(fVar8 + fVar10);
  if (param_3 != (float *)0x0) {
    FUN_007c2150(local_40);
    pfVar6 = local_40;
    for (iVar4 = 0x10; iVar4 != 0; iVar4 = iVar4 + -1) {
      *pfVar6 = *param_3;
      param_3 = param_3 + 1;
      pfVar6 = pfVar6 + 1;
    }
    FUN_007af010((void *)param_1[1],local_40);
    FUN_007b0d80((void *)param_1[2],local_40);
    FUN_007af010((void *)param_1[0x19],local_40);
    if ((void *)param_1[0x17] != (void *)0x0) {
      FUN_007b9350((void *)param_1[0x17],local_40);
    }
    ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  }
  FUN_007c2010(&local_70);
  FUN_007aef70((void *)param_1[1],&local_70);
  FUN_007b2920((void *)param_1[2],&local_70);
  FUN_007aef70((void *)param_1[0x19],&local_70);
  puVar1 = (undefined4 *)param_1[0x11];
  *puVar1 = local_70;
  puVar1[1] = local_6c;
  puVar1[2] = local_68;
  iVar4 = param_1[0x11];
  *(undefined4 *)(iVar4 + 0xc) = local_58;
  *(undefined4 *)(iVar4 + 0x10) = local_54;
  *(undefined4 *)(iVar4 + 0x14) = local_50;
  pfVar6 = (float *)param_1[0x11];
  fVar8 = *pfVar6 - 0.0;
  fVar7 = *pfVar6 - 0.0;
  fVar8 = (float)(((int)(fVar8 * fVar8 + (pfVar6[2] - 0.0) * (pfVar6[2] - 0.0)) >> 1) + 0x1fc00000);
  if (fVar8 <= (float)(((int)(fVar7 * fVar7 + (pfVar6[5] - 0.0) * (pfVar6[5] - 0.0)) >> 1) +
                      0x1fc00000)) {
    fVar8 = (float)(((int)((*pfVar6 - 0.0) * (*pfVar6 - 0.0) + (pfVar6[5] - 0.0) * (pfVar6[5] - 0.0)
                          ) >> 1) + 0x1fc00000);
  }
  fVar7 = pfVar6[3];
  fVar10 = pfVar6[2] - 0.0;
  if (fVar8 <= (float)(((int)((fVar7 - 0.0) * (fVar7 - 0.0) + fVar10 * fVar10) >> 1) + 0x1fc00000))
  {
    fVar8 = pfVar6[2] - 0.0;
    fVar8 = (float)(((int)((fVar7 - 0.0) * (fVar7 - 0.0) + fVar8 * fVar8) >> 1) + 0x1fc00000);
  }
  fVar10 = pfVar6[5] - 0.0;
  if (fVar8 <= (float)(((int)((fVar7 - 0.0) * (fVar7 - 0.0) + fVar10 * fVar10) >> 1) + 0x1fc00000))
  {
    fVar8 = pfVar6[5] - 0.0;
    fVar8 = (float)(((int)((fVar7 - 0.0) * (fVar7 - 0.0) + fVar8 * fVar8) >> 1) + 0x1fc00000);
  }
  pfVar6[6] = fVar8 * DAT_0103fd88;
  if (param_1[0x16] != 0) {
    FUN_007b8950((int)param_1);
  }
  fVar8 = FLOAT_00f998f0;
  if ((param_1[0x15] != 0) && (*(char *)((int)param_1 + 0xe2) != '\0')) {
    pfVar6 = (float *)param_1[0x11];
    fVar7 = pfVar6[2];
    fVar10 = pfVar6[5];
    fVar9 = (pfVar6[4] + pfVar6[1]) * _DAT_00f9b5b4;
    fVar12 = FLOAT_00f998f0 - pfVar6[3];
    fVar11 = FLOAT_00f998f0 - *pfVar6;
    param_1[0x1c] = (int)fVar9;
    param_1[0x1d] = (int)fVar10;
    fVar12 = fVar8 - fVar12;
    param_1[0x1b] = (int)fVar12;
    param_1[0x1f] = (int)fVar9;
    param_1[0x20] = (int)fVar10;
    fVar8 = fVar8 - fVar11;
    param_1[0x1e] = (int)fVar8;
    param_1[0x21] = (int)fVar8;
    param_1[0x22] = (int)fVar9;
    param_1[0x23] = (int)fVar7;
    param_1[0x24] = (int)fVar12;
    param_1[0x25] = (int)fVar9;
    param_1[0x26] = (int)fVar7;
  }
  iVar4 = *param_1;
  iVar5 = *(int *)(iVar4 + 0x5c) - *(int *)(iVar4 + 0x58) >> 2;
  if (iVar5 == 0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_004e4500(iVar5 * 4,*(undefined4 *)(iVar4 + 100),0);
  }
  memmove(piVar3,*(void **)(iVar4 + 0x58),*(int *)(iVar4 + 0x5c) - (int)*(void **)(iVar4 + 0x58));
  param_1[0x14] = (int)(*(float *)(*piVar3 + 0x7c00) * *(float *)(*param_1 + 0x4c));
  Memory_FreeIfNonNull(piVar3);
  *(undefined1 *)(param_1 + 0x38) = 1;
  ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  return (char)param_1[0x38];
}

