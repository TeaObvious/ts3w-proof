/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: PC1.67. Caller-cleaned lot pointer and pointer to X/Z/level words; boolean consumed in
   AL. Distinguishes integer vertex, cell centre, edge and interior with binary32 absolute
   epsilon1.5258789e-05. Vertex delegates00AFF160; centre/interior/adjacent edge tiles
   delegate00AFED60, with centre mode1 and other mode0. Child layer/product semantics are not
   established by this body alone. */

undefined4 __cdecl Lot_TestPlatformAtLocalXZLevel(void *param_1,float *param_2)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined4 extraout_EAX;
  int iVar4;
  undefined4 uVar5;
  undefined4 extraout_ECX;
  int iVar6;
  bool bVar7;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  float fVar10;
  float fVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  double dVar19;
  undefined4 local_40;
  undefined4 local_3c;
  float local_38;
  float local_34;
  float local_30 [2];
  float local_28;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  
  local_3c = *param_2;
  dVar19 = floor((double)local_3c);
  local_38 = (float)dVar19;
  local_30[0] = local_3c - local_38;
  local_40 = param_2[1];
  dVar19 = floor((double)local_40);
  local_34 = (float)dVar19;
  auVar14._0_4_ = FLOAT_00fab218 * local_30[0];
  auVar14._4_4_ = FLOAT_00fab218 * local_30[0];
  auVar14._8_4_ = FLOAT_00fab218 * local_30[0];
  auVar14._12_4_ = FLOAT_00fab218 * local_30[0];
  auVar15._4_4_ = local_30[0];
  auVar15._0_4_ = local_30[0];
  auVar15._8_4_ = local_30[0];
  auVar15._12_4_ = local_30[0];
  auVar15 = maxps(auVar14,auVar15);
  auVar16._4_4_ = -(uint)(auVar15._4_4_ <= DAT_0106b7a8);
  auVar16._0_4_ = -(uint)(auVar15._0_4_ <= DAT_0106b7a8);
  auVar16._8_4_ = -(uint)(auVar15._8_4_ <= DAT_0106b7a8);
  auVar16._12_4_ = -(uint)(auVar15._12_4_ <= DAT_0106b7a8);
  iVar4 = movmskps(extraout_EAX,auVar16);
  fVar10 = local_40 - local_34;
  auVar17._0_4_ = FLOAT_00fab218 * fVar10;
  auVar17._4_4_ = FLOAT_00fab218 * fVar10;
  auVar17._8_4_ = FLOAT_00fab218 * fVar10;
  auVar17._12_4_ = FLOAT_00fab218 * fVar10;
  auVar2._4_4_ = fVar10;
  auVar2._0_4_ = fVar10;
  auVar2._8_4_ = fVar10;
  auVar2._12_4_ = fVar10;
  auVar15 = maxps(auVar17,auVar2);
  auVar18._4_4_ = -(uint)(auVar15._4_4_ <= DAT_0106b7a8);
  auVar18._0_4_ = -(uint)(auVar15._0_4_ <= DAT_0106b7a8);
  auVar18._8_4_ = -(uint)(auVar15._8_4_ <= DAT_0106b7a8);
  auVar18._12_4_ = -(uint)(auVar15._12_4_ <= DAT_0106b7a8);
  iVar6 = movmskps(extraout_ECX,auVar18);
  bVar7 = iVar6 == 0xf;
  if (iVar4 != 0xf) {
    if (!bVar7) {
      fVar11 = local_30[0] - _DAT_00f9b5b4;
      auVar12._0_4_ = FLOAT_00fab218 * fVar11;
      auVar12._4_4_ = FLOAT_00fab218 * fVar11;
      auVar12._8_4_ = FLOAT_00fab218 * fVar11;
      auVar12._12_4_ = FLOAT_00fab218 * fVar11;
      auVar3._4_4_ = fVar11;
      auVar3._0_4_ = fVar11;
      auVar3._8_4_ = fVar11;
      auVar3._12_4_ = fVar11;
      auVar15 = maxps(auVar12,auVar3);
      auVar13._4_4_ = -(uint)(auVar15._4_4_ <= DAT_0106b7a8);
      auVar13._0_4_ = -(uint)(auVar15._0_4_ <= DAT_0106b7a8);
      auVar13._8_4_ = -(uint)(auVar15._8_4_ <= DAT_0106b7a8);
      auVar13._12_4_ = -(uint)(auVar15._12_4_ <= DAT_0106b7a8);
      iVar4 = movmskps(CONCAT31((int3)((uint)iVar4 >> 8),bVar7),auVar13);
      if (iVar4 == 0xf) {
        fVar10 = fVar10 - _DAT_00f9b5b4;
        auVar8._0_4_ = FLOAT_00fab218 * fVar10;
        auVar8._4_4_ = FLOAT_00fab218 * fVar10;
        auVar8._8_4_ = FLOAT_00fab218 * fVar10;
        auVar8._12_4_ = FLOAT_00fab218 * fVar10;
        auVar1._4_4_ = fVar10;
        auVar1._0_4_ = fVar10;
        auVar1._8_4_ = fVar10;
        auVar1._12_4_ = fVar10;
        auVar15 = maxps(auVar8,auVar1);
        auVar9._4_4_ = -(uint)(auVar15._4_4_ <= DAT_0106b7a8);
        auVar9._0_4_ = -(uint)(auVar15._0_4_ <= DAT_0106b7a8);
        auVar9._8_4_ = -(uint)(auVar15._8_4_ <= DAT_0106b7a8);
        auVar9._12_4_ = -(uint)(auVar15._12_4_ <= DAT_0106b7a8);
        iVar4 = movmskps(iVar6,auVar9);
        if (iVar4 == 0xf) {
          local_40 = (float)CONCAT13(local_40._3_1_,0xffff);
          FUN_00af7730(param_2,(char *)&local_40);
          local_3c = (float)CONCAT13(0xf,SUB43(local_40,0));
          uVar5 = FUN_00afed60(param_1,(char *)&local_3c,'\x01');
          return uVar5;
        }
      }
      local_40 = -1.714704e+38;
      LotLocation_EncodeCellAndQuadrant(param_2,(char *)&local_40);
      uVar5 = FUN_00afed60(param_1,(char *)&local_40,'\0');
      return uVar5;
    }
    local_3c = local_38;
  }
  else {
    if (bVar7) {
      local_3c = (float)(int)ROUND(local_40);
      local_30[0] = *param_2;
      local_38 = (float)(int)ROUND(local_30[0]);
      local_40._0_3_ =
           CONCAT12(*(undefined1 *)(param_2 + 2),CONCAT11(SUB41(local_3c,0),local_38._0_1_));
      uVar5 = FUN_00aff160(param_1,(undefined2 *)&local_40);
      return uVar5;
    }
    dVar19 = floor((double)(local_3c + _DAT_00f9b5b4));
    local_3c = (float)dVar19;
  }
  if (iVar4 != 0xf) {
    dVar19 = floor((double)(local_40 + _DAT_00f9b5b4));
    local_24 = (float)dVar19;
    local_28 = local_3c + FLOAT_00f998f8;
    local_18 = local_24;
    local_30[0] = local_24;
  }
  else {
    local_24 = local_34 + FLOAT_00f998f8;
    local_28 = local_3c;
    local_18 = local_34;
  }
  local_20 = param_2[2];
  local_1c = local_3c;
  local_14 = local_20;
  FUN_00784df0(local_30,&local_1c,&local_28);
  local_40 = -1.714704e+38;
  local_3c = -1.714704e+38;
  WallLocator_QueryFirstAdjacentTile((char *)local_30,(undefined2 *)&local_40);
  uVar5 = FUN_00afed60(param_1,(char *)&local_40,'\0');
  if ((char)uVar5 == '\0') {
    WallLocator_QueryOtherAdjacentTile((undefined2 *)local_30,(undefined2 *)&local_3c);
    uVar5 = FUN_00afed60(param_1,(char *)&local_3c,'\0');
    return uVar5;
  }
  return CONCAT31((int3)((uint)uVar5 >> 8),1);
}

