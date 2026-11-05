/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst original PC1.67 instruction contract. Dispatches event tags C1E40001 Parent and C1E40002
   Unparent; event flag bit5 selects saved-record capture/restore. Physical exits RET10h although
   existing inferred C exposes two stack arguments; remaining argument roles are not repaired here.
   Unparent without restore calls9595B0. With consumed saved record, absent saved parent calls9595B0
   then958760 only on nonzero AL; present saved parent selects582910 ordinary or582940 bone by saved
   byte+51h, forwards saved matrix/point/occupant byte+50h, then releases the record. Those wrappers
   directly call958D90 rather than an explicit detach. Parent mirrored-pose arithmetic and
   namespace/helper lifetime require their own instruction interpretation; no blanket
   malformed-input guarantee. */

void AnimationScene_DispatchParentOrUnparentEvent(int *param_1,int param_2)

{
  float fVar1;
  undefined4 uVar2;
  char cVar3;
  void *pvVar4;
  void *pvVar5;
  void *pvVar6;
  int *piVar7;
  undefined4 *puVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined4 uVar11;
  float *pfVar12;
  undefined4 uVar13;
  int iVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  undefined1 auVar23 [16];
  undefined1 auVar24 [16];
  undefined1 auVar25 [16];
  undefined1 auVar26 [16];
  undefined1 auVar27 [16];
  undefined1 auVar28 [16];
  undefined1 auVar29 [16];
  undefined1 auVar30 [16];
  char cVar31;
  void *local_120;
  void *local_11c;
  float *local_118;
  void *local_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  int local_f8;
  float *local_f4;
  float fStack_f0;
  float fStack_e0;
  uint uStack_d0;
  uint uStack_cc;
  uint uStack_c8;
  uint uStack_c4;
  uint uStack_c0;
  uint uStack_bc;
  uint uStack_b8;
  uint uStack_b4;
  uint uStack_b0;
  uint uStack_ac;
  uint uStack_a8;
  uint uStack_a4;
  float fStack_a0;
  undefined4 uStack_9c;
  undefined4 uStack_98;
  float fStack_94;
  uint local_90 [16];
  float local_50 [19];
  
  if (*(int *)(param_2 + 8) == -0x3e1bffff) {
    if (*(void **)(*param_1 + 4) == (void *)0x0) {
      local_114 = (void *)0x0;
    }
    else {
      local_114 = (void *)FUN_00581b40(*(void **)(*param_1 + 4),*(int *)(param_2 + 0x28));
    }
    if (*(void **)(*param_1 + 4) == (void *)0x0) {
      local_120 = (void *)0x0;
    }
    else {
      local_120 = (void *)FUN_00581b70(*(void **)(*param_1 + 4),*(int *)(param_2 + 0x28));
    }
    if (*(void **)(*param_1 + 4) == (void *)0x0) {
      local_11c = (void *)0x0;
    }
    else {
      local_11c = (void *)FUN_00581b70(*(void **)(*param_1 + 4),*(int *)(param_2 + 0x2c));
    }
    pfVar12 = *(float **)(param_2 + 0x30);
    local_f8 = 0;
    local_118 = (float *)0x0;
    local_f4 = pfVar12;
    if (*(char *)(*param_1 + 0x15) != '\0') {
      local_118 = (float *)FUN_00582ae0(local_11c,(int)pfVar12,&local_f8);
    }
    if ((((local_120 != (void *)0x0) && (local_11c != (void *)0x0)) &&
        ((pfVar12 != (float *)0x0 &&
         ((*(char *)(*param_1 + 0x15) == '\0' || (local_118 != (float *)0x0)))))) &&
       (pvVar4 = (void *)Object_GetTransformComponentOrNull(local_120), pvVar4 != (void *)0x0)) {
      iVar14 = *(int *)((int)pvVar4 + 0x30);
      if ((*(uint *)(param_2 + 0x1c) >> 5 & 1) != 0) {
        puVar8 = (undefined4 *)FUN_004e4500(0x60,"Animation/ParentEvent/SceneEntityParentRecord",0);
        piVar7 = (int *)0x0;
        if (puVar8 == (undefined4 *)0x0) {
          puVar8 = (undefined4 *)0x0;
        }
        else {
          *puVar8 = 0;
          puVar8[1] = 0;
          puVar8[2] = 0;
          *(undefined1 *)(puVar8 + 0x14) = 0;
          *(undefined1 *)((int)puVar8 + 0x51) = 0;
        }
        if (iVar14 == 0) {
          pfVar12 = TransformComponent_GetWorldMatrix(pvVar4,local_50);
          fVar15 = pfVar12[1];
          fVar16 = pfVar12[2];
          fVar17 = pfVar12[3];
          puVar8[4] = *pfVar12;
          puVar8[5] = fVar15;
          puVar8[6] = fVar16;
          puVar8[7] = fVar17;
          fVar15 = pfVar12[5];
          fVar16 = pfVar12[6];
          fVar17 = pfVar12[7];
          puVar8[8] = pfVar12[4];
          puVar8[9] = fVar15;
          puVar8[10] = fVar16;
          puVar8[0xb] = fVar17;
          fVar15 = pfVar12[9];
          fVar16 = pfVar12[10];
          fVar17 = pfVar12[0xb];
          puVar8[0xc] = pfVar12[8];
          puVar8[0xd] = fVar15;
          puVar8[0xe] = fVar16;
          puVar8[0xf] = fVar17;
          fVar15 = pfVar12[0xd];
          fVar16 = pfVar12[0xe];
          fVar17 = pfVar12[0xf];
          uVar11 = 0;
          puVar8[0x10] = pfVar12[0xc];
          puVar8[0x11] = fVar15;
          puVar8[0x12] = fVar16;
          puVar8[0x13] = fVar17;
          uVar13 = 0;
        }
        else {
          piVar7 = (int *)FUN_00956300(pvVar4,(undefined1 *)((int)puVar8 + 0x51));
          if ((piVar7 != (int *)0x0) && (iVar9 = (**(code **)(*piVar7 + 8))(3), iVar9 != 0)) {
            iVar9 = (**(code **)(*piVar7 + 8))(3);
            *(bool *)(puVar8 + 0x14) = *(void **)(iVar9 + 0x1c) == local_120;
          }
          puVar10 = (undefined4 *)FUN_009560e0(pvVar4,local_90);
          uVar11 = puVar10[1];
          uVar13 = puVar10[2];
          uVar2 = puVar10[3];
          puVar8[4] = *puVar10;
          puVar8[5] = uVar11;
          puVar8[6] = uVar13;
          puVar8[7] = uVar2;
          uVar11 = puVar10[5];
          uVar13 = puVar10[6];
          uVar2 = puVar10[7];
          puVar8[8] = puVar10[4];
          puVar8[9] = uVar11;
          puVar8[10] = uVar13;
          puVar8[0xb] = uVar2;
          uVar11 = puVar10[9];
          uVar13 = puVar10[10];
          uVar2 = puVar10[0xb];
          puVar8[0xc] = puVar10[8];
          puVar8[0xd] = uVar11;
          puVar8[0xe] = uVar13;
          puVar8[0xf] = uVar2;
          uVar11 = puVar10[0xd];
          uVar13 = puVar10[0xe];
          uVar2 = puVar10[0xf];
          puVar8[0x10] = puVar10[0xc];
          puVar8[0x11] = uVar11;
          puVar8[0x12] = uVar13;
          puVar8[0x13] = uVar2;
          uVar11 = *(undefined4 *)(iVar14 + 8);
          uVar13 = *(undefined4 *)(iVar14 + 0xc);
        }
        *puVar8 = uVar11;
        puVar8[1] = uVar13;
        if (piVar7 == (int *)0x0) {
          iVar14 = 0;
        }
        else {
          iVar14 = piVar7[1];
        }
        puVar8[2] = iVar14;
        FUN_005818b0(local_114,puVar8);
        pfVar12 = local_f4;
      }
      if ((*(char *)(*param_1 + 0x15) != '\0') && (local_f8 == 0)) {
        pfVar12 = (float *)(param_2 + 0x40);
        if (pfVar12 != (float *)0x0) {
          fVar15 = *pfVar12;
          fVar16 = *(float *)(param_2 + 0x44);
          fVar17 = *(float *)(param_2 + 0x48);
          fVar18 = *(float *)(param_2 + 0x50);
          fVar19 = *(float *)(param_2 + 0x54);
          fVar20 = *(float *)(param_2 + 0x58);
          fVar21 = *(float *)(param_2 + 0x60);
          fVar22 = *(float *)(param_2 + 100);
          fVar1 = *(float *)(param_2 + 0x68);
          fStack_e0 = fVar1 + fVar15 + fVar19;
          fStack_f0 = DAT_010f4ccc;
          if (fStack_e0 <= DAT_010f4ccc) {
            fStack_f0 = fVar1;
            if ((fVar15 <= fVar19) || (fVar15 <= fVar1)) {
              if (fVar19 <= fVar1) {
                auVar24._0_4_ = (fVar1 - (fVar15 + fVar19)) + FLOAT_00f998f8;
                auVar24._4_4_ = (fVar1 - (fVar15 + fVar19)) + FLOAT_00f998f8;
                auVar24._8_4_ = (fVar1 - (fVar15 + fVar19)) + FLOAT_00f998f8;
                auVar24._12_4_ = (fVar1 - (fVar15 + fVar19)) + FLOAT_00f998f8;
                auVar30 = sqrtps(ZEXT416((uint)fVar19),auVar24);
                auVar28._4_4_ = _DAT_00f9b5b4;
                auVar28._0_4_ = _DAT_00f9b5b4;
                auVar28._8_4_ = _DAT_00f9b5b4;
                auVar28._12_4_ = _DAT_00f9b5b4;
                auVar24 = divps(auVar28,auVar30);
                fStack_110 = auVar24._0_4_;
                fStack_10c = auVar24._4_4_;
                fStack_104 = auVar24._12_4_;
                fStack_110 = (fVar17 + fVar21) * fStack_110;
                fStack_10c = (fVar20 + fVar22) * fStack_10c;
                fStack_108 = auVar30._8_4_ * _DAT_00f9b5b4;
                fStack_104 = (fVar16 - fVar18) * fStack_104;
              }
              else {
                auVar30._0_4_ = (fVar19 - (fVar1 + fVar15)) + FLOAT_00f998f8;
                auVar30._4_4_ = (fVar19 - (fVar1 + fVar15)) + FLOAT_00f998f8;
                auVar30._8_4_ = (fVar19 - (fVar1 + fVar15)) + FLOAT_00f998f8;
                auVar30._12_4_ = (fVar19 - (fVar1 + fVar15)) + FLOAT_00f998f8;
                auVar24 = sqrtps(auVar30,auVar30);
                auVar29._4_4_ = _DAT_00f9b5b4;
                auVar29._0_4_ = _DAT_00f9b5b4;
                auVar29._8_4_ = _DAT_00f9b5b4;
                auVar29._12_4_ = _DAT_00f9b5b4;
                auVar28 = divps(auVar29,auVar24);
                fStack_10c = auVar24._4_4_;
                fStack_110 = (fVar18 + fVar16) * auVar28._0_4_;
                fStack_10c = fStack_10c * _DAT_00f9b5b4;
                fStack_108 = (fVar20 + fVar22) * auVar28._8_4_;
                fStack_104 = (fVar21 - fVar17) * auVar28._12_4_;
              }
            }
            else {
              auVar26._0_4_ = (fVar15 - (fVar1 + fVar19)) + FLOAT_00f998f8;
              auVar26._4_4_ = (fVar15 - (fVar1 + fVar19)) + FLOAT_00f998f8;
              auVar26._8_4_ = (fVar15 - (fVar1 + fVar19)) + FLOAT_00f998f8;
              auVar26._12_4_ = (fVar15 - (fVar1 + fVar19)) + FLOAT_00f998f8;
              auVar28 = sqrtps(auVar26,auVar26);
              auVar25._4_4_ = _DAT_00f9b5b4;
              auVar25._0_4_ = _DAT_00f9b5b4;
              auVar25._8_4_ = _DAT_00f9b5b4;
              auVar25._12_4_ = _DAT_00f9b5b4;
              auVar24 = divps(auVar25,auVar28);
              fStack_10c = auVar24._4_4_;
              fStack_108 = auVar24._8_4_;
              fStack_104 = auVar24._12_4_;
              fStack_110 = auVar28._0_4_ * _DAT_00f9b5b4;
              fStack_10c = (fVar18 + fVar16) * fStack_10c;
              fStack_108 = (fVar17 + fVar21) * fStack_108;
              fStack_104 = (fVar20 - fVar22) * fStack_104;
            }
          }
          else {
            auVar23._0_4_ = fStack_e0 + FLOAT_00f998f8;
            auVar23._4_4_ = fVar1 + fVar15 + fVar19 + FLOAT_00f998f8;
            auVar23._8_4_ = fVar1 + fVar15 + fVar19 + FLOAT_00f998f8;
            auVar23._12_4_ = fVar1 + fVar15 + fVar19 + FLOAT_00f998f8;
            auVar24 = sqrtps(auVar23,auVar23);
            auVar27._4_4_ = _DAT_00f9b5b4;
            auVar27._0_4_ = _DAT_00f9b5b4;
            auVar27._8_4_ = _DAT_00f9b5b4;
            auVar27._12_4_ = _DAT_00f9b5b4;
            auVar28 = divps(auVar27,auVar24);
            fStack_104 = auVar24._12_4_;
            fStack_110 = (fVar20 - fVar22) * auVar28._0_4_;
            fStack_10c = (fVar21 - fVar17) * auVar28._4_4_;
            fStack_108 = (fVar16 - fVar18) * auVar28._8_4_;
            fStack_104 = fStack_104 * _DAT_00f9b5b4;
          }
          uStack_9c = *(undefined4 *)(param_2 + 0x74);
          uStack_98 = *(undefined4 *)(param_2 + 0x78);
          fStack_a0 = 0.0 - *(float *)(param_2 + 0x70);
          fStack_110 = DAT_00fcca0c * fStack_110;
          fVar16 = DAT_00fcca0c * (0.0 - fStack_10c);
          fVar17 = DAT_00fcca0c * (0.0 - fStack_108);
          fStack_104 = DAT_00fcca0c * fStack_104;
          fVar18 = (0.0 - fStack_110) * fStack_110 + _DAT_00f9b5b4;
          fVar19 = (0.0 - fVar16) * fVar16 + _DAT_00f9b5b4;
          fVar20 = (0.0 - fVar17) * fVar17 + _DAT_00f9b5b4;
          fVar15 = fStack_104 * fVar17 + fVar16 * fStack_110;
          fVar21 = fVar16 * fStack_110 - fStack_104 * fVar17;
          fVar22 = fVar19 + fVar18;
          uStack_d0 = _DAT_011b0670 & (uint)(fVar20 + fVar19);
          uStack_cc = uRam011b0674 & (uint)fVar15;
          uStack_c8 = uRam011b0678 & (uint)(fStack_110 * fVar17 - fStack_104 * fVar16);
          uStack_c4 = uRam011b067c & (uint)fVar21;
          uStack_c0 = _DAT_011b0670 & (uint)fVar21;
          uStack_bc = uRam011b0674 & (uint)(fVar18 + fVar20);
          uStack_b8 = uRam011b0678 & (uint)(fStack_104 * fStack_110 + fVar17 * fVar16);
          uStack_b4 = uRam011b067c & (uint)fVar15;
          uStack_b0 = _DAT_011b0670 & (uint)(fStack_104 * fVar16 + fStack_110 * fVar17);
          uStack_ac = uRam011b0674 & (uint)(fVar17 * fVar16 - fStack_104 * fStack_110);
          uStack_a8 = uRam011b0678 & (uint)fVar22;
          uStack_a4 = uRam011b067c & (uint)fVar22;
          fStack_94 = FLOAT_00f998f8;
        }
        FUN_00959f10(pvVar4,local_11c,local_118,-(pfVar12 != (float *)0x0) & (byte)&uStack_d0);
        return;
      }
      FUN_00959f10(pvVar4,local_11c,pfVar12,(char)param_2 + '@');
    }
  }
  else if (*(int *)(param_2 + 8) == -0x3e1bfffe) {
    if ((((*(void **)(*param_1 + 4) != (void *)0x0) &&
         (pvVar4 = (void *)FUN_00581b40(*(void **)(*param_1 + 4),*(int *)(param_2 + 0x28)),
         pvVar4 != (void *)0x0)) &&
        (pvVar5 = (void *)FUN_00581870(pvVar4,'\0'), pvVar5 != (void *)0x0)) &&
       (pvVar5 = Object_GetComponentByMask(pvVar5,DAT_011ea158), pvVar5 != (void *)0x0)) {
      if ((*(uint *)(param_2 + 0x1c) >> 5 & 1) == 0) {
        FUN_009595b0(pvVar5);
        return;
      }
      pvVar4 = (void *)FUN_00581c40(pvVar4,'\x01');
      if (pvVar4 != (void *)0x0) {
        pvVar6 = (void *)FUN_005818e0();
        if (pvVar6 == (void *)0x0) {
          cVar3 = FUN_009595b0(pvVar5);
          if (cVar3 != '\0') {
            TransformComponent_SetWorldMatrix(pvVar5,(float *)((int)pvVar4 + 0x10));
          }
          Memory_FreeIfNonNull(pvVar4);
          return;
        }
        if (*(char *)((int)pvVar4 + 0x51) == '\0') {
          cVar3 = *(char *)((int)pvVar4 + 0x50);
          cVar31 = '\x01';
          pfVar12 = (float *)((int)pvVar4 + 0x10);
          piVar7 = (int *)FUN_00581a30((int)pvVar4);
          AnimationScene_RestoreOrdinaryParentPoint(pvVar5,pvVar6,piVar7,pfVar12,cVar31,cVar3);
          Memory_FreeIfNonNull(pvVar4);
          return;
        }
        cVar3 = *(char *)((int)pvVar4 + 0x50);
        cVar31 = '\x01';
        pfVar12 = (float *)((int)pvVar4 + 0x10);
        piVar7 = (int *)FUN_00581a30((int)pvVar4);
        AnimationScene_RestoreBoneParentPoint(pvVar5,pvVar6,piVar7,pfVar12,cVar31,cVar3);
        Memory_FreeIfNonNull(pvVar4);
        return;
      }
    }
  }
  return;
}

