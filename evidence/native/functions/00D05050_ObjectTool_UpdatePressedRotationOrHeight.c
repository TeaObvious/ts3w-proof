/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* ECX tool, two stack words, RET8. Ordinary floor branch subtracts saved raw press XZ, x87 absolute
   sum rejects below/unordered binary32 .2, calls CFA570 then D00E90, reads applied yaw and compares
   binary32 difference magnitude>2^-23 before rotation sound, then D02AC0 validation. Attachment
   projection and height mode remain separate branches; do not infer homogeneous float vectors from
   decompiler lanes. */

void __thiscall
ObjectTool_UpdatePressedRotationOrHeight(void *this,undefined4 param_1,float *param_2)

{
  bool bVar1;
  char cVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  void *pvVar6;
  float *pfVar7;
  void *pvVar8;
  float *extraout_EAX;
  int iVar9;
  float10 fVar10;
  float fVar11;
  float fVar15;
  float fVar16;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  float fVar17;
  float fVar18;
  int iVar19;
  int *piVar20;
  undefined1 uVar21;
  undefined1 (*pauVar22) [12];
  float fVar23;
  uint uVar24;
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
      iVar5 = *(int *)((int)this + 0x5c);
    }
    else {
      iVar5 = *(int *)((int)this + 0x60);
    }
    if ((iVar5 != 0) && (uVar4 = FUN_00d25de0(iVar5), (char)uVar4 != '\0')) {
      if (*(char *)((int)this + 0x2f7) == '\0') {
        iVar5 = *(int *)((int)this + 0x5c);
      }
      else {
        iVar5 = *(int *)((int)this + 0x60);
      }
      if (iVar5 == 0) {
        pvVar8 = (void *)0x0;
      }
      else {
        pvVar8 = *(void **)(iVar5 + 0x58);
      }
      iVar5 = FUN_00b01f30(pvVar8,(undefined4 *)0x0);
      local_b0 = *param_2;
      fVar17 = param_2[1];
      afStack_a8[0] = param_2[2];
      fStack_74 = 0.0;
      local_80.level = 0;
      local_80.z = 0.0;
      local_80.x = 0.0;
      local_40 = 0.0;
      fStack_3c = 0.0;
      fStack_38 = 0.0;
      fStack_34 = 0.0;
      fStack_ac = fVar17;
      if (iVar5 != 0) {
        if ((pvVar8 != (void *)0x0) &&
           (pvVar6 = Object_GetComponentByMask(pvVar8,DAT_011ea158), pvVar6 != (void *)0x0)) {
          TransformComponent_GetWorldPosition(pvVar6,&local_80.x);
          Lot_WorldPositionToLocalVector(*(void **)((int)this + 0xc),&local_80.x,&local_90);
          LotPoint_ResolveLevelPosition
                    (*(undefined **)((int)this + 0xc),(LotPaintPoint *)((int)this + 0x94),&local_60)
          ;
          local_40 = local_90 - local_60;
          fStack_3c = fStack_8c - fStack_5c;
          fStack_38 = fStack_88 - fStack_58;
          fStack_34 = fStack_84 - fStack_54;
        }
        iVar5 = FUN_007cef40();
        fVar17 = fStack_ac;
        if (iVar5 != 0) {
          local_50 = *(float *)(iVar5 + 0x60);
          fStack_4c = *(float *)(iVar5 + 100);
          fStack_48 = *(float *)(iVar5 + 0x68);
          fStack_44 = *(float *)(iVar5 + 0x6c);
          LotPoint_ResolveLevelPosition
                    (*(undefined **)((int)this + 0xc),(LotPaintPoint *)param_2,&local_30);
          LotPoint_ResolveLevelPosition
                    (*(undefined **)((int)this + 0xc),(LotPaintPoint *)((int)this + 0x94),&local_60)
          ;
          local_90 = local_60 + local_40 + *(float *)((int)this + 0xa0);
          fStack_8c = fStack_5c + fStack_3c + *(float *)((int)this + 0xa4);
          fStack_88 = fStack_58 + fStack_38 + *(float *)((int)this + 0xa8);
          fStack_84 = fStack_54 + fStack_34 + *(float *)((int)this + 0xac);
          pfVar7 = (float *)FUN_00ab1360(*(void **)((int)this + 0xc),&local_80.x);
          fVar17 = *pfVar7;
          fVar18 = pfVar7[1];
          fVar23 = pfVar7[2];
          fVar16 = pfVar7[3];
          fVar11 = (fStack_88 * fVar18 - fStack_8c * fVar23) + fVar16 * local_90;
          fVar15 = (local_90 * fVar23 - fStack_88 * fVar17) + fVar16 * fStack_8c;
          fVar16 = (fStack_8c * fVar17 - local_90 * fVar18) + fVar16 * fStack_88;
          local_a0 = (fVar16 * fVar18 - fVar15 * fVar23) * DAT_0103fd88 + local_90 + pfVar7[4];
          fStack_9c = (fVar11 * fVar23 - fVar16 * fVar17) * DAT_0103fd88 + fStack_8c + pfVar7[5];
          fStack_98 = (fVar15 * fVar17 - fVar11 * fVar18) * DAT_0103fd88 + fStack_88 + pfVar7[6];
          fStack_94 = (fVar11 * fVar17 - fVar11 * fVar17) * DAT_0103fd88 + fStack_84 + pfVar7[7];
          local_90 = DAT_0103fd88;
          fStack_8c = DAT_0103fd88;
          fStack_88 = DAT_0103fd88;
          fStack_84 = DAT_0103fd88;
          pfVar7 = (float *)FUN_00ab1360(*(void **)((int)this + 0xc),&local_80.x);
          fVar17 = *pfVar7;
          fVar18 = pfVar7[1];
          fVar23 = pfVar7[2];
          fVar16 = pfVar7[3];
          fVar11 = (fStack_28 * fVar18 - fStack_2c * fVar23) + fVar16 * local_30;
          fVar15 = (local_30 * fVar23 - fStack_28 * fVar17) + fVar16 * fStack_2c;
          fVar16 = (fStack_2c * fVar17 - local_30 * fVar18) + fVar16 * fStack_28;
          local_20 = (fVar16 * fVar18 - fVar15 * fVar23) * local_90 + local_30 + pfVar7[4];
          fStack_1c = (fVar11 * fVar23 - fVar16 * fVar17) * fStack_8c + fStack_2c + pfVar7[5];
          fStack_18 = (fVar15 * fVar17 - fVar11 * fVar18) * fStack_88 + fStack_28 + pfVar7[6];
          fStack_14 = (fVar11 * fVar17 - fVar11 * fVar17) * fStack_84 + fStack_24 + pfVar7[7];
          local_80.x = fStack_1c - fStack_4c;
          local_80.z = fStack_1c - fStack_4c;
          local_80.level = (int)(fStack_1c - fStack_4c);
          fStack_74 = fStack_1c - fStack_4c;
          local_90 = fStack_9c - fStack_4c;
          fStack_8c = fStack_9c - fStack_4c;
          fStack_88 = fStack_9c - fStack_4c;
          fStack_84 = fStack_9c - fStack_4c;
          fVar17 = fStack_ac;
          if (FLOAT_00fb35b4 < ABS(local_80.x)) {
            fVar17 = local_90 / local_80.x;
            local_90 = (local_20 - local_50) * fVar17 + local_50;
            fStack_8c = (fStack_1c - fStack_4c) * fVar17 + fStack_4c;
            fStack_88 = (fStack_18 - fStack_48) * fVar17 + fStack_48;
            fStack_84 = (fStack_14 - fStack_44) * fVar17 + fStack_44;
            Lot_WorldPositionToLocalVector(*(void **)((int)this + 0xc),&local_90,&local_b0);
            fVar17 = afStack_a8[0];
          }
        }
      }
      local_50 = (local_b0 - *(float *)((int)this + 0x94)) - local_40;
      local_a0 = (fVar17 - *(float *)((int)this + 0x98)) - fStack_38;
      if (ABS(local_a0) + ABS(local_50) < DAT_00fab214) {
        return;
      }
      fStack_9c = local_a0;
      fStack_98 = local_a0;
      fStack_94 = local_a0;
      fStack_4c = local_50;
      fStack_48 = local_50;
      fStack_44 = local_50;
      uVar4 = ObjectTool_DirectionToRawYaw
                        (*(undefined4 *)((int)this + 0xc),local_50,local_a0,&local_b8);
      if ((char)uVar4 == '\0') {
        return;
      }
      if ((pvVar8 == (void *)0x0) ||
         (pvVar8 = Object_GetComponentByMask(pvVar8,DAT_011edf08), pvVar8 == (void *)0x0)) {
        local_c4 = *(float *)((int)this + 0xe0);
      }
      else {
        local_c4 = PlacementLocation_ReadYawWithRefresh(pvVar8);
      }
      cVar2 = *(char *)((int)this + 0x2f7);
      *(float *)((int)this + 0xe0) = local_b8;
      ObjectTool_ApplyCurrentYaw(this,'\0');
      pvVar8 = (void *)FUN_00cfb880((int)this);
      if ((pvVar8 == (void *)0x0) ||
         (pvVar8 = Object_GetComponentByMask(pvVar8,DAT_011edf08), pvVar8 == (void *)0x0)) {
        fVar17 = *(float *)((int)this + 0xe0);
      }
      else {
        fVar17 = PlacementLocation_ReadYawWithRefresh(pvVar8);
        local_b8 = fVar17;
      }
      if ((*(char *)((int)this + 0x2f7) != cVar2) || (_DAT_01084020 < ABS(fVar17 - local_c4))) {
        FUN_00cd04a0(DAT_011ebf78);
      }
      FUN_00d02ac0(this);
      return;
    }
  }
  if (*(char *)((int)this + 0x1cd) == '\0') {
    return;
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar5 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar5 = *(int *)((int)this + 0x60);
  }
  if (iVar5 == 0) {
    return;
  }
  uVar4 = FUN_00d25de0(iVar5);
  if ((char)uVar4 == '\0') {
    return;
  }
  iVar5 = *(int *)((int)this + 0x368);
  if (*(char *)((int)this + 0xb2) != '\0') {
    iVar5 = -iVar5;
  }
  local_bc = (float)(*(int *)((int)this + 0xec) - iVar5) * DAT_00fed10c;
  if (*(char *)((int)this + 0x89) != '\0') {
    fVar10 = (float10)_CIfmod();
    local_bc = (float)((float10)local_bc - fVar10);
  }
  if (*(char *)((int)this + 0x2f7) == '\0') {
    iVar5 = *(int *)((int)this + 0x5c);
  }
  else {
    iVar5 = *(int *)((int)this + 0x60);
  }
  if (iVar5 == 0) {
    pvVar8 = (void *)0x0;
LAB_00d05574:
    pvVar6 = (void *)0x0;
  }
  else {
    pvVar8 = *(void **)(iVar5 + 0x58);
    if (pvVar8 == (void *)0x0) goto LAB_00d05574;
    pvVar6 = Object_GetComponentByMask(pvVar8,DAT_011edf08);
  }
  local_80.x = FLOAT_00fab218;
  local_80.z = FLOAT_00fab218;
  local_80.level = 0;
  ObjectLocation_CopyXZLevel(pvVar6,&local_80.x,&local_80.z,&local_80.level);
  if (param_2[2] == 0.0) {
    fVar10 = FUN_00b084e0(pvVar8,*(int *)((int)this + 0xc),(undefined1 (*) [12])&local_80,'\0');
    local_b8 = (float)fVar10;
  }
  else {
    local_b8 = 0.0;
  }
  fVar18 = *(float *)((int)this + 0xe8) + local_bc;
  fVar17 = *(float *)((int)pvVar6 + 0x24);
  pfVar7 = param_2;
  if (param_2[2] == 0.0) {
    fVar10 = LotLevelHeight_SampleLocalPosition
                       (*(void **)(*(int *)((int)this + 0xc) + 0x290),&local_80);
    fStack_b4 = (float)fVar10;
    fVar10 = FUN_00cfa720(pvVar8,*(void **)((int)this + 0xc));
    fVar17 = (float)(fVar10 - (float10)fStack_b4);
    pfVar7 = extraout_EAX;
    fStack_b4 = fVar17;
  }
  fVar17 = fVar18 - fVar17;
  auVar12._0_4_ = FLOAT_00fab218 * fVar17;
  auVar12._4_4_ = FLOAT_00fab218 * fVar17;
  auVar12._8_4_ = FLOAT_00fab218 * fVar17;
  auVar12._12_4_ = FLOAT_00fab218 * fVar17;
  auVar13._4_4_ = fVar17;
  auVar13._0_4_ = fVar17;
  auVar13._8_4_ = fVar17;
  auVar13._12_4_ = fVar17;
  auVar13 = maxps(auVar12,auVar13);
  auVar14._4_4_ = -(uint)(auVar13._4_4_ <= DAT_01084008);
  auVar14._0_4_ = -(uint)(auVar13._0_4_ <= DAT_01084008);
  auVar14._8_4_ = -(uint)(auVar13._8_4_ <= DAT_01084008);
  auVar14._12_4_ = -(uint)(auVar13._12_4_ <= DAT_01084008);
  iVar5 = movmskps(pfVar7,auVar14);
  if (iVar5 == 0xf) goto LAB_00d057bd;
  uVar4 = FUN_00b04ea0(*(void **)((int)this + 0xc),param_2);
  fVar17 = DAT_01083f74;
  if ((char)uVar4 == '\0') {
    fVar17 = 0.0;
  }
  bVar3 = fVar17 <= *(float *)((int)this + 0xf0) + fVar18;
  bVar1 = DAT_01083f70 < *(float *)((int)this + 0xf4) + fVar18;
  iVar5 = *(int *)((int)this + 0xf8);
  *(undefined4 *)((int)this + 0xf8) = 0x5aed10d;
  if ((!bVar3) || (bVar1)) {
    iVar5 = 0x5aed110 - (uint)bVar3;
    *(int *)((int)this + 0xf8) = iVar5;
    if (iVar5 == 0x5aed110) {
      if (local_bc < *(float *)((int)this + 0xe4)) {
LAB_00d0584f:
        FUN_00cd04a0(DAT_011ebf50);
      }
    }
    else if ((iVar5 == 0x5aed10f) &&
            (*(float *)((int)this + 0xe4) <= local_bc && local_bc != *(float *)((int)this + 0xe4)))
    goto LAB_00d0584f;
  }
  else {
    local_b0 = FLOAT_00fab218;
    fStack_ac = FLOAT_00fab218;
    afStack_a8[0] = 0.0;
    ObjectLocation_CopyXZLevel(pvVar6,&local_b0,&fStack_ac,afStack_a8);
    uVar21 = *(undefined1 *)((int)this + 0x1de);
    fStack_b4 = (float)(CONCAT31(fStack_b4._1_3_,(char)(*(uint *)((int)pvVar6 + 0x2c) >> 5)) &
                       0xffffff01);
    pvVar8 = (void *)((int)this + 0x270);
    iVar19 = *(int *)((int)this + 0xc);
    pfVar7 = &local_b0;
    fVar17 = fVar18;
    fVar23 = fStack_b4;
    pvVar6 = pvVar8;
    cVar2 = DAT_011ee7b8;
    iVar9 = FUN_00cfb880((int)this);
    cVar2 = FUN_00ccdad0(iVar9,iVar19,pfVar7,fVar17,cVar2,uVar21,SUB41(fVar23,0),pvVar6);
    if (cVar2 == '\0') {
      bVar3 = FUN_00ad6f10((int)pvVar8);
      if (bVar3) {
        FUN_00cd3890(pvVar8,1,'\x01');
        FUN_00cd04a0(DAT_011ebf50);
        *(undefined1 *)((int)this + 0x1d1) = 1;
      }
    }
    else {
      fVar18 = fVar18 + local_b8;
      uVar24 = 0;
      piVar20 = *(int **)((int)this + 0xc);
      pauVar22 = (undefined1 (*) [12])&local_b0;
      pvVar8 = (void *)FUN_00cfb100((int)this);
      FUN_00d26a80(pvVar8,piVar20,pauVar22,fVar18,uVar24);
      if (*(char *)((int)this + 0x89) != '\0') {
        FUN_00cd04a0(DAT_011ebf78);
      }
    }
    if (iVar5 == 0x5aed10d) goto LAB_00d057bd;
  }
  ObjectTool_UpdateHeldCursor((int)this);
LAB_00d057bd:
  *(float *)((int)this + 0xe4) = local_bc;
  return;
}

