/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* ECX tool, two stack words, RET8. Ordinary floor branch subtracts saved raw press XZ, x87 absolute
   sum rejects below/unordered binary32 .2, calls CFA570 then D00E90, reads applied yaw and compares
   binary32 difference magnitude>2^-23 before rotation sound, then D02AC0 validation. Attachment
   projection and height mode remain separate branches; do not infer homogeneous float vectors from
   decompiler lanes. */

void __thiscall
ObjectTool_UpdatePressedRotationOrHeight(void *this,undefined4 param_1,float *param_2)

{
  char cVar1;
  bool bVar2;
  undefined4 uVar3;
  int iVar4;
  void *pvVar5;
  float *pfVar6;
  void *pvVar7;
  float *extraout_EAX;
  int iVar8;
  float10 fVar9;
  float fVar10;
  float fVar14;
  float fVar15;
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  float fVar16;
  float fVar17;
  int iVar18;
  int *piVar19;
  undefined1 uVar20;
  undefined1 (*pauVar21) [12];
  float fVar22;
  uint uVar23;
  float local_c4;
  float local_bc;
  float local_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float afStack_a8 [2];
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  LotXZLevel local_80;
  float fStack_74;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (*(char *)((int)this + 0x1cc) != '\0') {
    if (*(char *)((int)this + 0x2f7) == '\0') {
      iVar4 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar4 = *(int *)((int)this + 0x60);
    }
    if ((iVar4 != 0) && (uVar3 = FUN_00d25de0(iVar4), (char)uVar3 != '\0')) {
      if (*(char *)((int)this + 0x2f7) == '\0') {
        iVar4 = *(int *)((int)this + 0x5c);
      }
      else {
        iVar4 = *(int *)((int)this + 0x60);
      }
      if (iVar4 == 0) {
        pvVar7 = (void *)0x0;
      }
      else {
        pvVar7 = *(void **)(iVar4 + 0x58);
      }
      iVar4 = FUN_00b01f30(pvVar7,(undefined4 *)0x0);
      local_b0 = *param_2;
      fStack_ac = param_2[1];
      afStack_a8[0] = param_2[2];
      fStack_74 = 0.0;
      local_80.level = 0;
      local_80.z = 0.0;
      local_80.x = 0.0;
      local_40 = 0.0;
      fStack_3c = 0.0;
      fStack_38 = 0.0;
      fStack_34 = 0.0;
      if (iVar4 != 0) {
        if ((pvVar7 != (void *)0x0) &&
           (pvVar5 = Object_GetComponentByMask(pvVar7,DAT_011ea158), pvVar5 != (void *)0x0)) {
          TransformComponent_GetWorldPosition(pvVar5,&local_80.x);
          Lot_WorldPositionToLocalVector(*(void **)((int)this + 0xc),&local_80.x,&local_90);
          LotPoint_ResolveLevelPosition
                    (*(undefined **)((int)this + 0xc),(LotPaintPoint *)((int)this + 0x94),&local_60)
          ;
          local_40 = local_90 - local_60;
          fStack_3c = fStack_8c - fStack_5c;
          fStack_38 = fStack_88 - fStack_58;
          fStack_34 = fStack_84 - fStack_54;
        }
        iVar4 = FUN_007cef40();
        if (iVar4 != 0) {
          local_50 = *(float *)(iVar4 + 0x60);
          fStack_4c = *(float *)(iVar4 + 100);
          fStack_48 = *(float *)(iVar4 + 0x68);
          fStack_44 = *(float *)(iVar4 + 0x6c);
          LotPoint_ResolveLevelPosition
                    (*(undefined **)((int)this + 0xc),(LotPaintPoint *)param_2,&local_30);
          LotPoint_ResolveLevelPosition
                    (*(undefined **)((int)this + 0xc),(LotPaintPoint *)((int)this + 0x94),&local_60)
          ;
          local_90 = local_60 + local_40 + *(float *)((int)this + 0xa0);
          fStack_8c = fStack_5c + fStack_3c + *(float *)((int)this + 0xa4);
          fStack_88 = fStack_58 + fStack_38 + *(float *)((int)this + 0xa8);
          fStack_84 = fStack_54 + fStack_34 + *(float *)((int)this + 0xac);
          pfVar6 = (float *)Lot_GetLocalToWorldPose(*(void **)((int)this + 0xc),&local_80.x);
          fVar16 = *pfVar6;
          fVar17 = pfVar6[1];
          fVar22 = pfVar6[2];
          fVar15 = pfVar6[3];
          fVar10 = (fStack_88 * fVar17 - fStack_8c * fVar22) + fVar15 * local_90;
          fVar14 = (local_90 * fVar22 - fStack_88 * fVar16) + fVar15 * fStack_8c;
          fVar15 = (fStack_8c * fVar16 - local_90 * fVar17) + fVar15 * fStack_88;
          local_a0 = (fVar15 * fVar17 - fVar14 * fVar22) * 2.0 + local_90 + pfVar6[4];
          fStack_9c = (fVar10 * fVar22 - fVar15 * fVar16) * 2.0 + fStack_8c + pfVar6[5];
          fStack_98 = (fVar14 * fVar16 - fVar10 * fVar17) * 2.0 + fStack_88 + pfVar6[6];
          fStack_94 = (fVar10 * fVar16 - fVar10 * fVar16) * 2.0 + fStack_84 + pfVar6[7];
          local_90 = 2.0;
          fStack_8c = 2.0;
          fStack_88 = 2.0;
          fStack_84 = 2.0;
          pfVar6 = (float *)Lot_GetLocalToWorldPose(*(void **)((int)this + 0xc),&local_80.x);
          fVar16 = *pfVar6;
          fVar17 = pfVar6[1];
          fVar22 = pfVar6[2];
          fVar15 = pfVar6[3];
          fVar10 = (fStack_28 * fVar17 - fStack_2c * fVar22) + fVar15 * local_30;
          fVar14 = (local_30 * fVar22 - fStack_28 * fVar16) + fVar15 * fStack_2c;
          fVar15 = (fStack_2c * fVar16 - local_30 * fVar17) + fVar15 * fStack_28;
          local_20 = (fVar15 * fVar17 - fVar14 * fVar22) * local_90 + local_30 + pfVar6[4];
          fStack_1c = (fVar10 * fVar22 - fVar15 * fVar16) * fStack_8c + fStack_2c + pfVar6[5];
          fStack_18 = (fVar14 * fVar16 - fVar10 * fVar17) * fStack_88 + fStack_28 + pfVar6[6];
          fStack_14 = (fVar10 * fVar16 - fVar10 * fVar16) * fStack_84 + fStack_24 + pfVar6[7];
          local_80.x = fStack_1c - fStack_4c;
          local_80.z = fStack_1c - fStack_4c;
          local_80.level = (int)(fStack_1c - fStack_4c);
          fStack_74 = fStack_1c - fStack_4c;
          local_90 = fStack_9c - fStack_4c;
          fStack_8c = fStack_9c - fStack_4c;
          fStack_88 = fStack_9c - fStack_4c;
          fStack_84 = fStack_9c - fStack_4c;
          if (0.001 < ABS(local_80.x)) {
            fVar16 = local_90 / local_80.x;
            local_90 = (local_20 - local_50) * fVar16 + local_50;
            fStack_8c = (fStack_1c - fStack_4c) * fVar16 + fStack_4c;
            fStack_88 = (fStack_18 - fStack_48) * fVar16 + fStack_48;
            fStack_84 = (fStack_14 - fStack_44) * fVar16 + fStack_44;
            Lot_WorldPositionToLocalVector(*(void **)((int)this + 0xc),&local_90,&local_b0);
            fVar16 = afStack_a8[0];
            goto LAB_00d0535d;
          }
        }
      }
      fVar16 = fStack_ac;
LAB_00d0535d:
      local_50 = (local_b0 - *(float *)((int)this + 0x94)) - local_40;
      local_a0 = (fVar16 - *(float *)((int)this + 0x98)) - fStack_38;
      if (ABS(local_a0) + ABS(local_50) < 0.2) {
        return;
      }
      fStack_9c = local_a0;
      fStack_98 = local_a0;
      fStack_94 = local_a0;
      fStack_4c = local_50;
      fStack_48 = local_50;
      fStack_44 = local_50;
      uVar3 = ObjectTool_DirectionToRawYaw
                        (*(undefined4 *)((int)this + 0xc),local_50,local_a0,&local_b8);
      if ((char)uVar3 == '\0') {
        return;
      }
      if ((pvVar7 == (void *)0x0) ||
         (pvVar7 = Object_GetComponentByMask(pvVar7,DAT_011edf08), pvVar7 == (void *)0x0)) {
        local_c4 = *(float *)((int)this + 0xe0);
      }
      else {
        local_c4 = PlacementLocation_ReadYawWithRefresh(pvVar7);
      }
      cVar1 = *(char *)((int)this + 0x2f7);
      *(float *)((int)this + 0xe0) = local_b8;
      ObjectTool_ApplyCurrentYaw(this,'\0');
      pvVar7 = (void *)FUN_00cfb880((int)this);
      if ((pvVar7 == (void *)0x0) ||
         (pvVar7 = Object_GetComponentByMask(pvVar7,DAT_011edf08), pvVar7 == (void *)0x0)) {
        fVar16 = *(float *)((int)this + 0xe0);
      }
      else {
        fVar16 = PlacementLocation_ReadYawWithRefresh(pvVar7);
        local_b8 = fVar16;
      }
      if ((*(char *)((int)this + 0x2f7) != cVar1) || (1.1920929e-07 < ABS(fVar16 - local_c4))) {
        BuildBuy_PlayKeyedSound(DAT_011ebf78);
      }
      FUN_00d02ac0(this);
      return;
    }
  }
  if (*(char *)((int)this + 0x1cd) == '\0') {
    return;
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar4 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar4 = *(int *)((int)this + 0x60);
  }
  if (iVar4 == 0) {
    return;
  }
  uVar3 = FUN_00d25de0(iVar4);
  if ((char)uVar3 == '\0') {
    return;
  }
  iVar4 = *(int *)((int)this + 0x368);
  if (*(char *)((int)this + 0xb2) != '\0') {
    iVar4 = -iVar4;
  }
  local_bc = (float)(*(int *)((int)this + 0xec) - iVar4) * -0.01;
  if (*(char *)((int)this + 0x89) != '\0') {
    fVar9 = (float10)_CIfmod();
    local_bc = (float)((float10)local_bc - fVar9);
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar4 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar4 = *(int *)((int)this + 0x60);
  }
  if (iVar4 == 0) {
    pvVar7 = (void *)0x0;
LAB_00d05574:
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar7 = *(void **)(iVar4 + 0x58);
    if (pvVar7 == (void *)0x0) goto LAB_00d05574;
    pvVar5 = Object_GetComponentByMask(pvVar7,DAT_011edf08);
  }
  local_80.x = -1.0;
  local_80.level = 0;
  local_80.z = local_80.x;
  ObjectLocation_CopyXZLevel(pvVar5,&local_80.x,&local_80.z,&local_80.level);
  if (param_2[2] == 0.0) {
    fVar9 = FUN_00b084e0(pvVar7,*(int *)((int)this + 0xc),(undefined1 (*) [12])&local_80,'\0');
    local_b8 = (float)fVar9;
  }
  else {
    local_b8 = 0.0;
  }
  fVar17 = *(float *)((int)this + 0xe8) + local_bc;
  fVar16 = *(float *)((int)pvVar5 + 0x24);
  pfVar6 = param_2;
  if (param_2[2] == 0.0) {
    fVar9 = LotLevelHeight_SampleLocalPosition
                      (*(void **)(*(int *)((int)this + 0xc) + 0x290),&local_80);
    fStack_b4 = (float)fVar9;
    fVar9 = FUN_00cfa720(pvVar7,*(void **)((int)this + 0xc));
    fVar16 = (float)(fVar9 - (float10)fStack_b4);
    pfVar6 = extraout_EAX;
    fStack_b4 = fVar16;
  }
  fVar16 = fVar17 - fVar16;
  auVar11._0_4_ = fVar16 * -1.0;
  auVar11._4_4_ = fVar16 * -1.0;
  auVar11._8_4_ = fVar16 * -1.0;
  auVar11._12_4_ = fVar16 * -1.0;
  auVar12._4_4_ = fVar16;
  auVar12._0_4_ = fVar16;
  auVar12._8_4_ = fVar16;
  auVar12._12_4_ = fVar16;
  auVar12 = maxps(auVar11,auVar12);
  auVar13._4_4_ = -(uint)(auVar12._4_4_ <= 1.5258789e-05);
  auVar13._0_4_ = -(uint)(auVar12._0_4_ <= 1.5258789e-05);
  auVar13._8_4_ = -(uint)(auVar12._8_4_ <= 1.5258789e-05);
  auVar13._12_4_ = -(uint)(auVar12._12_4_ <= 1.5258789e-05);
  iVar4 = movmskps(pfVar6,auVar13);
  if (iVar4 == 0xf) goto LAB_00d057bd;
  uVar3 = Lot_TestPlatformAtLocalXZLevel(*(void **)((int)this + 0xc),param_2);
  if ((char)uVar3 == '\0') {
    fVar16 = 0.0;
  }
  else {
    fVar16 = 0.1875;
  }
  bVar2 = fVar16 <= *(float *)((int)this + 0xf0) + fVar17;
  iVar4 = *(int *)((int)this + 0xf8);
  *(undefined4 *)((int)this + 0xf8) = 0x5aed10d;
  if ((!bVar2) || (3.0 < *(float *)((int)this + 0xf4) + fVar17)) {
    iVar4 = 0x5aed110 - (uint)bVar2;
    *(int *)((int)this + 0xf8) = iVar4;
    if (iVar4 == 0x5aed110) {
      if (local_bc < *(float *)((int)this + 0xe4)) {
LAB_00d0584f:
        BuildBuy_PlayKeyedSound(DAT_011ebf50);
      }
    }
    else if ((iVar4 == 0x5aed10f) &&
            (*(float *)((int)this + 0xe4) <= local_bc && local_bc != *(float *)((int)this + 0xe4)))
    goto LAB_00d0584f;
  }
  else {
    local_b0 = -1.0;
    afStack_a8[0] = 0.0;
    fStack_ac = local_b0;
    ObjectLocation_CopyXZLevel(pvVar5,&local_b0,&fStack_ac,afStack_a8);
    uVar20 = *(undefined1 *)((int)this + 0x1de);
    fStack_b4 = (float)(CONCAT31(fStack_b4._1_3_,(char)(*(uint *)((int)pvVar5 + 0x2c) >> 5)) &
                       0xffffff01);
    pvVar7 = (void *)((int)this + 0x270);
    iVar18 = *(int *)((int)this + 0xc);
    pfVar6 = &local_b0;
    fVar16 = fVar17;
    fVar22 = fStack_b4;
    pvVar5 = pvVar7;
    cVar1 = DAT_011ee7b8;
    iVar8 = FUN_00cfb880((int)this);
    cVar1 = FUN_00ccdad0(iVar8,iVar18,pfVar6,fVar16,cVar1,uVar20,SUB41(fVar22,0),pvVar5);
    if (cVar1 == '\0') {
      bVar2 = FUN_00ad6f10((int)pvVar7);
      if (bVar2) {
        FUN_00cd3890(pvVar7,1,'\x01');
        BuildBuy_PlayKeyedSound(DAT_011ebf50);
        *(undefined1 *)((int)this + 0x1d1) = 1;
      }
    }
    else {
      fVar17 = fVar17 + local_b8;
      uVar23 = 0;
      piVar19 = *(int **)((int)this + 0xc);
      pauVar21 = (undefined1 (*) [12])&local_b0;
      pvVar7 = (void *)FUN_00cfb100((int)this);
      FUN_00d26a80(pvVar7,piVar19,pauVar21,fVar17,uVar23);
      if (*(char *)((int)this + 0x89) != '\0') {
        BuildBuy_PlayKeyedSound(DAT_011ebf78);
      }
    }
    if (iVar4 == 0x5aed10d) goto LAB_00d057bd;
  }
  ObjectTool_UpdateHeldCursor((int)this);
LAB_00d057bd:
  *(float *)((int)this + 0xe4) = local_bc;
  return;
}

