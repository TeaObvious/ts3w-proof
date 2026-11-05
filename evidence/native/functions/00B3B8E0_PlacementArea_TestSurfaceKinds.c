/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 placement/source boundary. cdecl two physical words/plainRET/AL status. Full
   per-area terrain/floor/water/air/roof and additional flags;20 bypasses initial surface
   requirement,40 air adjusted by403F wall/ceiling flags, then secondary tests still run.
   Failure2Cterrain/2Efloor/30either. Current pure support bit test is narrower than complete
   original admission and catalog water/underground exceptions.
   
   PC1.67 original static instructions. Snowclosure: afterbase surface admission, area bits1000
   and2000 are extra CONDITIONS, not independent surfaces.1000 requires ACF100 false
   withcountEave1.2000 callsAD0C00 excludingheldfullGUID, caches lasttilecoordinate+level so
   anotherquarteronsametile neednotrescan. Bothconditions applywhenbothbitsset. Broader
   terrain/floor/air/object/catalog/native placement branches remain separate; no original
   OPENTS3_SEASONS_OBJECTS environment switch.
   
   PC1.67 selected authored surface closure: cdecl context/optionalfeedback, plainRET lowAL. Reads
   enabledarea surfaceDWORD+0C, Air40 with catalog wall403F can addAny20, ceilingbit10 can widen
   withDB. Native has independent terrain/floor/pond/pool/roof/region and extra condition branches,
   including1000/2000 snow conditions. Host supported-mask prefilter is NOT equivalent to this full
   live surface evaluator; no claim all unsupported categories unused. */

bool __cdecl PlacementArea_TestSurfaceKinds(int *param_1,void *param_2)

{
  char *pcVar1;
  int *lot;
  void *pvVar2;
  char cVar3;
  bool bVar4;
  char cVar5;
  uint *puVar6;
  undefined4 uVar7;
  uint uVar8;
  int iVar9;
  uint uVar10;
  float fVar11;
  uint local_a0;
  char local_9c;
  char local_9b;
  char local_9a;
  char local_97;
  undefined1 local_96;
  char local_95;
  undefined2 local_94;
  char local_92;
  char local_8d;
  float local_8c;
  char local_88;
  char local_87;
  char local_86;
  char local_84;
  char local_83;
  char local_82;
  float local_80;
  int local_7c;
  undefined8 local_78;
  int local_70;
  LotPaintPoint local_64;
  longlong local_58;
  float local_50 [19];
  
  local_a0 = *(uint *)(param_1[0x27] + 0xc);
  local_64.x = (float)param_1[2];
  local_64.level = param_1[9];
  local_64.z = (float)param_1[3];
  lot = (int *)param_1[1];
  local_96 = 1;
  local_97 = '\0';
  if ((local_a0 & 0x10) != 0) {
    local_78 = (ulonglong)ROUND(local_64.x);
    local_58 = (longlong)ROUND(local_64.z);
    local_80 = (float)(int)(float)local_78;
    if (ABS(local_64.x - local_80) < 0.1) {
      local_8c = (float)(int)(uint)local_58;
      if (ABS(local_64.z - local_8c) < 0.1) {
        local_78 = CONCAT44(local_8c,local_80);
        pvVar2 = *(void **)(param_1[1] + 0x298);
        local_70 = local_64.level;
        cVar3 = FUN_00b46f60(pvVar2,(float *)&local_78);
        if (cVar3 != '\0') {
          puVar6 = (uint *)FUN_00b46f80(pvVar2,(float *)&local_78,(undefined4 *)0x0);
          uVar7 = FUN_00c5b860(puVar6);
          if ((char)uVar7 != '\0') {
            local_97 = '\x01';
            goto LAB_00b3b9d5;
          }
        }
        local_97 = '\0';
      }
    }
  }
LAB_00b3b9d5:
  pvVar2 = (void *)param_1[7];
  uVar10 = *(uint *)((int)pvVar2 + 0x98) >> 10;
  if ((pvVar2 != (void *)0x0) && ((local_a0 & 0x40) != 0)) {
    uVar8 = Catalog_TestPlacementMask403F(pvVar2);
    if ((char)uVar8 == '\0') {
      if ((uVar10 & 1) != 0) {
LAB_00b3ba04:
        local_a0 = local_a0 | 0xdb;
      }
    }
    else {
      if ((uVar10 & 1) != 0) goto LAB_00b3ba04;
      local_a0 = local_a0 | 0x20;
    }
  }
  iVar9 = param_1[7];
  local_95 = '\0';
  if (((iVar9 != 0) && ((*(uint *)(iVar9 + 0x98) >> 0x1b & 1) != 0)) && (param_1[4] < 0)) {
    local_a0 = local_a0 | 0x40;
    local_95 = '\x01';
  }
  uVar7 = FUN_00afc8b0(iVar9);
  local_8d = (char)uVar7;
  if ((((local_a0 & 0x80) != 0) &&
      (uVar10 = Object_TestLocationFlag20((void *)*param_1), (char)uVar10 != '\0')) &&
     ((*(void **)(param_1[1] + 0x2ac) != (void *)0x0 &&
      (uVar7 = RoofManager_TestPointCoverage
                         (*(void **)(param_1[1] + 0x2ac),param_1 + 2,(LPCRITICAL_SECTION)0x1,'\x01')
      , (char)uVar7 != '\0')))) {
    return true;
  }
  local_94 = 0xffff;
  local_92 = -1;
  local_8c = 0.0;
  iVar9 = param_1[0x35] - param_1[0x34] >> 2;
  local_58 = CONCAT44(local_58._4_4_,iVar9);
  if (iVar9 == 0) {
    return (bool)local_96;
  }
  local_78 = CONCAT44(local_78._4_4_,local_a0) & 0xffffffff00000020;
  fVar11 = (float)(local_a0 & 0x20);
  while (pcVar1 = (char *)(param_1[0x34] + (int)local_8c * 4), fVar11 != 0.0) {
LAB_00b3bd00:
    cVar3 = '\x01';
LAB_00b3bd02:
    if (local_95 != '\0') {
      uVar7 = Lot_TestCellRegionAndCollectionAdmission(lot,pcVar1,1,0,(undefined1 *)0x0);
      cVar3 = (char)uVar7 == '\0';
    }
    if (cVar3 == '\0') goto LAB_00b3c005;
    if ((local_a0 & 0x200) != 0) {
      if (((*pcVar1 < 1) || (pcVar1[1] < 1)) ||
         ((*(int *)(param_1[1] + 0x174) + -1 <= (int)*pcVar1 ||
          (*(int *)(param_1[1] + 0x178) + -1 <= (int)pcVar1[1])))) goto LAB_00b3c005;
      cVar3 = '\x01';
    }
    if ((local_a0 & 0x400) != 0) {
      cVar3 = pcVar1[2] < '\x05';
    }
    if (cVar3 == '\0') goto LAB_00b3c005;
    if ((*(byte *)(param_1[0x27] + 0x10) & 1) != 0) {
      local_87 = pcVar1[1];
      local_88 = *pcVar1;
      local_86 = pcVar1[2];
      local_83 = local_87 + '\x01';
      local_84 = local_88 + '\x01';
      local_82 = local_86;
      cVar5 = FUN_00cab760((void *)param_1[1],&local_88,&local_84,param_2,'\0','\0','\x01');
      if (cVar5 == '\0') {
        return false;
      }
    }
    if ((local_a0 & 0x800) == 0) {
LAB_00b3bef3:
      if (cVar3 == '\0') goto LAB_00b3c005;
    }
    else {
      bVar4 = LotFloorFeatures_TestAny(lot,pcVar1,0xff,0xffff);
      local_9b = pcVar1[1];
      local_80 = (float)(int)local_9b;
      local_7c = (int)*pcVar1;
      local_9c = *pcVar1 + -1;
      local_9a = pcVar1[2];
      cVar3 = false;
      if (bVar4) {
LAB_00b3bee9:
        if (param_2 != (void *)0x0) {
          FUN_00ad6960(local_50,0x81,(int)lot,(undefined2 *)&local_9c);
          goto LAB_00b3bfd7;
        }
        goto LAB_00b3bef3;
      }
      bVar4 = LotFloorFeatures_TestAny(lot,&local_9c,0xff,0xffff);
      cVar3 = !bVar4;
      if (!(bool)cVar3) goto LAB_00b3bee9;
      local_9c = (char)local_7c + '\x01';
      bVar4 = LotFloorFeatures_TestAny(lot,&local_9c,0xff,0xffff);
      cVar3 = !bVar4;
      if (!(bool)cVar3) goto LAB_00b3bee9;
      local_9c = (char)local_7c;
      local_9b = local_80._0_1_ + -1;
      bVar4 = LotFloorFeatures_TestAny(lot,&local_9c,0xff,0xffff);
      cVar3 = !bVar4;
      if (!(bool)cVar3) goto LAB_00b3bee9;
      local_9c = (char)local_7c;
      local_9b = local_80._0_1_ + '\x01';
      bVar4 = LotFloorFeatures_TestAny(lot,&local_9c,0xff,0xffff);
      cVar3 = !bVar4;
      if (!(bool)cVar3) goto LAB_00b3bee9;
    }
    if ((local_a0 & 0x1000) != 0) {
      bVar4 = LotQuarter_IsCoveredByRoofOrHigherFloor(lot,pcVar1,'\x01');
      cVar3 = !bVar4;
    }
    if (cVar3 == '\0') goto LAB_00b3c005;
    if (((((char)local_94 != *pcVar1) || (local_94._1_1_ != pcVar1[1])) || (local_92 != pcVar1[2]))
       && ((local_a0 & 0x2000) != 0)) {
      uVar7 = Seasons_TileHasSnowBlockingObjects
                        (lot,pcVar1,*(int *)(*param_1 + 8),*(int *)(*param_1 + 0xc));
      local_94 = *(undefined2 *)pcVar1;
      local_92 = pcVar1[2];
      cVar3 = (char)uVar7 == '\0';
    }
    if (cVar3 == '\0') goto LAB_00b3c005;
    if ((local_a0 & 0x10000) == 0) {
LAB_00b3bf95:
      if (cVar3 == '\0') goto LAB_00b3c005;
    }
    else {
      uVar10 = FUN_00acf210(lot,pcVar1);
      if ((char)uVar10 == '\0') {
        cVar3 = '\0';
        if (param_2 != (void *)0x0) {
          FUN_00ad6a40(local_50,0x3c,(int)lot,pcVar1);
LAB_00b3bfd7:
          FUN_00ad8570(param_2,local_50);
          FUN_00ad70d0((int)local_50);
          return false;
        }
        goto LAB_00b3bf95;
      }
    }
    local_8c = (float)((int)local_8c + 1);
    if ((uint)local_58 <= (uint)local_8c) {
      return (bool)local_96;
    }
    fVar11 = (float)local_78;
  }
  if ((local_a0 & 1) != 0) {
    uVar7 = Lot_TestTerrainSurfaceAtCellPart(lot,pcVar1);
    cVar3 = (char)uVar7;
    if ((char)uVar7 == '\0') goto LAB_00b3bb02;
    goto LAB_00b3bd02;
  }
LAB_00b3bb02:
  if ((local_a0 & 2) != 0) {
    uVar7 = Lot_TestFloorSurfaceAtCellPart(lot,pcVar1);
    cVar3 = (char)uVar7;
    if ((char)uVar7 != '\0') goto LAB_00b3bd02;
  }
  if (((local_a0 & 4) != 0) &&
     ((cVar3 = FUN_00ad0d70(lot,(undefined2 *)pcVar1,1,0), cVar3 != '\0' ||
      (uVar7 = Lot_TestCellRegionAndCollectionAdmission(lot,pcVar1,1,0,(undefined1 *)0x0),
      (char)uVar7 != '\0')))) goto LAB_00b3bd00;
  if ((local_a0 & 8) != 0) {
    bVar4 = FUN_00acf070(lot,pcVar1);
    cVar3 = '\x01';
    if (bVar4) goto LAB_00b3bd02;
  }
  if (((local_a0 & 0x4000) != 0) || (*(char *)((int)param_1 + 0x8a) != '\0')) {
    uVar10 = Lot_TestCellBelowSea(lot,pcVar1,(void *)0x0,'\0');
    cVar3 = (char)uVar10;
    if ((char)uVar10 != '\0') goto LAB_00b3bd02;
  }
  if ((local_a0 & 0x8000) != 0) {
    uVar10 = FUN_00ad0a20(lot,pcVar1);
    cVar3 = (char)uVar10;
    if ((char)uVar10 != '\0') goto LAB_00b3bd02;
  }
  if (((local_a0 & 0x10) != 0) && (cVar3 = local_97, local_97 != '\0')) goto LAB_00b3bd02;
  if (((((((local_a0 & 0x100) != 0) &&
         (((bVar4 = Lot_TestChimneyCellSupport((undefined *)param_1[1],pcVar1,(undefined *)0x0),
           bVar4 && (uVar7 = Lot_TestCellRegionAndCollectionAdmission
                                       (lot,pcVar1,1,0,(undefined1 *)0x0), (char)uVar7 == '\0')) &&
          (uVar7 = Lot_TestTerrainSurfaceAtCellPart(lot,pcVar1), (char)uVar7 == '\0')))) &&
        (((uVar7 = Lot_TestFloorSurfaceAtCellPart(lot,pcVar1), (char)uVar7 == '\0' &&
          (cVar3 = FUN_00ad0d70(lot,(undefined2 *)pcVar1,1,1), cVar3 == '\0')) &&
         (bVar4 = FUN_00acf070(lot,pcVar1), !bVar4)))) &&
       (uVar10 = Lot_TestCellBelowSea(lot,pcVar1,(void *)0x0,'\0'), (char)uVar10 == '\0')) ||
      (((local_a0 & 0x40) != 0 &&
       ((((uVar7 = Lot_TestTerrainSurfaceAtCellPart(lot,pcVar1), (char)uVar7 == '\0' &&
          (uVar7 = Lot_TestFloorSurfaceAtCellPart(lot,pcVar1), (char)uVar7 == '\0')) &&
         ((cVar3 = FUN_00ad0d70(lot,(undefined2 *)pcVar1,1,1), cVar3 == '\0' &&
          (bVar4 = FUN_00acf070(lot,pcVar1), !bVar4)))) ||
        (uVar10 = Lot_TestCellBelowSea(lot,pcVar1,(void *)0x0,'\0'), (char)uVar10 != '\0')))))) ||
     ((local_8d != '\0' &&
      ((((cVar3 = FUN_00ad0d70(lot,(undefined2 *)pcVar1,1,0), cVar3 != '\0' ||
         (uVar7 = Lot_TestCellRegionAndCollectionAdmission(lot,pcVar1,1,0,(undefined1 *)0x0),
         (char)uVar7 != '\0')) || (bVar4 = FUN_00acf070(lot,pcVar1), bVar4)) ||
       (uVar10 = Lot_TestCellBelowSea(lot,pcVar1,(void *)0x0,'\0'), (char)uVar10 != '\0'))))))
  goto LAB_00b3bd00;
LAB_00b3c005:
  local_96 = 0;
  if (param_2 == (void *)0x0) {
    return false;
  }
  if (local_a0 < 9) {
    if (local_a0 == 8) {
      uVar10 = 0x37;
    }
    else {
      switch(local_a0) {
      case 0:
        uVar10 = 0xe9;
        break;
      case 1:
        uVar10 = 0x2c;
        break;
      case 2:
        uVar10 = 0x2e;
        break;
      case 3:
        uVar10 = 0x30;
        break;
      case 4:
        uVar10 = 0x34;
        break;
      default:
switchD_00b3c028_default:
        if ((*(uint *)(param_1[7] + 0xd0) & 0x20000) == 0) {
          return false;
        }
        if ((int)*(char *)(param_1[0x34] + 2) <= param_1[4]) {
          return false;
        }
        fVar11 = 0.0;
        iVar9 = param_1[0x35] - param_1[0x34] >> 2;
        local_78 = CONCAT44(local_78._4_4_,iVar9);
        if (iVar9 == 0) {
          return false;
        }
        while( true ) {
          pcVar1 = (char *)(param_1[0x34] + (int)fVar11 * 4);
          uVar7 = Lot_TestCellSupportRegionType(lot,pcVar1,'\0',(undefined1 *)0x0);
          if ((char)uVar7 != '\0') break;
          bVar4 = FUN_00acf8e0(lot,pcVar1);
          if (bVar4) {
            uVar7 = 0x36;
            goto LAB_00b3c18d;
          }
          bVar4 = FUN_00acf070(lot,pcVar1);
          if (bVar4) {
            uVar7 = 0x38;
            goto LAB_00b3c18d;
          }
          uVar10 = Lot_TestCellBelowSea(lot,pcVar1,(void *)0x0,'\0');
          if ((char)uVar10 != '\0') {
            uVar7 = 0x3a;
            goto LAB_00b3c18d;
          }
          fVar11 = (float)((int)fVar11 + 1);
          if ((uint)(float)local_78 <= (uint)fVar11) {
            return (bool)local_96;
          }
        }
        uVar7 = 0x35;
LAB_00b3c18d:
        FUN_00ad6a40(local_50,uVar7,(int)lot,pcVar1);
        goto LAB_00b3c19e;
      }
    }
  }
  else if (local_a0 < 0x4001) {
    if (local_a0 == 0x4000) {
      uVar10 = 0x39;
    }
    else {
      if (local_a0 < 0x844) {
        if (local_a0 != 0x843) {
          if (local_a0 == 0xc) goto LAB_00b3c0a2;
          if (local_a0 != 0x10) goto switchD_00b3c028_default;
          uVar10 = 0xbe;
          goto LAB_00b3c0a7;
        }
      }
      else if (local_a0 != 0xf03) goto switchD_00b3c028_default;
      uVar10 = 0x107;
    }
  }
  else {
    if (((local_a0 != 0x4004) && (local_a0 != 0x4008)) && (local_a0 != 0x400c))
    goto switchD_00b3c028_default;
LAB_00b3c0a2:
    uVar10 = 0x3d;
  }
LAB_00b3c0a7:
  BuildEditErrorRecord_InitializeAtLotPoint
            (local_50,uVar10,(undefined *)lot,&local_64,local_a0,*param_1);
LAB_00b3c19e:
  FUN_00ad8570(param_2,local_50);
  FUN_00ad70d0((int)local_50);
  return (bool)local_96;
}

