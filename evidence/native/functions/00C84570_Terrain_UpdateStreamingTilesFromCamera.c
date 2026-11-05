/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: PC 1.67 map/lot detail contract. Stores supplied allowNearDetail byte at terrain
   manager+f4 and16-byte camera vector+110. Per leaf, default desiredLOD1; only allowNearDetail and
   strict Chebyshev distance<threshold choose mode+fc mapping0->4,1->3,2->2. At/outside threshold,
   unordered values, disabled flag or other modes retain1. Writes desired LOD through00c85350 and
   advances tile work; current+5c and desired+60 are separate. The remainder handles original
   streaming/material/resource updates, retained in full; this bool is not an instruction to
   synchronously load every lot or unload every heightmap. */

void __thiscall
Terrain_UpdateStreamingTilesFromCamera(void *this,float *cameraPosition,uchar allowNearDetail)

{
  uint *puVar1;
  undefined4 *puVar2;
  void *this_00;
  undefined4 *puVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  bool bVar7;
  bool bVar8;
  undefined1 uVar9;
  char cVar10;
  bool bVar11;
  int iVar12;
  int *piVar13;
  int iVar14;
  undefined4 *puVar15;
  int *piVar16;
  float *pfVar17;
  void *pvVar18;
  undefined4 uVar19;
  int *piVar20;
  uint uVar21;
  uint uVar22;
  bool bVar23;
  bool bVar24;
  double dVar25;
  int local_d0;
  float local_c8;
  char cStack_be;
  char cStack_bd;
  float local_bc;
  undefined4 local_b8;
  float fStack_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  int iStack_a0;
  int iStack_9c;
  int iStack_98;
  int iStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_6c;
  LARGE_INTEGER LStack_68;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float afStack_50 [3];
  float afStack_44 [3];
  longlong local_38 [2];
  undefined4 auStack_28 [2];
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  *(uchar *)((int)this + 0xf4) = allowNearDetail;
  fVar4 = cameraPosition[1];
  fVar5 = cameraPosition[2];
  fVar6 = cameraPosition[3];
  pfVar17 = (float *)((int)this + 0x110);
  *pfVar17 = *cameraPosition;
  *(float *)((int)this + 0x114) = fVar4;
  *(float *)((int)this + 0x118) = fVar5;
  *(float *)((int)this + 0x11c) = fVar6;
  FUN_00c28f30(*(void **)((int)this + 100),pfVar17);
  *(float *)((int)this + 0x120) = *pfVar17;
  *(undefined4 *)((int)this + 0x124) = *(undefined4 *)((int)this + 0x114);
  *(undefined4 *)((int)this + 0x128) = *(undefined4 *)((int)this + 0x118);
  *(undefined4 *)((int)this + 300) = *(undefined4 *)((int)this + 0x11c);
  iVar12 = **(int **)((int)this + 0xb0);
  fVar4 = (float)*(int *)(iVar12 + 0x14);
  if (*(int *)(iVar12 + 0x14) < 0) {
    fVar4 = fVar4 + _DAT_00f99948;
  }
  fVar5 = (float)*(int *)(iVar12 + 0x18);
  if (*(int *)(iVar12 + 0x18) < 0) {
    fVar5 = fVar5 + _DAT_00f99948;
  }
  local_b0 = *(float *)((int)this + 0x120);
  fStack_ac = *(float *)((int)this + 0x124);
  fStack_a8 = *(float *)((int)this + 0x128);
  fStack_a4 = *(float *)((int)this + 300);
  local_bc = 1.0 / fVar4;
  local_90 = *(float *)((int)this + 0x120);
  fStack_8c = *(float *)((int)this + 0x124);
  fStack_88 = *(float *)((int)this + 0x128);
  fStack_84 = *(float *)((int)this + 300);
  local_80 = local_90;
  fStack_7c = fStack_8c;
  fStack_78 = fStack_88;
  fStack_74 = fStack_84;
  dVar25 = floor((double)(local_bc * local_b0 + _DAT_00f9b5b4));
  *(float *)((int)this + 0x120) = (float)dVar25 * fVar4;
  *(float *)((int)this + 0x124) = fStack_7c;
  *(float *)((int)this + 0x128) = fStack_88;
  *(float *)((int)this + 300) = fStack_84;
  local_90 = *(float *)((int)this + 0x120);
  fStack_8c = *(float *)((int)this + 0x124);
  fStack_88 = *(float *)((int)this + 0x128);
  fStack_84 = *(float *)((int)this + 300);
  local_b0 = *(float *)((int)this + 0x120);
  fStack_ac = *(float *)((int)this + 0x124);
  fStack_a8 = *(float *)((int)this + 0x128);
  fStack_a4 = *(float *)((int)this + 300);
  local_80 = local_b0;
  fStack_7c = fStack_ac;
  fStack_78 = fStack_a8;
  fStack_74 = fStack_a4;
  dVar25 = floor((double)((1.0 / fVar5) * fStack_88 + _DAT_00f9b5b4));
  uVar19 = DAT_010f4ccc;
  *(float *)((int)this + 0x120) = local_b0;
  *(float *)((int)this + 0x124) = fStack_ac;
  *(float *)((int)this + 0x128) = (float)dVar25 * fVar5;
  *(float *)((int)this + 300) = fStack_74;
  *(undefined4 *)((int)this + 0x120) = *(undefined4 *)((int)this + 0x120);
  *(undefined4 *)((int)this + 0x124) = uVar19;
  *(undefined4 *)((int)this + 0x128) = *(undefined4 *)((int)this + 0x128);
  *(undefined4 *)((int)this + 300) = *(undefined4 *)((int)this + 300);
  iVar12 = FUN_008c2c70(*(int *)((int)this + 100));
  if (iVar12 == 0) {
    uVar9 = 0;
  }
  else {
    uVar9 = *(undefined1 *)(iVar12 + 0x6c);
  }
  local_60 = *(float *)((int)this + 0x120);
  fStack_5c = *(float *)((int)this + 0x124);
  fStack_58 = *(float *)((int)this + 0x128);
  fStack_54 = *(float *)((int)this + 300);
  local_b8 = CONCAT31(local_b8._1_3_,uVar9);
  iVar12 = (*(int *)((int)this + 0x100) + *(int *)((int)this + 0xf8)) * 2 + -1;
  local_c8 = (float)iVar12;
  if (iVar12 < 0) {
    local_c8 = local_c8 + _DAT_00f99948;
  }
  local_c8 = local_c8 * _DAT_0107b940;
  if (*(int *)((int)this + 0xf8) == 0) {
    local_b0 = *pfVar17;
    fStack_ac = *(float *)((int)this + 0x114);
    fStack_a8 = *(float *)((int)this + 0x118);
    fStack_a4 = *(float *)((int)this + 0x11c);
    local_90 = local_b0;
    fStack_8c = fStack_ac;
    fStack_88 = fStack_a8;
    fStack_84 = fStack_a4;
    local_80 = local_60;
    fStack_7c = fStack_5c;
    fStack_78 = fStack_58;
    fStack_74 = fStack_54;
    dVar25 = floor((double)(local_b0 * local_bc));
    local_bc = ((float)dVar25 + _DAT_00f9b5b4) * fVar4;
    local_90 = local_b0;
    fStack_8c = fStack_ac;
    fStack_88 = fStack_a8;
    fStack_84 = fStack_a4;
    fStack_5c = fStack_7c;
    fStack_78 = fStack_58;
    fStack_74 = fStack_54;
    local_80 = local_bc;
    local_60 = local_bc;
    dVar25 = floor((double)(fStack_a8 * (1.0 / fVar5)));
    fStack_58 = ((float)dVar25 + _DAT_00f9b5b4) * fVar5;
    fStack_54 = fStack_74;
    local_c8 = _DAT_0104487c;
  }
  if ((*(char *)((int)this + 0xf1) == '\0') && (*(char *)((int)this + 0xf0) != '\0')) {
    piVar20 = *(int **)((int)this + 0xb4);
    for (piVar16 = *(int **)((int)this + 0xb0); piVar16 != piVar20; piVar16 = piVar16 + 1) {
      iVar12 = *piVar16;
      if (((*(int *)(iVar12 + 0x60) == 4) && (*(int *)(iVar12 + 0x5c) == 4)) &&
         (*(int *)(iVar12 + 0xdc) == 0)) {
        FUN_00c30d20(local_38,*(int *)(iVar12 + 4),*(int *)(iVar12 + 8),7);
        piVar13 = (int *)FUN_004afe80();
        iVar14 = (**(code **)(*piVar13 + 0x44))();
        if (iVar14 == 0) {
          puVar15 = (undefined4 *)FUN_004e4500(0x34,"Terrain/WorldLeafTexture",0);
          if (puVar15 == (undefined4 *)0x0) {
            piVar13 = (int *)0x0;
          }
          else {
            piVar13 = FUN_0061a2a0(puVar15);
          }
          FUN_007c8ed0((undefined4 *)(iVar12 + 0xdc),piVar13);
          cVar10 = FUN_00c24280(*(void **)((int)this + 0x68),*(void **)(iVar12 + 0xdc),
                                *(int *)(iVar12 + 0xc),*(int *)(iVar12 + 0x10),7);
          if (cVar10 != '\0') {
            Terrain_BuildWorldMaterialLayers(this,iVar12,'\0','\0');
            FUN_00c7f9d0(this,iVar12);
          }
        }
      }
    }
    *(undefined1 *)((int)this + 0xf1) = 1;
  }
  puVar2 = *(undefined4 **)((int)this + 0xb4);
  for (puVar15 = *(undefined4 **)((int)this + 0xb0); puVar15 != puVar2; puVar15 = puVar15 + 1) {
    pvVar18 = (void *)*puVar15;
    fStack_a4 = (float)*(int *)((int)pvVar18 + 0xc);
    fStack_a8 = (float)*(int *)((int)pvVar18 + 0x10);
    local_b0 = fStack_a4;
    fStack_ac = 0.0;
    fStack_20 = fStack_a4 - local_60;
    fStack_1c = 0.0 - fStack_5c;
    fStack_18 = (float)*(int *)((int)pvVar18 + 0x10) - fStack_58;
    fStack_14 = fStack_a4 - fStack_54;
    local_90 = fStack_20;
    fStack_8c = fStack_1c;
    fStack_88 = fStack_18;
    fStack_84 = fStack_14;
    local_80 = fStack_20;
    fStack_7c = fStack_1c;
    fStack_78 = fStack_18;
    fStack_74 = fStack_14;
    fStack_6c = ABS(fStack_18);
    pfVar17 = &fStack_6c;
    fStack_b4 = ABS(fStack_20);
    if (ABS(fStack_18) <= ABS(fStack_20)) {
      pfVar17 = &fStack_b4;
    }
    local_d0 = 1;
    if ((allowNearDetail == '\0') || (local_c8 < *pfVar17 || local_c8 == *pfVar17)) {
LAB_00c849c4:
      if (*(void **)((int)this + 0x1a8) == pvVar18) {
        *(undefined4 *)((int)this + 0x1a8) = 0;
        FUN_00c30910(*(int *)((int)this + 0x1a4));
      }
    }
    else {
      iVar12 = *(int *)((int)this + 0xfc);
      if (iVar12 == 0) {
        local_d0 = 4;
        goto LAB_00c849c4;
      }
      if (iVar12 != 1) {
        if (iVar12 == 2) {
          local_d0 = 2;
        }
        goto LAB_00c849c4;
      }
      local_d0 = 3;
    }
    FUN_00c85350(pvVar18,local_d0);
    FUN_00c85430(pvVar18,*(void **)((int)this + 0x19c));
    if ((*(int *)((int)this + 0x14) != 0) &&
       (this_00 = *(void **)(*(int *)((int)this + 0x14) + 0x5c), this_00 != (void *)0x0)) {
      FUN_00b77630(this_00,*(uint *)((int)pvVar18 + 4),*(uint *)((int)pvVar18 + 8),local_d0 == 1);
      if ((*(char *)(*(int *)((int)this + 100) + 0x1c) == '\0') &&
         (*(char *)(*(int *)((int)this + 100) + 0x1d) == '\0')) {
        FUN_00b7de50(this_00,*(uint *)((int)pvVar18 + 4),*(uint *)((int)pvVar18 + 8),'\x01');
      }
    }
    if ((*(int *)((int)pvVar18 + 0x5c) != *(int *)((int)pvVar18 + 0x60)) &&
       (*(int *)((int)pvVar18 + 0x60) != 1)) {
      FUN_00c85b30((int)pvVar18);
    }
  }
  bVar8 = false;
  if (*(char *)((int)*(void **)((int)this + 100) + 0x1c) != '\0') {
    puVar15 = *(undefined4 **)((int)this + 0xb0);
    puVar2 = *(undefined4 **)((int)this + 0xb4);
    cStack_bd = '\0';
    for (; puVar15 != puVar2; puVar15 = puVar15 + 1) {
      puVar3 = (undefined4 *)*puVar15;
      if (puVar3[0x17] != puVar3[0x18]) {
        FUN_00c83cb0(this,puVar3,&cStack_bd);
      }
    }
    goto LAB_00c851d6;
  }
  bVar23 = *(int *)(*(int *)((int)this + 0x14) + 0x1b4) != 0;
  FUN_00c28b00(*(void **)((int)this + 100),&iStack_a0);
  if (((iStack_a0 == iStack_98) || (iStack_9c == iStack_94)) || (bVar23)) {
    bVar7 = false;
    if ((bVar23) || ((*(byte *)((int)this + 0x140) & 0x20) != 0)) goto LAB_00c84aeb;
    if (*(int *)((int)this + 0x158) != 0 || *(int *)((int)this + 0x15c) != 0) {
      QueryPerformanceCounter(&LStack_68);
      uVar21 = (uint)(*(uint *)((int)this + 0x170) < LStack_68.s.LowPart);
      uVar22 = *(int *)((int)this + 0x174) - LStack_68._4_4_;
      bVar24 = -1 < (int)(uVar22 - uVar21);
      if ((uVar22 != uVar21 && bVar24) || (bVar24)) goto LAB_00c84aeb;
    }
    bVar24 = true;
LAB_00c84b6a:
    if ((*(byte *)((int)this + 0x140) & 0x20) != 0) {
      *(byte *)((int)this + 0x140) = *(byte *)((int)this + 0x140) & 0xdf;
      FUN_004f38f0((void *)((int)this + 0x158),1000,'\x01');
    }
    if (((bVar24) && (*(int *)((int)this + 0x148) != *(int *)((int)this + 0x150))) &&
       (*(int *)((int)this + 0x14c) != *(int *)((int)this + 0x154))) {
      TerrainOptimizerOwner_BuildVerticesFromHeightMap(*(void **)((int)this + 0x68));
    }
  }
  else {
    bVar7 = true;
LAB_00c84aeb:
    bVar24 = false;
    if (!bVar7) goto LAB_00c84b6a;
    FUN_00524610((void *)((int)this + 0x148),(void *)((int)this + 0x148),&iStack_a0);
    FUN_00c286c0(*(int *)((int)this + 100));
    *(byte *)((int)this + 0x140) = *(byte *)((int)this + 0x140) | 0x20;
  }
  pvVar18 = (void *)FUN_006e9660();
  if (((pvVar18 != (void *)0x0) && (bVar11 = FUN_006b58d0(pvVar18,bVar23), bVar11)) &&
     ((iVar12 = FUN_006e9640(), bVar23 ||
      ((iVar12 != 0 && (uVar19 = FUN_006ac760(iVar12), (char)uVar19 != '\0')))))) {
    FUN_006b58f0((int)pvVar18);
    piVar20 = *(int **)((int)this + 0xb4);
    for (piVar16 = *(int **)((int)this + 0xb0); piVar16 != piVar20; piVar16 = piVar16 + 1) {
      *(undefined1 *)(*piVar16 + 0x55) = 1;
    }
  }
  pvVar18 = (void *)FUN_006fdbe0();
  if ((pvVar18 != (void *)0x0) && (bVar23 = FUN_006fdb80(pvVar18,bVar23), bVar23)) {
    FUN_006fdba0((int)pvVar18);
    piVar20 = *(int **)((int)this + 0xb4);
    for (piVar16 = *(int **)((int)this + 0xb0); piVar16 != piVar20; piVar16 = piVar16 + 1) {
      *(undefined1 *)(*piVar16 + 0x56) = 1;
    }
  }
  puVar15 = *(undefined4 **)((int)this + 0xb0);
  puVar2 = *(undefined4 **)((int)this + 0xb4);
  bVar23 = false;
  cStack_be = '\0';
  for (; puVar15 != puVar2; puVar15 = puVar15 + 1) {
    piVar16 = (int *)*puVar15;
    if ((((!bVar7) || (iStack_98 <= piVar16[0x10])) || (piVar16[0x12] <= iStack_a0)) ||
       ((iStack_94 <= piVar16[0x11] || (bVar11 = true, piVar16[0x13] <= iStack_9c)))) {
      bVar11 = false;
    }
    if (*(char *)((int)piVar16 + 0x57) != '\0') {
      if (*(char *)((int)*(void **)((int)this + 100) + 0x1d) != '\0') {
        FUN_00c28fc0(*(void **)((int)this + 100),piVar16[3],piVar16[4]);
        piVar20 = (int *)piVar16[0x1f];
        if (piVar20 != (int *)0x0) {
          piVar16[0x1f] = 0;
          (**(code **)(*piVar20 + 8))();
        }
        piVar20 = (int *)piVar16[0x20];
        if (piVar20 != (int *)0x0) {
          piVar16[0x20] = 0;
          (**(code **)(*piVar20 + 8))();
        }
        piVar20 = (int *)piVar16[0x21];
        if (piVar20 != (int *)0x0) {
          piVar16[0x21] = 0;
          (**(code **)(*piVar20 + 8))();
        }
        piVar20 = (int *)piVar16[0x22];
        if (piVar20 != (int *)0x0) {
          piVar16[0x22] = 0;
          (**(code **)(*piVar20 + 8))();
        }
        puVar1 = (uint *)(piVar16 + 0x1a);
        if (((piVar16[0x1a] & 3U) == 0) && (*puVar1 != 0)) {
          if (DAT_011d4c84 != (int *)0x0) {
            (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1);
          }
          if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
            (**(code **)(*(int *)*puVar1 + 4))();
            *puVar1 = 0;
          }
        }
        puVar1 = (uint *)(piVar16 + 0x19);
        if (((piVar16[0x19] & 3U) == 0) && (*puVar1 != 0)) {
          if (DAT_011d4c84 != (int *)0x0) {
            (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1);
          }
          if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
            (**(code **)(*(int *)*puVar1 + 4))();
            *puVar1 = 0;
          }
        }
      }
      piVar20 = (int *)(*(int *)((int)this + 100) + 4);
      LOCK();
      *piVar20 = *piVar20 + 1;
      UNLOCK();
      FUN_00c61a80(*(void **)((int)this + 0x14),(undefined4 *)0x0);
      uVar19 = FUN_00c84040(this,piVar16);
      FUN_00c61a80(*(void **)((int)this + 0x14),*(undefined4 **)((int)this + 100));
      puVar3 = *(undefined4 **)((int)this + 100);
      piVar20 = puVar3 + 1;
      LOCK();
      iVar12 = *piVar20;
      *piVar20 = *piVar20 + -1;
      UNLOCK();
      if (iVar12 == 1) {
        LOCK();
        *piVar20 = 1;
        UNLOCK();
        if (puVar3 != (undefined4 *)0x0) {
          (**(code **)*puVar3)();
        }
      }
      if ((char)uVar19 != '\0') {
        *(undefined1 *)((int)piVar16 + 0x57) = 0;
        bVar8 = true;
        bVar23 = true;
        if (*(char *)(*(int *)((int)this + 100) + 0x1d) == '\0') {
          FUN_00b77540(*(void **)(*(int *)((int)this + 0x14) + 0x5c),piVar16[1],piVar16[2]);
        }
        goto LAB_00c84e35;
      }
LAB_00c8517f:
      TerrainOptimizerOwner_RefreshBudgets(*(void **)((int)this + 0x68));
      piVar20 = *(int **)((int)this + 0xb4);
      for (piVar16 = *(int **)((int)this + 0xb0); piVar16 != piVar20; piVar16 = piVar16 + 1) {
        *(undefined1 *)(*piVar16 + 0x57) = 1;
      }
      goto LAB_00c851ae;
    }
    if ((piVar16[0x17] != piVar16[0x18]) &&
       (uVar19 = FUN_00c29050(*(void **)((int)this + 100),piVar16[3],piVar16[4]),
       (char)uVar19 != '\0')) {
      FUN_00c83cb0(this,piVar16,&cStack_be);
      goto LAB_00c85069;
    }
LAB_00c84e35:
    if (piVar16[0x17] == piVar16[0x18]) {
      if (!bVar11) goto LAB_00c84e6a;
LAB_00c84f5c:
      if (*piVar16 == 3) {
        FUN_00c23a90(*(void **)((int)this + 0x68),piVar16[0x1b],piVar16[3],piVar16[4]);
        *(undefined1 *)(piVar16 + 0x14) = 1;
      }
      else {
        FUN_00c831b0(this,piVar16);
        bVar8 = true;
        *(undefined1 *)(piVar16 + 0x14) = 1;
      }
LAB_00c84f8c:
      if (!bVar8) {
LAB_00c84f97:
        uVar21 = FUN_00c85370(piVar16,piVar16[0x18]);
        if (((((char)uVar21 == '\0') ||
             (uVar21 = FUN_00c85370(piVar16,piVar16[0x17]), (char)uVar21 == '\0')) ||
            (*(char *)((int)piVar16 + 0x55) != '\0')) || (*(char *)((int)piVar16 + 0x56) != '\0')) {
          if ((char)local_b8 == '\0') {
            FUN_00c834a0(this,piVar16);
          }
          else {
            FUN_00c80e10(this,piVar16);
          }
          FUN_00c83010(this,piVar16,'\x01',(char)local_b8);
          FUN_00c7f9d0(this,(int)piVar16);
          if ((*(char *)((int)piVar16 + 0x55) != '\0') || (*(char *)((int)piVar16 + 0x56) != '\0'))
          {
            FUN_00c85360((int)piVar16);
          }
          if (*(char *)((int)piVar16 + 0x55) != '\0') {
            FUN_00b77540(*(void **)(*(int *)((int)this + 0x14) + 0x5c),piVar16[1],piVar16[2]);
            *(undefined1 *)((int)piVar16 + 0x55) = 0;
          }
          *(undefined1 *)((int)piVar16 + 0x56) = 0;
        }
        else if ((char)local_b8 == '\0') {
          if ((char)piVar16[0x14] == '\0') {
            if ((char)piVar16[0x15] != '\0') {
              FUN_00c7e6b0(this,(int)piVar16,'\0');
              bVar8 = true;
            }
          }
          else {
            FUN_00c230b0(*(void **)((int)this + 0x68),(void *)piVar16[0x1d],piVar16[3],piVar16[4]);
            *(undefined1 *)(piVar16 + 0x14) = 0;
            bVar8 = true;
          }
        }
      }
    }
    else {
      if (bVar11) goto LAB_00c84f5c;
      uVar21 = FUN_00c85370(piVar16,piVar16[0x18]);
      if ((char)uVar21 == '\0') {
        FUN_00c85430(piVar16,*(void **)((int)this + 0x19c));
      }
      else {
        piVar16[0x17] = piVar16[0x18];
        FUN_00c7f9d0(this,(int)piVar16);
      }
LAB_00c84e6a:
      if (!bVar24) goto LAB_00c84f8c;
      if (!bVar8) {
        if (*piVar16 == 3) {
          piVar20 = (int *)(*(int *)((int)this + 100) + 4);
          LOCK();
          *piVar20 = *piVar20 + 1;
          UNLOCK();
          FUN_00c61a80(*(void **)((int)this + 0x14),(undefined4 *)0x0);
          uVar19 = FUN_00c84040(this,piVar16);
          FUN_00c61a80(*(void **)((int)this + 0x14),*(undefined4 **)((int)this + 100));
          puVar3 = *(undefined4 **)((int)this + 100);
          piVar20 = puVar3 + 1;
          LOCK();
          iVar12 = *piVar20;
          *piVar20 = *piVar20 + -1;
          UNLOCK();
          if (iVar12 == 1) {
            LOCK();
            *piVar20 = 1;
            UNLOCK();
            if (puVar3 != (undefined4 *)0x0) {
              (**(code **)*puVar3)();
            }
          }
          if ((char)uVar19 == '\0') goto LAB_00c8517f;
          bVar23 = true;
          bVar8 = true;
          FUN_00b77540(*(void **)(*(int *)((int)this + 0x14) + 0x5c),piVar16[1],piVar16[2]);
          goto LAB_00c85069;
        }
        goto LAB_00c84f97;
      }
    }
LAB_00c85069:
  }
  if (((bVar24) && (*(void **)((int)this + 0x68) != (void *)0x0)) &&
     ((bVar23 &&
      (uVar21 = FUN_00c22b70(*(void **)((int)this + 0x68),0,auStack_28), (char)uVar21 != '\0')))) {
    FUN_00c22ba0(*(void **)((int)this + 0x68),0,afStack_50);
    uVar21 = 0;
    for (piVar16 = *(int **)((int)this + 0xb0); piVar16 != *(int **)((int)this + 0xb4);
        piVar16 = piVar16 + 1) {
      if (((*piVar16 != 0) && (iVar12 = *(int *)(*piVar16 + 0x7c), iVar12 != 0)) &&
         (uVar22 = *(uint *)(iVar12 + 0x18) >> 3, uVar21 < uVar22)) {
        uVar21 = uVar22;
      }
    }
    if ((*(float *)((int)this + 0x70) == afStack_50[0]) && (-1 < *(int *)((int)this + 0x6c))) {
      iVar12 = uVar21 - *(int *)((int)this + 0x6c);
      if (iVar12 < 0) {
        iVar12 = -iVar12;
      }
      if (10000 < iVar12) {
        TerrainOptimizerOwner_RefreshBudgets(*(void **)((int)this + 0x68));
        FUN_00c22ba0(*(void **)((int)this + 0x68),0,afStack_44);
        if (afStack_44[0] != afStack_50[0]) {
          piVar20 = *(int **)((int)this + 0xb4);
          for (piVar16 = *(int **)((int)this + 0xb0); piVar16 != piVar20; piVar16 = piVar16 + 1) {
            *(undefined1 *)(*piVar16 + 0x57) = 1;
          }
        }
      }
    }
    else {
      *(float *)((int)this + 0x70) = afStack_50[0];
      *(uint *)((int)this + 0x6c) = uVar21;
    }
  }
LAB_00c851ae:
  if ((!bVar7) && (bVar24)) {
    *(undefined4 *)((int)this + 0x148) = 0;
    *(undefined4 *)((int)this + 0x14c) = 0;
    *(undefined4 *)((int)this + 0x150) = 0;
    *(undefined4 *)((int)this + 0x154) = 0;
  }
LAB_00c851d6:
  if (*(void **)((int)this + 0x198) != (void *)0x0) {
    FUN_00c2e9e0(*(void **)((int)this + 0x198),'\0');
    FUN_00c2e6d0(*(int *)((int)this + 0x198));
  }
  return;
}

