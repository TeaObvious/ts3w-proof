/* PC1.67 original static contract. Options are the stack word at EBP+1C. Zero does not have an
   unsupported/early-rejection branch. Find lot by world XZ; select lot path only when a lot exists
   AND owner component mask intersects global011EDF08. Otherwise use world branch C7A147 (200000
   waiver, B010F0/C72D10, optional400000 C73230). Context base ESP+F0; C79EAD SHR9/AND1 then C79EB3
   writes ESP+11D = context+2D from flag200. This does not prove downstream door-mask policy.
   Later83E3E0 overlap and terrain-option checks can still reject. Boolean result AL only;
   stack/SIMD aliases in C are provisional. */

uint __cdecl
WorldPlacement_TestPositionAndRotation
          (void *param_1,uint *param_2,int param_3,float *param_4,float *param_5,uint param_6,
          void *param_7)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  char cVar4;
  bool bVar5;
  int *lot;
  undefined4 uVar6;
  int *piVar7;
  uint uVar8;
  undefined4 extraout_EAX;
  int iVar9;
  uint *puVar10;
  float10 fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  undefined1 auVar15 [16];
  float fVar16;
  float fVar19;
  float fVar20;
  undefined1 auVar17 [16];
  undefined1 auVar18 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  double dVar23;
  undefined4 uStack_368;
  undefined1 auStack_350 [8];
  float local_348;
  float local_344;
  float fStack_340;
  float fStack_33c;
  float fStack_338;
  float fStack_334;
  uint *local_328;
  uint *local_324;
  undefined4 local_320;
  char *local_31c;
  uint uStack_318;
  void *local_314;
  float fStack_310;
  float fStack_30c;
  float fStack_308;
  undefined8 uStack_304;
  undefined8 uStack_2fc;
  float fStack_2f4;
  uint auStack_2f0 [4];
  float fStack_2e0;
  float fStack_2dc;
  float fStack_2d8;
  float fStack_2d4;
  int iStack_2d0;
  int iStack_2cc;
  uint uStack_2c8;
  uint uStack_2c4;
  uint auStack_2c0 [4];
  float fStack_2b0;
  float fStack_2ac;
  float fStack_2a8;
  float fStack_2a4;
  undefined4 uStack_2a0;
  undefined4 uStack_29c;
  uint uStack_298;
  uint uStack_294;
  void *pvStack_290;
  int *piStack_28c;
  float fStack_288;
  float fStack_284;
  float fStack_280;
  float fStack_27c;
  float fStack_278;
  byte bStack_264;
  byte bStack_263;
  byte bStack_262;
  byte bStack_261;
  byte bStack_260;
  undefined1 auStack_25c [4];
  void *pvStack_258;
  uint uStack_254;
  undefined4 uStack_250;
  byte bStack_20f;
  byte bStack_20c;
  byte bStack_20b;
  byte bStack_20a;
  byte bStack_209;
  byte bStack_208;
  byte bStack_207;
  byte bStack_206;
  void *pvStack_1f0;
  void *pvStack_1c0;
  float fStack_1b4;
  float fStack_1b0;
  float fStack_1ac;
  float fStack_1a8;
  float local_1a0 [3];
  undefined4 uStack_194;
  float fStack_184;
  float fStack_180;
  float fStack_17c;
  float fStack_178;
  undefined1 auStack_170 [12];
  undefined4 *puStack_164;
  undefined4 *puStack_148;
  undefined4 *puStack_12c;
  undefined4 *puStack_110;
  undefined4 auStack_ec [2];
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  uint auStack_d0 [12];
  uint local_a0 [12];
  uint local_70 [12];
  uint local_40 [15];
  
  fStack_2f4 = param_4[3];
  uStack_304._4_4_ = *param_4;
  uStack_2fc._0_4_ = param_4[1];
  uStack_2fc._4_4_ = param_4[2];
  uStack_368 = 2.3509887e-38;
  local_314 = DAT_011edbc4;
  lot = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,*param_4,param_4[2]);
  if ((lot == (int *)0x0) || ((*(uint *)((int)param_1 + 0x2c) & DAT_011edf08) == 0)) {
    if ((((param_6 & 0x200000) == 0) && (uVar6 = FUN_00b010f0(param_1), (char)uVar6 == '\0')) &&
       (uVar6 = FUN_00c72d10(param_1,param_4,param_5), (char)uVar6 == '\0')) {
      uStack_368 = 0.0;
      if (param_7 == (void *)0x0) goto LAB_00c7a20d;
      if (lot == (int *)0x0) {
        FUN_00c721e0(local_40,0,0,0x3f,param_4,0,0);
        puVar10 = local_40;
      }
      else {
        FUN_00c721e0(local_a0,lot[0x12],lot[0x13],0x3f,param_4,0,0);
        puVar10 = local_a0;
      }
    }
    else {
      if ((((param_6 & 0x400000) == 0) ||
          (uVar6 = FUN_00c73230(param_1,param_4,param_5,(void *)0x0), (char)uVar6 != '\0')) ||
         (uStack_368 = 0.0, param_7 == (void *)0x0)) goto LAB_00c7a20d;
      FUN_00c721e0(local_70,0,0,0x3d,param_4,0,0);
      puVar10 = local_70;
    }
    uStack_368 = 0.0;
    FUN_00c79990(param_7,puVar10);
  }
  else {
    auStack_350._4_4_ = -1.0;
    local_348 = -1.0;
    local_344 = 0.0;
    Lot_WorldPositionToPortalLocalXZLevel(lot,param_4,(TS3WPortalXZLevel *)(auStack_350 + 4));
    (**(code **)(*lot + 100))(local_1a0);
    fVar11 = LotLevelHeight_SampleLocalPosition((void *)lot[0xa4],(LotXZLevel *)auStack_350);
    fStack_d8 = param_4[1];
    fVar12 = (float)fVar11;
    fVar16 = *param_5;
    fVar19 = param_5[1];
    fVar20 = param_5[2];
    fVar14 = param_5[3];
    fStack_e4 = fStack_d8 - fVar12;
    fStack_e0 = fStack_d8 - fVar12;
    fStack_dc = fStack_d8 - fVar12;
    fStack_d8 = fStack_d8 - fVar12;
    local_314 = (void *)(fStack_e4 - local_1a0[0]);
    fStack_310 = fStack_e0 - local_1a0[0];
    fStack_30c = fStack_dc - local_1a0[0];
    fStack_308 = fStack_d8 - local_1a0[0];
    fVar12 = (fVar19 * 1.0 - fVar20 * 0.0) + fVar14 * 0.0;
    fVar13 = (fVar20 * 0.0 - fVar16 * 1.0) + fVar14 * 0.0;
    fVar14 = (fVar16 * 0.0 - fVar19 * 0.0) + fVar14 * 1.0;
    auVar21._0_4_ = (fVar14 * fVar19 - fVar13 * fVar20) * 2.0 + 0.0;
    auVar21._4_4_ = (fVar12 * fVar20 - fVar14 * fVar16) * 2.0 + 0.0;
    auVar21._8_4_ = (fVar13 * fVar16 - fVar12 * fVar19) * 2.0 + 1.0;
    auVar21._12_4_ = (fVar12 * fVar16 - fVar12 * fVar16) * 2.0 + 0.0;
    uStack_2fc = auVar21._8_8_;
    uStack_304._4_4_ = 0;
    uStack_304._0_4_ = auVar21._0_4_;
    fVar12 = auVar21._8_4_ * auVar21._8_4_ + 0.0 + auVar21._0_4_ * auVar21._0_4_;
    auVar2._4_4_ = fVar12;
    auVar2._0_4_ = fVar12;
    auVar2._8_4_ = fVar12;
    auVar2._12_4_ = fVar12;
    auVar22 = rsqrtps(auVar21,auVar2);
    fVar16 = auVar22._0_4_;
    fVar19 = auVar22._4_4_;
    fVar20 = auVar22._8_4_;
    fVar14 = auVar22._12_4_;
    fVar16 = (1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16;
    fVar19 = (1.0 - fVar19 * fVar19 * fVar12) * fVar19 * 0.5 + fVar19;
    fVar20 = (1.0 - fVar20 * fVar20 * fVar12) * fVar20 * 0.5 + fVar20;
    fVar14 = (1.0 - fVar14 * fVar14 * fVar12) * fVar14 * 0.5 + fVar14;
    fStack_184 = ((1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16) * auVar21._0_4_;
    fStack_180 = ((1.0 - fVar19 * fVar19 * fVar12) * fVar19 * 0.5 + fVar19) * 0.0;
    fStack_17c = ((1.0 - fVar20 * fVar20 * fVar12) * fVar20 * 0.5 + fVar20) * auVar21._8_4_;
    fStack_178 = ((1.0 - fVar14 * fVar14 * fVar12) * fVar14 * 0.5 + fVar14) * auVar21._12_4_;
    auVar17._8_4_ = 0x3f800000;
    auVar17._0_8_ = 0x3f8000003f800000;
    auVar17._12_4_ = 0x3f800000;
    auVar22 = rsqrtps(ZEXT416(0),auVar17);
    fVar12 = auVar22._0_4_;
    fVar16 = auVar22._4_4_;
    fVar19 = auVar22._8_4_;
    fVar20 = auVar22._12_4_;
    fStack_1b4 = ((1.0 - fVar12 * fVar12 * 1.0) * fVar12 * 0.5 + fVar12) * 0.0;
    fStack_1b0 = ((1.0 - fVar16 * fVar16 * 1.0) * fVar16 * 0.5 + fVar16) * 0.0;
    fStack_1ac = ((1.0 - fVar19 * fVar19 * 1.0) * fVar19 * 0.5 + fVar19) * 1.0;
    fStack_1a8 = ((1.0 - fVar20 * fVar20 * 1.0) * fVar20 * 0.5 + fVar20) * 0.0;
    auVar18._0_4_ = fStack_184 * fStack_184;
    auVar18._4_4_ = fStack_180 * fStack_180;
    auVar18._8_4_ = fStack_17c * fStack_17c;
    auVar18._12_4_ = fStack_178 * fStack_178;
    fVar12 = auVar18._8_4_ + auVar18._4_4_ + auVar18._0_4_;
    auVar22._4_4_ = fVar12;
    auVar22._0_4_ = fVar12;
    auVar22._8_4_ = fVar12;
    auVar22._12_4_ = fVar12;
    auVar22 = rsqrtps(auVar18,auVar22);
    fVar16 = auVar22._0_4_;
    fVar19 = auVar22._4_4_;
    fVar20 = auVar22._8_4_;
    fVar14 = auVar22._12_4_;
    fStack_184 = ((1.0 - fVar16 * fVar16 * fVar12) * fVar16 * 0.5 + fVar16) * fStack_184;
    fStack_180 = ((1.0 - fVar19 * fVar19 * fVar12) * fVar19 * 0.5 + fVar19) * fStack_180;
    fStack_17c = ((1.0 - fVar20 * fVar20 * fVar12) * fVar20 * 0.5 + fVar20) * fStack_17c;
    fStack_178 = ((1.0 - fVar14 * fVar14 * fVar12) * fVar14 * 0.5 + fVar14) * fStack_178;
    fVar12 = fStack_17c * fStack_1ac + fStack_180 * fStack_1b0 + fStack_184 * fStack_1b4;
    auVar15._4_4_ = fVar12;
    auVar15._0_4_ = fVar12;
    auVar15._8_4_ = fVar12;
    auVar15._12_4_ = fVar12;
    auVar1._8_4_ = 0xbf800000;
    auVar1._0_8_ = 0xbf800000bf800000;
    auVar1._12_4_ = 0xbf800000;
    auVar22 = maxps(auVar15,auVar1);
    auVar3._8_4_ = 0x3f800000;
    auVar3._0_8_ = 0x3f8000003f800000;
    auVar3._12_4_ = 0x3f800000;
    minps(auVar22,auVar3);
    fVar11 = (float10)_CIacos();
    local_344 = (float)fVar11;
    uStack_194 = 0;
    if ((fStack_180 * fStack_1b4 - fStack_184 * fStack_1b0) * 0.0 +
        (fStack_184 * fStack_1ac - fStack_17c * fStack_1b4) * 1.0 +
        (fStack_17c * fStack_1b0 - fStack_180 * fStack_1ac) * 0.0 < 0.0) {
      local_344 = 6.2831855 - local_344;
    }
    uStack_368 = local_344 * 0.15915494;
    fStack_340 = local_344;
    fStack_33c = local_344;
    fStack_338 = local_344;
    dVar23 = floor((double)uStack_368);
    uStack_368 = uStack_368 - (float)dVar23;
    if (0.5 < uStack_368) {
      uStack_368 = uStack_368 - 1.0;
    }
    uStack_368 = uStack_368 * 6.2831855;
    fVar11 = (float10)(**(code **)(*lot + 0x68))();
    FUN_00793b80(&pvStack_290);
    fStack_288 = (float)auStack_350._4_4_;
    fStack_284 = local_348;
    fStack_280 = local_344;
    bStack_264 = (byte)(param_6 >> 6) & 1;
    bStack_263 = (byte)(param_6 >> 9) & 1;
    bStack_20c = (byte)(param_6 >> 0xd) & 1;
    bStack_260 = (byte)(param_6 >> 4) & 1;
    bStack_262 = (byte)(param_6 >> 0xf) & 1;
    bStack_261 = (byte)(param_6 >> 0x10) & 1;
    bStack_20b = (byte)(param_6 >> 0xb) & 1;
    bStack_20a = (byte)(param_6 >> 0xc) & 1;
    bStack_209 = (byte)(param_6 >> 0x11) & 1;
    bStack_206 = (byte)(param_6 >> 0x19) & 1;
    bStack_208 = (byte)(param_6 >> 0x12) & 1;
    bStack_207 = (byte)(param_6 >> 0x14) & 1;
    pvStack_290 = param_1;
    fStack_278 = fStack_310;
    piStack_28c = lot;
    fStack_27c = (float)((float10)0.0 - fVar11);
    if (0 < param_3) {
      iVar9 = param_3;
      puVar10 = param_2;
      do {
        uStack_318 = uStack_318 & 0xffffff00;
        FUN_006288f0(auStack_25c,auStack_ec,puVar10);
        puVar10 = puVar10 + 2;
        iVar9 = iVar9 + -1;
      } while (iVar9 != 0);
    }
    iVar9 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)param_1 + 0x18));
    uVar6 = FUN_00533990(iVar9);
    bStack_20f = (byte)((uint)uVar6 >> 0x18) & 1;
    if (param_7 == (void *)0x0) {
      cVar4 = FUN_00b45930((int *)&pvStack_290,(void *)0x0);
      if (cVar4 == '\0') {
        uStack_368 = 0.0;
      }
    }
    else {
      FUN_00ad7740((int)auStack_170);
      cVar4 = FUN_00b45930((int *)&pvStack_290,auStack_170);
      if (cVar4 == '\0') {
        uStack_368 = 0.0;
        iVar9 = FUN_007e51a0(auStack_170);
        piVar7 = *(int **)(iVar9 + 8);
        iVar9 = FUN_007e51a0(auStack_170);
        if (piVar7 != (int *)(iVar9 + 4)) {
          do {
            FUN_00c72180(auStack_d0,lot[0x12],lot[0x13],piVar7 + 4);
            FUN_00c79990(param_7,auStack_d0);
            piVar7 = FUN_004e1030(piVar7);
            iVar9 = FUN_007e51a0(auStack_170);
          } while (piVar7 != (int *)(iVar9 + 4));
        }
      }
      FUN_00a527c0(puStack_110);
      FUN_00a527c0(puStack_12c);
      FUN_00a527c0(puStack_148);
      FUN_00a52780(puStack_164);
    }
    if (pvStack_1c0 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_1c0);
    }
    if (pvStack_1f0 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_1f0);
    }
    FUN_0073ebe0((int)pvStack_258,uStack_254);
    uStack_250 = 0;
    if (1 < uStack_254) {
      Memory_FreeIfNonNull(pvStack_258);
    }
  }
LAB_00c7a20d:
  local_328 = (uint *)0x0;
  local_324 = (uint *)0x0;
  local_320 = 0;
  local_31c = "World/ObjectPlacementTests";
  if (((uStack_368._3_1_ != '\0') &&
      (bVar5 = FUN_0083e3e0(DAT_011da140,param_1,param_4,param_5,(int *)&local_328), bVar5)) &&
     (puVar10 = local_328, local_328 != local_324)) {
    do {
      iVar9 = 0;
      if (0 < param_3) {
        do {
          if ((param_2[iVar9 * 2] == *puVar10) && (param_2[iVar9 * 2 + 1] == puVar10[1]))
          goto LAB_00c7a33f;
          iVar9 = iVar9 + 1;
        } while (iVar9 < param_3);
      }
      if (param_7 == (void *)0x0) {
LAB_00c7a335:
        uStack_368 = 0.0;
      }
      else {
        if (lot == (int *)0x0) {
          uStack_294 = puVar10[1];
          uStack_2a0 = 0;
          uStack_29c = 0;
          uStack_298 = *puVar10;
          auStack_2c0[0] = 0x11;
          fStack_2b0 = *param_4;
          fStack_2ac = param_4[1];
          fStack_2a8 = param_4[2];
          fStack_2a4 = param_4[3];
          FUN_00c79990(param_7,auStack_2c0);
          goto LAB_00c7a335;
        }
        iStack_2d0 = lot[0x12];
        iStack_2cc = lot[0x13];
        uStack_2c8 = *puVar10;
        uStack_2c4 = puVar10[1];
        auStack_2f0[0] = 0x11;
        fStack_2e0 = *param_4;
        fStack_2dc = param_4[1];
        fStack_2d8 = param_4[2];
        fStack_2d4 = param_4[3];
        FUN_00c79990(param_7,auStack_2f0);
        uStack_368 = 0.0;
      }
LAB_00c7a33f:
      puVar10 = puVar10 + 2;
    } while (puVar10 != local_324);
  }
  if ((local_314 != (void *)0x0) && (uStack_368._3_1_ != '\0')) {
    if ((param_6 & 0x800) == 0) {
      if ((param_6 & 0x1000) == 0) {
        if ((param_6 & 0x20000) != 0) {
          fStack_340 = *param_4;
          fStack_33c = param_4[1];
          fStack_338 = param_4[2];
          fStack_334 = param_4[3];
          uStack_304._0_4_ = fStack_334;
          fStack_310 = fStack_340;
          fStack_30c = fStack_33c;
          fStack_308 = fStack_338;
          uVar8 = FUN_00c6bf00(local_314,fStack_340,fStack_338,0,8);
          uStack_368._3_1_ = uVar8 == 6;
        }
      }
      else {
        fStack_340 = *param_4;
        fStack_33c = param_4[1];
        fStack_338 = param_4[2];
        fStack_334 = param_4[3];
        uStack_304._0_4_ = fStack_334;
        fStack_310 = fStack_340;
        fStack_30c = fStack_33c;
        fStack_308 = fStack_338;
        uVar8 = FUN_00c6bf00(local_314,fStack_340,fStack_338,0,0x27);
        uVar6 = FUN_00afd570(uVar8);
        uStack_368._3_1_ = (char)uVar6;
      }
    }
    else {
      fStack_340 = *param_4;
      fStack_33c = param_4[1];
      fStack_338 = param_4[2];
      fStack_334 = param_4[3];
      uStack_304._0_4_ = fStack_334;
      fStack_310 = fStack_340;
      fStack_30c = fStack_33c;
      fStack_308 = fStack_338;
      uVar8 = FUN_00c6bf00(local_314,fStack_340,fStack_338,0,0x27);
      uVar6 = FUN_00afd530(uVar8);
      uStack_368._3_1_ = (char)uVar6;
    }
  }
  uVar6 = 0;
  if (local_328 != (uint *)0x0) {
    Memory_FreeIfNonNull(local_328);
    uVar6 = extraout_EAX;
  }
  return CONCAT31((int3)((uint)uVar6 >> 8),uStack_368._3_1_);
}
