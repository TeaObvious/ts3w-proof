/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Physical ECX receiver plus four stack words: two point pointers, optional error record and low-byte flag; RET10, EAX status. Validation only, not roof purchase/publication/funds. The resolved-type local rendered as int pointer is a scalar code consumed by D0CE70. D0A7C0 has a partial owned definition; its nonnull successor is outside that body. Native height comparison narrows B to binary32 before A minus B; do not substitute guessed C floating precision. Status3 follows receiver+60, 4 absent product, 10 A64080, 9 CBC3D0, 11 CBC330, 8 corner refusal, 2 degenerate, 1 excessive signed level, 6 D0A200, optional5 D0BA60 and7 D0CE70; helper internals and complete initialized/error/exception/ABI paths remain unexpanded. Coordinates, type helpers and room/wall/resource ownership are not inferred from names. */

int __thiscall FUN_00d0d3f0(void *this,float *param_1,float *param_2,void *param_3,char param_4)

{
  float fVar1;
  char cVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  float *pfVar9;
  undefined4 extraout_EDX;
  int iVar10;
  float10 fVar11;
  float10 fVar12;
  float fVar13;
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  float fVar17;
  float fVar18;
  int local_390;
  void *local_380;
  float local_37c;
  float local_378;
  float local_374;
  float local_370;
  float local_36c;
  int *local_368;
  float local_364;
  float local_360;
  float local_35c;
  float local_358;
  LotPaintPoint local_354;
  LotPaintPoint local_348;
  uint local_33c;
  float local_338;
  float local_334;
  undefined4 local_330;
  LotPaintPoint local_32c;
  float local_320;
  float fStack_31c;
  float fStack_318;
  float fStack_314;
  undefined1 local_310 [64];
  undefined1 local_2d0 [64];
  undefined1 local_290 [64];
  undefined1 local_250 [64];
  undefined1 local_210 [64];
  undefined1 local_1d0 [64];
  undefined1 local_190 [64];
  undefined1 local_150 [64];
  undefined1 local_110 [64];
  undefined1 local_d0 [64];
  undefined1 local_90 [64];
  undefined1 local_50 [76];
  
  if (*(char *)((int)this + 0x60) != '\0') {
    return 3;
  }
  local_380 = (void *)0x0;
  local_368 = (int *)FUN_00d0a7c0((uint *)((int)this + 0x88),param_1,param_2,(int *)&local_380);
  if ((local_368 == (int *)0x0) || (local_380 == (void *)0x0)) {
    return 4;
  }
  uVar3 = FUN_00a64080(*(void **)((int)this + 0xc),local_368,param_1,param_2,param_3);
  if ((char)uVar3 != '\0') {
    return 10;
  }
  uVar3 = FUN_00cbc3d0(*(int *)((int)this + 0xc),param_1,param_2,(int)local_368,param_3);
  if ((char)uVar3 == '\0') {
    return 9;
  }
  uVar4 = FUN_00cbc720(*(int *)((int)this + 0xc),param_1);
  uVar5 = FUN_00cbc720(*(int *)((int)this + 0xc),param_2);
  local_354.x = -1.0;
  local_354.level = 0;
  local_348.level = 0;
  local_354.z = local_354.x;
  local_348.x = local_354.x;
  local_348.z = local_354.x;
  uVar6 = RoofProduct_ReadDiagonalFlag(local_380);
  if ((char)uVar6 == '\0') {
    local_354.x = *param_1;
    local_354.level = (int)param_1[2];
    local_354.z = param_2[1];
    local_348.x = *param_2;
    local_348.z = param_1[1];
    local_348.level = local_354.level;
  }
  else {
    FUN_00afc0f0(param_1,param_2,&local_36c,&local_358,&local_374,&local_364);
    FUN_00af6a90(local_36c,local_358,local_374,local_364,&local_370,&local_35c,&local_37c,&local_360
                );
    local_354.level = (int)param_1[2];
    local_354.z = local_35c;
    local_348.x = local_37c;
    local_348.z = local_360;
    local_354.x = local_370;
    local_33c = (uint)ROUND(local_370 * 2.0);
    if ((local_33c & 1) != 0) {
      return 0xb;
    }
    local_378 = (float)(int)ROUND(local_37c * 2.0);
    if (((uint)local_378 & 1) != 0) {
      return 0xb;
    }
    local_348.level = local_354.level;
    uVar3 = FUN_00cbc330(param_1,param_2,'\x01');
    if ((char)uVar3 != '\0') {
      return 0xb;
    }
  }
  uVar6 = FUN_00cbc720(*(int *)((int)this + 0xc),&local_354.x);
  uVar7 = FUN_00cbc720(*(int *)((int)this + 0xc),&local_348.x);
  uVar8 = FUN_00c02b90(*(int *)((int)local_380 + 0x88));
  if ((char)uVar8 != '\0') {
    fVar1 = ABS(*param_2 - *param_1);
    fVar13 = (*param_2 + *param_1) * 0.5;
    fVar18 = ABS(param_2[1] - param_1[1]);
    fVar17 = (param_1[1] + param_2[1]) * 0.5;
    fVar1 = SQRT(fVar18 * fVar18 + fVar1 * fVar1) * 0.5;
    if (*(int *)((int)local_380 + 0x88) == 8) {
      fVar18 = 1.0;
    }
    else {
      fVar18 = 0.0;
    }
    if ((((fVar13 - fVar1 < fVar18) || (fVar17 - fVar1 < fVar18)) ||
        ((float)*(int *)(*(int *)((int)this + 0xc) + 0x174) - fVar18 < fVar13 + fVar1)) ||
       ((float)*(int *)(*(int *)((int)this + 0xc) + 0x178) - fVar18 < fVar17 + fVar1)) {
      if (param_3 != (void *)0x0) {
        pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                    (local_210,2,*(undefined **)((int)this + 0xc),
                                     (LotPaintPoint *)param_2,0,0);
        FUN_00ad8570(param_3,pfVar9);
        FUN_00ad70d0((int)local_210);
      }
      return 0xb;
    }
  }
  if ((((char)uVar4 == '\0') || ((char)uVar5 == '\0')) ||
     (((char)uVar6 == '\0' || ((char)uVar7 == '\0')))) {
    local_390 = 8;
    if (param_3 != (void *)0x0) {
      if ((char)uVar4 == '\0') {
        pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                    (local_1d0,0xc3,*(undefined **)((int)this + 0xc),
                                     (LotPaintPoint *)param_1,0,0);
        FUN_00ad8570(param_3,pfVar9);
        FUN_00ad70d0((int)local_1d0);
      }
      if ((char)uVar5 == '\0') {
        pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                    (local_150,0xc3,*(undefined **)((int)this + 0xc),
                                     (LotPaintPoint *)param_2,0,0);
        FUN_00ad8570(param_3,pfVar9);
        FUN_00ad70d0((int)local_150);
      }
      if ((char)uVar6 == '\0') {
        pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                    (local_d0,0xc3,*(undefined **)((int)this + 0xc),&local_354,0,0);
        FUN_00ad8570(param_3,pfVar9);
        FUN_00ad70d0((int)local_d0);
      }
      if ((char)uVar7 == '\0') {
        pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                    (local_50,0xc3,*(undefined **)((int)this + 0xc),&local_348,0,0);
        FUN_00ad8570(param_3,pfVar9);
        FUN_00ad70d0((int)local_50);
      }
    }
  }
  else {
    local_390 = 0;
    uVar3 = FUN_00a49b60(param_1,param_2);
    if ((char)uVar3 == '\0') {
      local_338 = -1.0;
      local_330 = 0;
      local_334 = local_338;
      uVar3 = FUN_00a49b60(param_2,&local_338);
      if ((char)uVar3 == '\0') {
        local_320 = 0.05;
        fStack_31c = local_320;
        fStack_318 = local_320;
        fStack_314 = local_320;
        fVar11 = LotLevelHeight_SampleLocalPosition
                           (*(void **)(*(int *)((int)this + 0xc) + 0x290),(LotXZLevel *)param_2);
        fVar12 = LotLevelHeight_SampleLocalPosition
                           (*(void **)(*(int *)((int)this + 0xc) + 0x290),(LotXZLevel *)param_1);
        fVar1 = (float)(fVar12 - (float10)(float)fVar11);
        auVar14._0_4_ = fVar1 * -1.0;
        auVar14._4_4_ = fVar1 * -1.0;
        auVar14._8_4_ = fVar1 * -1.0;
        auVar14._12_4_ = fVar1 * -1.0;
        auVar15._4_4_ = fVar1;
        auVar15._0_4_ = fVar1;
        auVar15._8_4_ = fVar1;
        auVar15._12_4_ = fVar1;
        auVar15 = maxps(auVar14,auVar15);
        auVar16._4_4_ = -(uint)(auVar15._4_4_ <= fStack_31c);
        auVar16._0_4_ = -(uint)(auVar15._0_4_ <= local_320);
        auVar16._8_4_ = -(uint)(auVar15._8_4_ <= fStack_318);
        auVar16._12_4_ = -(uint)(auVar15._12_4_ <= fStack_314);
        iVar10 = movmskps(extraout_EDX,auVar16);
        if (iVar10 == 0xf) {
          if ((int)param_1[2] < 6) {
            uVar3 = FUN_00c02b50((int)local_368);
            if (((char)uVar3 == '\0') ||
               (uVar3 = FUN_00c02bd0(param_2,param_1), (char)uVar3 == '\0')) {
              uVar3 = FUN_00c02b70((int)local_368);
              if (((char)uVar3 == '\0') || (cVar2 = FUN_00c02c10(param_2,param_1), cVar2 == '\0')) {
                uVar4 = FUN_00d0a200(*(void **)((int)this + 0xc),param_1);
                if ((char)uVar4 == '\0') {
                  if (param_3 != (void *)0x0) {
                    pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                                (local_190,0xc3,*(undefined **)((int)this + 0xc),
                                                 (LotPaintPoint *)param_1,0,0);
                    FUN_00ad8570(param_3,pfVar9);
                    FUN_00ad70d0((int)local_190);
                  }
                  local_390 = 6;
                }
                else {
                  uVar4 = FUN_00d0a200(*(void **)((int)this + 0xc),param_2);
                  if ((char)uVar4 == '\0') {
                    if (param_3 != (void *)0x0) {
                      pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                                  (local_2d0,0xc3,*(undefined **)((int)this + 0xc),
                                                   (LotPaintPoint *)param_2,0,0);
                      FUN_00ad8570(param_3,pfVar9);
                      FUN_00ad70d0((int)local_2d0);
                    }
                    local_390 = 6;
                  }
                }
              }
              else if (5 < (int)param_1[2]) {
                if (param_3 != (void *)0x0) {
                  pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                              (local_110,0xb,*(undefined **)((int)this + 0xc),
                                               (LotPaintPoint *)param_1,0,0);
                  FUN_00ad8570(param_3,pfVar9);
                  FUN_00ad70d0((int)local_110);
                }
                local_390 = 1;
              }
            }
            else if (5 < (int)param_1[2]) {
              if (param_3 != (void *)0x0) {
                pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                            (local_310,0xb,*(undefined **)((int)this + 0xc),
                                             (LotPaintPoint *)param_1,0,0);
                FUN_00ad8570(param_3,pfVar9);
                FUN_00ad70d0((int)local_310);
              }
              local_390 = 1;
            }
          }
          else {
            if (param_3 != (void *)0x0) {
              pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                          (local_90,0xb,*(undefined **)((int)this + 0xc),
                                           (LotPaintPoint *)param_1,0,0);
              FUN_00ad8570(param_3,pfVar9);
              FUN_00ad70d0((int)local_90);
            }
            local_390 = 1;
          }
        }
        else {
          if (param_3 != (void *)0x0) {
            local_32c.x = *param_2;
            local_32c.level = (int)param_1[2];
            local_32c.z = param_2[1];
            pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                        (local_290,0xc6,*(undefined **)((int)this + 0xc),&local_32c,
                                         0,0);
            FUN_00ad8570(param_3,pfVar9);
            FUN_00ad70d0((int)local_290);
          }
          local_390 = 1;
        }
        goto LAB_00d0dbab;
      }
    }
    if (param_3 != (void *)0x0) {
      pfVar9 = (float *)BuildEditErrorRecord_InitializeAtLotPoint
                                  (local_250,0xc0,*(undefined **)((int)this + 0xc),
                                   (LotPaintPoint *)param_1,0,0);
      FUN_00ad8570(param_3,pfVar9);
      FUN_00ad70d0((int)local_250);
    }
    local_390 = 2;
  }
LAB_00d0dbab:
  local_378 = *param_1 - *param_2;
  fVar1 = param_1[1];
  fVar18 = param_2[1];
  uVar4 = FUN_00cbcb00((uint *)((int)this + 0x88));
  uVar3 = FUN_00d0a010(1.0,ABS(local_378) * ABS(fVar1 - fVar18));
  if (((char)uVar3 == '\0') && ((char)uVar4 == '\0')) {
    local_390 = 2;
  }
  if (param_4 == '\0') {
    if (local_390 != 0) {
      return local_390;
    }
  }
  else {
    if (local_390 != 0) {
      return local_390;
    }
    uVar4 = FUN_00d0ba60(this,param_1,param_2,local_368,local_380);
    if ((char)uVar4 != '\0') {
      return 5;
    }
  }
  uVar3 = FUN_00d0ce70(this,param_1,param_2,(uint)local_368,(int)local_380,param_3);
  if ((char)uVar3 == '\0') {
    return 7;
  }
  return local_390;
}
