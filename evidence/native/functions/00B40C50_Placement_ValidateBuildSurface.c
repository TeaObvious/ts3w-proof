/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* PC1.67 fullbody retained; selected floor-cutout caller closure only. cdecl2stackwords placement
   context/optionalfeedback plainRET lowALacceptance. Actual cutout call A90870 passes
   transformedcentre,halfextents,yaw,fullobjectGUID and maps true to feedback11hex. Positive
   relativelevel separately tests signed lottop and meanlevelheight tolerance. Other
   category/foundation/shell/editzone/ceiling/room branches in fullbody are not all closed by this
   annotation. No original managed purchase controller inferred. */

bool __cdecl Placement_ValidateBuildSurface(int *param_1,void *param_2)

{
  void *pvVar1;
  void *this;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  bool bVar4;
  char cVar5;
  bool bVar6;
  short sVar7;
  uint uVar8;
  int *piVar9;
  undefined4 uVar10;
  int iVar11;
  int iVar12;
  float *pfVar13;
  undefined4 extraout_ECX;
  float10 fVar14;
  float10 fVar15;
  float10 fVar16;
  float10 fVar17;
  float fVar18;
  float fVar24;
  float fVar25;
  undefined1 auVar19 [16];
  undefined1 auVar20 [16];
  undefined1 auVar21 [16];
  undefined1 auVar22 [16];
  undefined1 auVar23 [16];
  int *******local_7e4;
  undefined1 local_7e0 [8];
  float fStack_7d8;
  float fStack_7d4;
  char local_7c4 [3];
  undefined1 local_7c1;
  undefined3 uStack_7c0;
  float local_7bc;
  float local_7b8;
  float local_7b4;
  float local_7b0;
  float fStack_7ac;
  float fStack_7a8;
  float fStack_7a4;
  undefined1 local_794 [4];
  int *******local_790;
  int *******local_78c;
  undefined4 *local_788;
  undefined4 local_784;
  undefined4 local_780;
  char *local_77c;
  float local_778;
  float local_774;
  int local_770;
  undefined1 local_76c [4];
  undefined4 *******local_768;
  undefined4 *******local_764;
  undefined4 *local_760;
  undefined4 local_75c;
  undefined4 local_758;
  char *local_754;
  float local_750;
  float local_74c;
  int local_748;
  float local_744;
  undefined8 local_740;
  float fStack_738;
  float fStack_734;
  float local_728 [2];
  undefined1 local_720 [16];
  float local_710;
  float local_70c;
  float local_708;
  float local_704;
  float local_700;
  int local_6fc;
  int local_6f8;
  float local_6f4;
  int local_6f0;
  int local_6ec;
  float local_6e8;
  int local_6e4;
  int local_6e0;
  LotXZLevel local_6dc;
  undefined4 local_6d0;
  undefined4 uStack_6cc;
  undefined4 uStack_6c8;
  undefined4 uStack_6c4;
  undefined4 local_6c0;
  float local_6b0;
  undefined4 local_6a0;
  float fStack_69c;
  undefined4 uStack_698;
  undefined4 uStack_694;
  float local_690;
  float fStack_68c;
  int iStack_688;
  float fStack_684;
  float local_680;
  undefined4 uStack_67c;
  float fStack_678;
  undefined4 uStack_674;
  float local_670;
  undefined4 uStack_66c;
  float fStack_668;
  undefined4 uStack_664;
  float local_660;
  float fStack_65c;
  float fStack_658;
  float fStack_654;
  float local_650;
  undefined4 uStack_64c;
  float fStack_648;
  undefined4 uStack_644;
  float local_640;
  undefined4 uStack_63c;
  float fStack_638;
  undefined4 uStack_634;
  float local_630;
  float fStack_62c;
  float fStack_628;
  float fStack_624;
  float local_620;
  float fStack_61c;
  float fStack_618;
  float fStack_614;
  float local_610;
  float fStack_60c;
  float fStack_608;
  float fStack_604;
  float local_600;
  float fStack_5fc;
  float fStack_5f8;
  float fStack_5f4;
  float local_5f0;
  float fStack_5ec;
  float fStack_5e8;
  float fStack_5e4;
  float local_5e0;
  float fStack_5dc;
  float fStack_5d8;
  float fStack_5d4;
  float local_5d0;
  float fStack_5cc;
  float fStack_5c8;
  float fStack_5c4;
  float local_5c0;
  float fStack_5bc;
  float fStack_5b8;
  float fStack_5b4;
  undefined4 local_5b0 [8];
  float local_590 [16];
  float local_550 [16];
  float local_510 [16];
  float local_4d0 [16];
  float local_490 [16];
  float local_450 [16];
  float local_410 [16];
  float local_3d0 [16];
  float local_390 [16];
  float local_350 [16];
  float local_310 [16];
  float local_2d0 [16];
  float local_290 [16];
  float local_250 [16];
  float local_210 [16];
  float local_1d0 [16];
  float local_190 [16];
  float local_150 [16];
  float local_110 [16];
  float local_d0 [16];
  float local_90 [16];
  float local_50 [19];
  
  pvVar1 = (void *)param_1[1];
  bVar6 = true;
  if (((param_1[7] != 0) && ((*(uint *)(param_1[7] + 0x9c) >> 5 & 1) != 0)) &&
     (uVar8 = FUN_00afc790(param_1[8]), (char)uVar8 == '\0')) {
    if (param_2 == (void *)0x0) {
      return false;
    }
    iVar11 = param_1[7];
    if (((*(uint *)(iVar11 + 0xa4) >> 0xe & 1) == 0) &&
       (*(int *)(iVar11 + 0xd4) == *(int *)(iVar11 + 0xd8))) {
      FUN_00ad6720(local_210,0x1b,(int)pvVar1,(float *)(param_1 + 2),0,0);
      FUN_00ad8570(param_2,local_210);
      pfVar13 = local_210;
    }
    else {
      FUN_00ad6720(local_510,0x65,(int)pvVar1,(float *)(param_1 + 2),0,0);
      FUN_00ad8570(param_2,local_510);
      pfVar13 = local_510;
    }
    FUN_00ad70d0((int)pfVar13);
    bVar6 = false;
  }
  if ((param_1[7] != 0) && ((*(uint *)(param_1[7] + 0x98) >> 10 & 1) != 0)) {
    local_750 = (float)param_1[2];
    local_748 = param_1[4];
    local_74c = (float)param_1[3];
    this = *(void **)(param_1[1] + 0x298);
    uVar8 = FUN_00afc790(param_1[8]);
    if (((char)uVar8 == '\0') &&
       (uVar8 = FUN_00affce0((void *)*param_1,param_1[7]), (char)uVar8 != '\0')) {
      FUN_00b05870((void *)*param_1,param_1[7],(uint *)&local_660);
      fStack_7a4 = 0.0;
      fStack_7a8 = 0.0;
      local_7b0 = 0.0;
      fStack_7ac = 1.0;
      local_6a0 = 0;
      fStack_69c = 1.0;
      uStack_698 = 0;
      uStack_694 = 0;
      iVar11 = param_1[5];
      auVar19._4_4_ = iVar11;
      auVar19._0_4_ = iVar11;
      auVar19._8_4_ = iVar11;
      auVar19._12_4_ = iVar11;
      auVar21._8_4_ = 0x40000000;
      auVar21._0_8_ = 0x4000000040000000;
      auVar21._12_4_ = 0x40000000;
      local_720 = divps(auVar19,auVar21);
      fVar14 = (float10)fsin((float10)(float)local_720._0_4_);
      fStack_5e4 = (float)fVar14;
      fVar14 = (float10)fcos((float10)(float)local_720._0_4_);
      local_630 = fStack_5e4 * 1.0;
      fStack_62c = fStack_5e4 * 1.0;
      fStack_628 = fStack_5e4 * 1.0;
      fStack_624 = fStack_5e4 * 1.0;
      local_610 = fStack_5e4 * 0.0;
      fStack_60c = fStack_5e4 * 0.0;
      fStack_608 = fStack_5e4 * 0.0;
      fStack_604 = fStack_5e4 * 0.0;
      local_5f0 = fStack_5e4 * 0.0;
      fStack_5ec = fStack_5e4 * 0.0;
      fStack_5e8 = fStack_5e4 * 0.0;
      fStack_5e4 = fStack_5e4 * 0.0;
      local_7b8 = (float)fVar14;
      fVar18 = (fStack_658 * fStack_62c - fStack_65c * fStack_608) + local_7b8 * local_660;
      fVar24 = (local_660 * fStack_608 - fStack_658 * local_5f0) + local_7b8 * fStack_65c;
      fVar25 = (fStack_65c * local_5f0 - local_660 * fStack_62c) + local_7b8 * fStack_658;
      local_5d0 = (fVar25 * fStack_62c - fVar24 * fStack_608) * 2.0 + local_660;
      fStack_5cc = (fVar18 * fStack_608 - fVar25 * local_5f0) * 2.0 + fStack_65c;
      fStack_5c8 = (fVar24 * local_5f0 - fVar18 * fStack_62c) * 2.0 + fStack_658;
      fStack_5c4 = (fVar18 * local_5f0 - fVar18 * local_5f0) * 2.0 + fStack_654;
      local_750 = local_5d0 + local_750;
      local_7e0._4_4_ = fStack_5cc;
      local_7e0._0_4_ = local_5d0;
      fStack_7d8 = fStack_5c8;
      fStack_7d4 = fStack_5c4;
      local_74c = fStack_5c8 + local_74c;
    }
    sVar7 = LotRoom_ResolveForLocalLocation(this,&local_750,0,0);
    if (sVar7 == 0) {
      local_7c4[2] = '\0';
      local_7c4[0] = -1;
      local_7c4[1] = 0xff;
      _local_7c1 = CONCAT31(uStack_7c0,0xff);
      LotLocation_EncodeCellAndQuadrant(&local_750,local_7c4);
      local_7c4[2] = local_7c4[2] + '\x01';
      bVar4 = Lot_IsSignedTileInBounds(pvVar1,local_7c4);
      if ((!bVar4) ||
         (cVar5 = FUN_00a8e090(*(void **)((int)pvVar1 + 0x290),local_7c4,(byte)_local_7c1,'\x01'),
         cVar5 == '\0')) {
        if (param_2 == (void *)0x0) {
          return false;
        }
        FUN_00ad6720(local_290,0x32,(int)pvVar1,(float *)(param_1 + 2),0,0);
        FUN_00ad8570(param_2,local_290);
        bVar6 = false;
        FUN_00ad70d0((int)local_290);
      }
    }
  }
  iVar11 = param_1[7];
  if ((iVar11 != 0) &&
     (iVar12 = *(int *)(iVar11 + 0xd8) - *(int *)(iVar11 + 0xd4), iVar11 = iVar12 >> 0x1f,
     iVar12 / 0x28 + iVar11 != iVar11)) {
    local_790 = (int *******)&local_790;
    local_768 = &local_768;
    local_788 = (undefined4 *)0x0;
    local_784 = 0;
    local_780 = 0;
    local_760 = (undefined4 *)0x0;
    local_75c = 0;
    local_758 = 0;
    local_77c = "World/Lot/TestMiscObjectPlacementConstraints/wallsRequired";
    local_754 = "World/Lot/TestMiscObjectPlacementConstraints/wallsProhibited";
    pvVar1 = *(void **)(param_1[1] + 0x298);
    local_78c = local_790;
    local_764 = local_768;
    uVar8 = Placement_CollectWallFlagEdgeSets
                      ((void *)*param_1,(float *)(param_1 + 2),param_1[8],local_794,local_76c);
    if (((char)uVar8 != '\0') && (local_7e4 = local_78c, (int ********)local_78c != &local_790)) {
      do {
        piVar9 = FUN_00b47df0(pvVar1,(char *)(local_7e4 + 4),'\0');
        uVar10 = FUN_00c5b9b0(piVar9,'\0');
        if ((char)uVar10 == '\0') {
          uVar10 = FUN_00c5ba20(piVar9);
          if ((char)uVar10 == '\0') {
            if ((-1 < param_1[4]) || (uVar10 = FUN_00c5ba60(piVar9), (char)uVar10 == '\0'))
            goto LAB_00b4120e;
            if (param_2 == (void *)0x0) {
              FUN_008b19b0(local_760);
              FUN_008b19b0(local_788);
              return false;
            }
            FUN_00ad77d0((int)param_2);
            FUN_00ad6720(local_410,0x71,param_1[1],(float *)(param_1 + 2),0,0);
            FUN_00ad8570(param_2,local_410);
            pfVar13 = local_410;
          }
          else {
            if (param_2 == (void *)0x0) {
              FUN_008b19b0(local_760);
              FUN_008b19b0(local_788);
              return false;
            }
            FUN_00ad77d0((int)param_2);
            FUN_00ad6720(local_90,0x36,param_1[1],(float *)(param_1 + 2),0,0);
            FUN_00ad8570(param_2,local_90);
            pfVar13 = local_90;
          }
LAB_00b41207:
          bVar6 = false;
          FUN_00ad70d0((int)pfVar13);
        }
        else if ((*(uint *)(param_1[7] + 0xd0) >> 2 & 1) == 0) {
          if (param_2 == (void *)0x0) {
            FUN_008b19b0(local_760);
            FUN_008b19b0(local_788);
            return false;
          }
          FUN_00ad77d0((int)param_2);
          FUN_00ad6720(local_490,0x35,param_1[1],(float *)(param_1 + 2),0,0);
          FUN_00ad8570(param_2,local_490);
          pfVar13 = local_490;
          goto LAB_00b41207;
        }
LAB_00b4120e:
        local_7e4 = (int *******)FUN_004e1030((int *)local_7e4);
      } while ((int ********)local_7e4 != &local_790);
    }
    FUN_008b19b0(local_760);
    FUN_008b19b0(local_788);
  }
  iVar11 = param_1[7];
  if ((((iVar11 != 0) && ((*(uint *)(iVar11 + 200) & 0x2000000) != 0)) &&
      ((*(uint *)(iVar11 + 0xa0) & 0x400) != 0)) ||
     (((*(uint *)(iVar11 + 200) & 4) != 0 && ((*(uint *)(iVar11 + 0xa0) & 0x2000) != 0)))) {
    local_728[1] = 0.0;
    iVar11 = FUN_00b01f30((void *)*param_1,local_728 + 1);
    if (iVar11 == 0) {
      if (param_2 == (void *)0x0) {
        return false;
      }
      bVar6 = FUN_00ad6f10((int)param_2);
      if (bVar6) {
        return false;
      }
      FUN_00ad77d0((int)param_2);
      FUN_00ad6fb0(local_590,0x2f,(void *)*param_1);
      FUN_00ad8570(param_2,local_590);
      bVar6 = false;
      FUN_00ad70d0((int)local_590);
    }
  }
  if (((param_1[7] != 0) && ((*(uint *)(param_1[7] + 0xd0) >> 3 & 1) != 0)) &&
     (uVar8 = FUN_00afc790(param_1[8]), (char)uVar8 == '\0')) {
    if (param_2 == (void *)0x0) {
      return false;
    }
    FUN_00ad6fb0(local_390,0x66,(void *)*param_1);
    FUN_00ad8570(param_2,local_390);
    bVar6 = false;
    FUN_00ad70d0((int)local_390);
  }
  if (((*(uint *)(param_1[7] + 0xd0) & 0x4020) != 0) &&
     (uVar10 = FUN_00b01240((void *)*param_1,local_5b0), (char)uVar10 != '\0')) {
    fVar14 = LotLevelHeight_SampleLocalPosition
                       (*(void **)(param_1[1] + 0x290),(LotXZLevel *)(param_1 + 2));
    iStack_688 = param_1[3];
    local_690 = (float)param_1[2];
    fStack_7d8 = (float)iStack_688;
    fStack_68c = (float)param_1[6] + (float)fVar14;
    fStack_7d4 = local_690;
    fStack_684 = local_690;
    local_7e0._0_4_ = local_690;
    local_7e0._4_4_ = fStack_68c;
    FUN_00b05f70((void *)*param_1,param_1[7],(void *)param_1[1],(float)param_1[5],&local_690,
                 local_50);
    FUN_0068dbb0(local_5b0,local_50);
    local_740._4_4_ = (float)uStack_63c;
    local_740._0_4_ = local_640;
    fStack_738 = fStack_638;
    fStack_734 = (float)uStack_634;
    local_680 = local_640;
    uStack_67c = uStack_63c;
    fStack_678 = fStack_638;
    uStack_674 = uStack_634;
    local_670 = local_650;
    uStack_66c = uStack_64c;
    fStack_668 = fStack_648;
    uStack_664 = uStack_644;
    local_7e0._4_4_ = uStack_64c;
    local_7e0._0_4_ = local_650;
    fStack_7d8 = fStack_648;
    fStack_7d4 = (float)uStack_644;
    local_7b0 = local_650;
    fStack_7ac = fStack_648;
    fStack_7a8 = local_640;
    fStack_7a4 = fStack_638;
    if (local_640 < local_650) {
      local_7b0 = local_640;
      fStack_7a8 = local_650;
    }
    if (fStack_638 < fStack_648) {
      fStack_7ac = fStack_638;
      fStack_7a4 = fStack_648;
    }
    uVar10 = FUN_00c69130(DAT_011edbc4,&local_7b0,param_1[1],(undefined4 *)0x0,'\0');
    if ((char)uVar10 != '\0') {
      if (param_2 == (void *)0x0) {
        return false;
      }
      FUN_00ad6fb0(local_110,2,(void *)*param_1);
      FUN_00ad8570(param_2,local_110);
      bVar6 = false;
      FUN_00ad70d0((int)local_110);
    }
  }
  bVar4 = Object_IsSpiralStaircaseWithoutFloorCutout((void *)*param_1);
  if ((bVar4) && (*(int *)(param_1[1] + 0x180) < param_1[4] + 1)) {
    if (param_2 == (void *)0x0) {
      return false;
    }
    FUN_00ad6fb0(local_310,3,(void *)*param_1);
    FUN_00ad8570(param_2,local_310);
    bVar6 = false;
    FUN_00ad70d0((int)local_310);
  }
  if ((*(uint *)(param_1[7] + 0x98) >> 0x19 & 1) != 0) {
    local_720 = ZEXT816(0);
    local_7e4 = (int *******)0x0;
    local_744 = 0.0;
    local_728[0] = 0.0;
    local_7bc = 0.0;
    local_7b4 = 0.0;
    ObjectProduct_CopyFloorPlacementFields
              ((void *)param_1[7],&local_7e4,&local_744,local_728,&local_7bc,&local_7b4,
               (undefined4 *)local_720);
    pvVar1 = *(void **)(param_1[1] + 0x290);
    if (pvVar1 != (void *)0x0) {
      local_778 = (float)param_1[2];
      local_774 = (float)param_1[3];
      if ((local_7bc != 0.0) || (local_7b4 != 0.0)) {
        local_6d0 = 0;
        uStack_6cc = 0x3f800000;
        uStack_6c8 = 0;
        uStack_6c4 = 0;
        iVar11 = param_1[5];
        auVar20._4_4_ = iVar11;
        auVar20._0_4_ = iVar11;
        auVar20._8_4_ = iVar11;
        auVar20._12_4_ = iVar11;
        auVar3._8_4_ = 0x40000000;
        auVar3._0_8_ = 0x4000000040000000;
        auVar3._12_4_ = 0x40000000;
        auVar21 = divps(auVar20,auVar3);
        local_740._0_4_ = auVar21._0_4_;
        fVar14 = (float10)fsin((float10)(float)local_740);
        fStack_5f4 = (float)fVar14;
        fVar14 = (float10)fcos((float10)(float)local_740);
        local_5c0 = fStack_5f4 * 0.0;
        fStack_5bc = fStack_5f4 * 0.0;
        fStack_5b8 = fStack_5f4 * 0.0;
        fStack_5b4 = fStack_5f4 * 0.0;
        local_5e0 = fStack_5f4 * 0.0;
        fStack_5dc = fStack_5f4 * 0.0;
        fStack_5d8 = fStack_5f4 * 0.0;
        fStack_5d4 = fStack_5f4 * 0.0;
        local_600 = fStack_5f4 * 1.0;
        fStack_5fc = fStack_5f4 * 1.0;
        fStack_5f8 = fStack_5f4 * 1.0;
        fStack_5f4 = fStack_5f4 * 1.0;
        fVar18 = (float)fVar14;
        _local_7e0 = ZEXT812(0);
        fStack_7d4 = local_7bc;
        local_7e0._0_4_ = local_7bc;
        fStack_7d8 = local_7b4;
        fVar24 = (local_7b4 * fStack_5fc - fStack_5d8 * 0.0) + fVar18 * local_7bc;
        fVar25 = (local_7bc * fStack_5d8 - local_7b4 * local_5c0) + fVar18 * 0.0;
        fVar18 = (local_5c0 * 0.0 - local_7bc * fStack_5fc) + fVar18 * local_7b4;
        local_620 = (fVar18 * fStack_5fc - fVar25 * fStack_5d8) * 2.0 + local_7bc;
        fStack_61c = (fVar24 * fStack_5d8 - fVar18 * local_5c0) * 2.0 + 0.0;
        fStack_618 = (fVar25 * local_5c0 - fVar24 * fStack_5fc) * 2.0 + local_7b4;
        fStack_614 = (fVar24 * local_5c0 - fVar24 * local_5c0) * 2.0 + local_7bc;
        local_778 = local_620 + local_778;
        local_740._4_4_ = fStack_61c;
        local_740._0_4_ = local_620;
        fStack_738 = fStack_618;
        fStack_734 = fStack_614;
        local_774 = fStack_618 + local_774;
      }
      local_770 = param_1[4] + (int)local_7e4;
      local_708 = local_744 * 0.5;
      local_704 = local_728[0] * 0.5;
      bVar4 = FloorManager_CutoutIntersectsOwnedOrDisabledTile
                        (pvVar1,&local_778,&local_708,(float)param_1[5],*(int *)(*param_1 + 8),
                         *(uint *)(*param_1 + 0xc));
      if (bVar4) {
        if (param_2 == (void *)0x0) {
          return false;
        }
        FUN_00ad6fb0(local_190,0x11,(void *)*param_1);
        FUN_00ad8570(param_2,local_190);
        bVar6 = false;
        FUN_00ad70d0((int)local_190);
      }
    }
    if (0 < (int)local_7e4) {
      if (*(int *)(param_1[1] + 0x180) < param_1[4] + (int)local_7e4) {
        if (param_2 == (void *)0x0) {
          return false;
        }
        FUN_00ad6fb0(local_550,3,(void *)*param_1);
        FUN_00ad8570(param_2,local_550);
        bVar6 = false;
        FUN_00ad70d0((int)local_550);
      }
      local_6dc.x = (float)param_1[2];
      local_6dc.level = param_1[4] + (int)local_7e4;
      local_6dc.z = (float)param_1[3];
      fVar15 = LotLevelHeight_SampleLocalPosition(pvVar1,&local_6dc);
      fVar16 = LotLevelHeight_SampleLocalPosition(pvVar1,(LotXZLevel *)(param_1 + 2));
      fVar14 = (float10)(int)local_7e4;
      fStack_738 = 0.05;
      local_740 = 0x3d4ccccd3d4ccccd;
      fStack_734 = 0.05;
      fVar17 = FUN_00ab02d0();
      fVar18 = (float)(fVar17 - (float10)(float)(((float10)(float)fVar15 - fVar16) / fVar14));
      auVar22._0_4_ = fVar18 * -1.0;
      auVar22._4_4_ = fVar18 * -1.0;
      auVar22._8_4_ = fVar18 * -1.0;
      auVar22._12_4_ = fVar18 * -1.0;
      auVar2._4_4_ = fVar18;
      auVar2._0_4_ = fVar18;
      auVar2._8_4_ = fVar18;
      auVar2._12_4_ = fVar18;
      auVar21 = maxps(auVar22,auVar2);
      auVar23._4_4_ = -(uint)(auVar21._4_4_ <= local_740._4_4_);
      auVar23._0_4_ = -(uint)(auVar21._0_4_ <= (float)local_740);
      auVar23._8_4_ = -(uint)(auVar21._8_4_ <= fStack_738);
      auVar23._12_4_ = -(uint)(auVar21._12_4_ <= fStack_734);
      iVar11 = movmskps(extraout_ECX,auVar23);
      if (iVar11 != 0xf) {
        if (param_2 == (void *)0x0) {
          return false;
        }
        FUN_00ad6fb0(local_4d0,0xed,(void *)*param_1);
        FUN_00ad8570(param_2,local_4d0);
        bVar6 = false;
        FUN_00ad70d0((int)local_4d0);
      }
    }
  }
  if ((((*(uint *)(param_1[7] + 0xd0) >> 0xc & 1) != 0) ||
      ((*(uint *)(param_1[7] + 0x9c) >> 6 & 1) != 0)) &&
     (*(void **)(param_1[1] + 0x290) != (void *)0x0)) {
    local_710 = ((float)param_1[0x2e] - (float)param_1[0x2c]) * 0.5;
    local_70c = ((float)param_1[0x2f] - (float)param_1[0x2d]) * 0.5;
    bVar4 = FloorManager_CutoutIntersectsOwnedOrDisabledTile
                      (*(void **)(param_1[1] + 0x290),param_1 + 2,&local_710,(float)param_1[5],
                       *(int *)(*param_1 + 8),*(uint *)(*param_1 + 0xc));
    if (bVar4) {
      if (param_2 == (void *)0x0) {
        return false;
      }
      FUN_00ad6fb0(local_450,0x11,(void *)*param_1);
      FUN_00ad8570(param_2,local_450);
      bVar6 = false;
      FUN_00ad70d0((int)local_450);
    }
  }
  bVar4 = Object_IsLevelAboveFloorCutout((void *)*param_1);
  if ((bVar4) || ((*(uint *)(param_1[7] + 0xd0) & 0x20000) != 0)) {
    if (param_1[4] == -1) {
      local_6e8 = (float)param_1[2];
      local_6e4 = param_1[3];
      local_6e0 = param_1[4] + 1;
      uVar10 = FUN_00b01530(param_1[1],&local_6e8);
      if ((char)uVar10 != '\0') {
        if (param_2 == (void *)0x0) {
          return false;
        }
        FUN_00ad6fb0(local_3d0,0x41,(void *)*param_1);
        FUN_00ad8570(param_2,local_3d0);
        bVar6 = false;
        FUN_00ad70d0((int)local_3d0);
      }
    }
    if (((param_1[4] == 0) && (*(int *)(param_1[1] + 0x2e8) != 0)) &&
       (cVar5 = FUN_00a8cfa0(*(void **)(param_1[1] + 0x290),(float *)(param_1 + 2)), cVar5 != '\0'))
    {
      if (param_2 == (void *)0x0) {
        return false;
      }
      FUN_00ad6fb0(local_350,0xed,(void *)*param_1);
      FUN_00ad8570(param_2,local_350);
      bVar6 = false;
      FUN_00ad70d0((int)local_350);
    }
    if (((*(uint *)(param_1[7] + 0xd0) & 0x20000) != 0) &&
       (cVar5 = FUN_00a646e0((void *)param_1[1],param_1 + 0x34,param_2), cVar5 != '\0')) {
      if (param_2 == (void *)0x0) {
        return false;
      }
      bVar6 = false;
    }
    if ((*(uint *)(param_1[7] + 0xd0) & 0x20000) != 0) {
      local_700 = (float)param_1[2];
      local_6fc = param_1[3];
      local_6f8 = param_1[4] + 1;
      uVar10 = FUN_00b015c0(param_1[1],&local_700);
      if ((char)uVar10 != '\0') {
        if (param_2 == (void *)0x0) {
          return false;
        }
        FUN_00ad6fb0(local_2d0,0x58,(void *)*param_1);
        FUN_00ad8570(param_2,local_2d0);
        bVar6 = false;
        FUN_00ad70d0((int)local_2d0);
      }
    }
  }
  if (((*(void **)(param_1[1] + 0x2e8) != (void *)0x0) &&
      ((*(uint *)(param_1[7] + 0x98) >> 0x1a & 1) != 0)) &&
     (*(void **)(param_1[1] + 0x2e8) != (void *)*param_1)) {
    if (param_2 == (void *)0x0) {
      return false;
    }
    FUN_00ad6fb0(local_250,6,(void *)*param_1);
    FUN_00ad8570(param_2,local_250);
    bVar6 = false;
    FUN_00ad70d0((int)local_250);
  }
  if ((*(char *)((int)param_1 + 0x2a) == '\0') &&
     (cVar5 = FUN_00a64100((float *)(param_1 + 2),(float)param_1[5],(void *)param_1[1],
                           (void *)*param_1,param_2), cVar5 != '\0')) {
    if (param_2 == (void *)0x0) {
      return false;
    }
    bVar6 = false;
  }
  uVar10 = FUN_00b04ea0((void *)param_1[1],(float *)(param_1 + 2));
  if ((char)uVar10 != '\0') {
    if (((*(uint *)(param_1[7] + 0xd0) >> 2 & 1) == 0) &&
       ((*(uint *)(param_1[7] + 0xa4) >> 0xe & 1) != 0)) {
      local_6b0 = (float)param_1[0x19] + (float)param_1[6];
      local_6c0 = 0x3e400000;
      if (local_6b0 < 0.1875) {
        if (param_2 == (void *)0x0) {
          return false;
        }
        FUN_00ad6fb0(local_1d0,0xf9,(void *)*param_1);
        FUN_00ad8570(param_2,local_1d0);
        bVar6 = false;
        FUN_00ad70d0((int)local_1d0);
      }
    }
    if (((((*(uint *)(param_1[7] + 0xd0) & 0x10000) != 0) ||
         (bVar4 = Object_IsLevelAboveFloorCutout((void *)*param_1), bVar4)) ||
        ((*(uint *)(param_1[7] + 0xd0) & 0x20000) != 0)) ||
       ((uVar8 = Catalog_TestIntersectionCategoryMask((void *)param_1[7]), (char)uVar8 != '\0' ||
        ((*(uint *)(param_1[7] + 0x98) >> 0x1e & 1) != 0)))) {
      if (param_2 == (void *)0x0) {
        return false;
      }
      FUN_00ad6fb0(local_150,0xf2,(void *)*param_1);
      FUN_00ad8570(param_2,local_150);
      bVar6 = false;
      FUN_00ad70d0((int)local_150);
    }
  }
  if ((0 < param_1[4]) && ((*(uint *)(param_1[7] + 0x9c) >> 1 & 1) != 0)) {
    local_6f4 = (float)param_1[2];
    local_6ec = param_1[4] + -1;
    local_6f0 = param_1[3];
    uVar10 = Lot_QueryDeckFoundationAtLocalPoint((void *)param_1[1],&local_6f4);
    if ((char)uVar10 != '\0') {
      if (param_2 == (void *)0x0) {
        return false;
      }
      FUN_00ad6fb0(local_d0,0xfc,(void *)*param_1);
      FUN_00ad8570(param_2,local_d0);
      bVar6 = false;
      FUN_00ad70d0((int)local_d0);
    }
  }
  return bVar6;
}

