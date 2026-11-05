/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 static instructions/callers: cdecl seven words, low AL bool. For each compact wall locator
   calls C45F20/C45FB0; requires differing opposite-side excavation and no existing wall. Preserves
   optional removed-pattern map, including reversed orientation. Attempts native wall addition and
   records success/failure; not a blind rectangular mesh generator. */

bool __cdecl
BasementWalls_CloseExposedPerimeter
          (void *param_1,undefined4 param_2,uint *param_3,int *param_4,int **param_5,void *param_6,
          void *param_7)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  bool bVar4;
  undefined4 *puVar5;
  int iVar6;
  void *pvVar7;
  uint uVar8;
  int *piVar9;
  undefined4 uVar10;
  int iVar11;
  float *pfVar12;
  uint *puVar13;
  uint *puVar14;
  bool bStack_14f;
  bool bStack_14e;
  char cStack_14c;
  char cStack_14b;
  char cStack_14a;
  undefined1 uStack_149;
  char cStack_148;
  char cStack_147;
  char cStack_146;
  undefined1 uStack_145;
  int *local_144;
  int iStack_140;
  int iStack_13c;
  undefined2 uStack_138;
  undefined1 uStack_136;
  undefined2 uStack_135;
  undefined1 uStack_133;
  int iStack_130;
  void *pvStack_12c;
  uint uStack_128;
  undefined4 uStack_124;
  undefined4 uStack_120;
  undefined4 uStack_11c;
  int *piStack_118;
  int *piStack_114;
  int *piStack_110;
  undefined4 uStack_10c;
  char *pcStack_108;
  undefined4 uStack_100;
  undefined4 uStack_fc;
  undefined4 uStack_f8;
  undefined4 uStack_f4;
  undefined4 uStack_f0;
  undefined4 uStack_ec;
  undefined4 uStack_e8;
  undefined4 uStack_e4;
  undefined4 uStack_e0;
  undefined4 uStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  int iStack_d0;
  int iStack_cc;
  uint auStack_c8 [16];
  uint auStack_88 [16];
  uint auStack_48 [17];
  
  puVar5 = (undefined4 *)FUN_004e4500(0x110,"UserTool/BasementPlacementHelper/UndoableWall",0);
  if (puVar5 == (undefined4 *)0x0) {
    local_144 = (int *)0x0;
  }
  else {
    local_144 = FUN_00d2ddd0(puVar5);
    if (local_144 != (int *)0x0) {
      local_144[1] = local_144[1] + 1;
    }
  }
  piVar9 = local_144;
  (**(code **)(*local_144 + 4))();
  FUN_00d2c870(piVar9,param_1);
  FUN_00d2c890((int)piVar9);
  pvVar7 = DAT_011ee034;
  pvStack_12c = *(void **)((int)param_1 + 0x298);
  bVar1 = false;
  piStack_118 = (int *)0x0;
  piStack_114 = (int *)0x0;
  piStack_110 = (int *)0x0;
  uStack_10c = 0;
  pcStack_108 = "Lot/tPatterDesignModeData";
  uStack_100 = 0;
  uStack_fc = 0;
  uStack_f8 = 0;
  uStack_f4 = 0;
  uStack_f0 = 0;
  uStack_ec = 0;
  uStack_e8 = 0;
  uStack_e4 = 0;
  uStack_e0 = 0;
  uStack_dc = 0;
  uStack_d8 = 0;
  uStack_d4 = 0;
  bStack_14f = true;
  if ((param_5 == (int **)0x0) && (iVar6 = FUN_00c8e6b0(DAT_011ee034,param_3,'\x01'), iVar6 != 0)) {
    uStack_124 = *(undefined4 *)(iVar6 + 0xac);
    uStack_128 = *(uint *)(iVar6 + 0xa8);
    uStack_120 = *(undefined4 *)(iVar6 + 0xb0);
    uStack_11c = *(undefined4 *)(iVar6 + 0xb4);
    pvVar7 = (void *)ProductCatalog_FindExactKeyInFourBanks(pvVar7,&uStack_128);
    if ((pvVar7 != (void *)0x0) &&
       (uVar8 = PatternProduct_CountAuthoredAndInstalledPresets(pvVar7), uVar8 != 0)) {
      uVar8 = FUN_00c99a00((int)pvVar7);
      PatternContext_PrepareFromBankProduct((int)param_1,&uStack_128,uVar8,2,&piStack_118);
      param_5 = &piStack_118;
    }
  }
  iStack_140 = 0;
  if (param_7 != (void *)0x0) {
    iStack_140 = (int)param_7 + 4;
  }
  iVar6 = (param_4[1] - *param_4) / 6;
  if (0 < iVar6) {
    iStack_13c = 0;
    iStack_130 = iVar6;
    do {
      puVar13 = (uint *)0x0;
      pfVar12 = (float *)(*param_4 + iStack_13c);
      cStack_148 = -1;
      cStack_147 = -1;
      cStack_146 = '\0';
      uStack_145 = 0xff;
      cStack_14c = -1;
      cStack_14b = -1;
      cStack_14a = '\0';
      uStack_149 = 0xff;
      WallLocator_QueryFirstAdjacentTile((char *)pfVar12,(undefined2 *)&cStack_148);
      WallLocator_QueryOtherAdjacentTile((undefined2 *)pfVar12,(undefined2 *)&cStack_14c);
      bStack_14e = false;
      if ((((-1 < cStack_148) && ((int)cStack_148 < *(int *)((int)param_1 + 0x174))) &&
          (-1 < cStack_147)) &&
         ((((int)cStack_147 < *(int *)((int)param_1 + 0x178) &&
           (*(int *)((int)param_1 + 0x17c) <= (int)cStack_146)) &&
          ((int)cStack_146 <= *(int *)((int)param_1 + 0x180))))) {
        bStack_14e = LotBasement_TestAnyRequestedPart(param_1,&cStack_148);
      }
      bVar4 = false;
      if (((-1 < cStack_14c) && ((int)cStack_14c < *(int *)((int)param_1 + 0x174))) &&
         ((-1 < cStack_14b &&
          ((((int)cStack_14b < *(int *)((int)param_1 + 0x178) &&
            (*(int *)((int)param_1 + 0x17c) <= (int)cStack_14a)) &&
           ((int)cStack_14a <= *(int *)((int)param_1 + 0x180))))))) {
        bVar4 = LotBasement_TestAnyRequestedPart(param_1,&cStack_14c);
      }
      if ((bStack_14e != bVar4) &&
         (bVar4 = PartitionManager_HasPhysicalWallForLocator(pvStack_12c,(char *)pfVar12), !bVar4))
      {
        FUN_00afbc90(auStack_c8);
        if (param_7 != (void *)0x0) {
          piVar9 = (int *)FUN_00c4c900(param_7,&iStack_d0,(char *)pfVar12);
          iVar6 = *piVar9;
          bVar4 = false;
          if (iVar6 == iStack_140) {
            uStack_138 = *(undefined2 *)((int)pfVar12 + 3);
            uStack_136 = *(undefined1 *)((int)pfVar12 + 5);
            uStack_135 = *(undefined2 *)pfVar12;
            uStack_133 = *(undefined1 *)((int)pfVar12 + 2);
            piVar9 = (int *)FUN_00c4c900(param_7,&iStack_cc,(char *)&uStack_138);
            iVar6 = *piVar9;
            bVar4 = true;
            if (iVar6 == iStack_140) goto LAB_00c9e663;
          }
          puVar13 = (uint *)(iVar6 + 0x18);
          puVar14 = auStack_c8;
          for (iVar11 = 0x20; iVar11 != 0; iVar11 = iVar11 + -1) {
            *puVar14 = *puVar13;
            puVar13 = puVar13 + 1;
            puVar14 = puVar14 + 1;
          }
          if (bVar4) {
            puVar13 = auStack_88;
            puVar14 = auStack_48;
            for (iVar6 = 0x10; iVar6 != 0; iVar6 = iVar6 + -1) {
              *puVar14 = *puVar13;
              puVar13 = puVar13 + 1;
              puVar14 = puVar14 + 1;
            }
            puVar13 = auStack_c8;
            puVar14 = auStack_88;
            for (iVar6 = 0x10; iVar6 != 0; iVar6 = iVar6 + -1) {
              *puVar14 = *puVar13;
              puVar13 = puVar13 + 1;
              puVar14 = puVar14 + 1;
            }
            puVar13 = auStack_48;
            puVar14 = auStack_c8;
            for (iVar6 = 0x10; iVar6 != 0; iVar6 = iVar6 + -1) {
              *puVar14 = *puVar13;
              puVar13 = puVar13 + 1;
              puVar14 = puVar14 + 1;
            }
          }
          puVar13 = auStack_c8;
        }
LAB_00c9e663:
        uVar10 = FUN_00d2dee0(local_144,(int)param_1,pfVar12,param_3,(int)param_5,puVar13);
        if ((char)uVar10 == '\0') {
          bStack_14f = false;
        }
        else {
          bVar1 = true;
        }
      }
      iStack_13c = iStack_13c + 6;
      iStack_130 = iStack_130 + -1;
    } while (iStack_130 != 0);
    if (bVar1) {
      FUN_00d1b200(param_6,local_144);
      piVar9 = piStack_114;
      piVar2 = piStack_110;
      goto joined_r0x00c9e6c6;
    }
  }
  (**(code **)(*local_144 + 8))();
  piVar9 = piStack_114;
  piVar2 = piStack_110;
joined_r0x00c9e6c6:
  for (; piVar3 = piStack_110, piVar9 < piStack_110; piVar9 = piVar9 + 1) {
    piStack_110 = piVar2;
    if ((int *)*piVar9 != (int *)0x0) {
      (**(code **)(*(int *)*piVar9 + 4))();
    }
    piVar2 = piStack_110;
    piStack_110 = piVar3;
  }
  piStack_110 = piVar2;
  if (piStack_114 != (int *)0x0) {
    Memory_FreeIfNonNull(piStack_114);
  }
  if (piStack_118 != (int *)0x0) {
    (**(code **)(*piStack_118 + 4))();
  }
  iVar6 = local_144[1];
  local_144[1] = iVar6 + -1;
  if (iVar6 + -1 == 0) {
    local_144[1] = 1;
    (**(code **)*local_144)(1);
  }
  return bStack_14f;
}

