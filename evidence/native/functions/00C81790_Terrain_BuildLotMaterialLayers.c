/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67: For each blend subset stores scalar binary32 useAlphaBlending/useZWrite with
   opposite0/1 values, based on subset byte. Adds bIsLotTerrain or bIsLotTerrainBB and bIsDivingLot
   when original native predicate true. These are material parameter producers; dynamic PASS states
   consume matching name hashes. Terrain grass paint is not a separate depth policy established
   here. */

undefined4 * __thiscall Terrain_BuildLotMaterialLayers(void *this,int param_1,void *param_2)

{
  byte bVar1;
  bool bVar2;
  char cVar3;
  undefined4 *puVar4;
  uint uVar5;
  float *pfVar6;
  byte *pbVar7;
  undefined4 uVar8;
  int *piVar9;
  int iVar10;
  void *pvVar11;
  int *piVar12;
  uint uVar13;
  bool bVar14;
  float afStackY_470 [204];
  char *pcVar15;
  int iVar16;
  uint *puVar17;
  void **ppvVar18;
  void *local_108;
  int local_104;
  int local_100;
  int *local_fc;
  int *local_f8;
  undefined4 local_f4;
  float local_ec;
  float local_e8;
  undefined4 *local_e4;
  void *local_e0;
  int local_dc;
  undefined4 local_d8;
  char *local_d4;
  int *local_d0;
  int *local_cc;
  undefined4 local_c8;
  undefined4 local_c4;
  uint local_c0 [9];
  int local_9c;
  int local_98;
  int local_94;
  float local_90 [11];
  undefined1 *local_64;
  undefined1 *local_60;
  undefined1 *local_5c;
  char *local_58;
  undefined1 *local_54;
  undefined1 local_50 [64];
  undefined1 local_10 [12];
  
  if ((param_2 == (void *)0x0) || (*(char *)((int)param_2 + 0x4bc) != '\0')) {
    return (undefined4 *)0x0;
  }
  iVar10 = *(int *)(*(int *)((int)this + 0x14) + 0x154);
  if (((iVar10 == 0xc9) || (iVar10 == 0xca)) || (iVar10 == 0xcc)) {
    bVar2 = true;
    cVar3 = '\x01';
  }
  else {
    cVar3 = '\0';
    bVar2 = false;
  }
  if (*(char *)(param_1 + 0x58) != cVar3) {
    *(char *)(param_1 + 0x58) = cVar3;
    FUN_00c85c10(param_1);
  }
  local_f8 = *(int **)((int)param_2 + 0x48);
  local_f4 = *(undefined4 *)((int)param_2 + 0x4c);
  puVar4 = (undefined4 *)FUN_00c85730(param_1);
  if (puVar4 != (undefined4 *)0x0) {
    return puVar4;
  }
  puVar4 = (undefined4 *)FUN_00c86100(param_1);
  local_e4 = puVar4;
  FUN_00c7edb0((int *)*puVar4,(int *)puVar4[1]);
  puVar4[1] = *puVar4;
  local_108 = (void *)FUN_008c2c70(*(int *)((int)this + 100));
  local_c0[8] = *(int *)(param_1 + 4);
  local_9c = *(int *)(param_1 + 8);
  local_104 = *(int *)(param_1 + 0xc);
  local_100 = *(int *)(param_1 + 0x10);
  local_98 = *(int *)(param_1 + 0x14) + local_c0[8];
  local_94 = *(int *)(param_1 + 0x18) + local_9c;
  local_e0 = (void *)0x0;
  local_dc = 0;
  local_d8 = 0;
  pvVar11 = *(void **)((int)this + 100);
  local_d4 = "Terrain/TerrainBlendMap/blendLayerIds";
  if ((*(char *)((int)pvVar11 + 0x1c) == '\0') && (*(char *)((int)pvVar11 + 0x1d) == '\0')) {
    if (local_108 == (void *)0x0) {
      return puVar4;
    }
    FUN_00c22170(local_108,(int *)(local_c0 + 8),&local_e0);
  }
  else {
    iVar10 = FUN_00c28f80(pvVar11,local_c0[8],local_9c);
    FUN_00608c10(&local_e0,(int *)(iVar10 + 0x3c));
  }
  local_ec = (float)(local_dc - (int)local_e0);
  local_fc = (int *)(param_1 + 0xc0);
  uVar13 = (int)local_ec + 3U >> 2;
  if (*(int *)(param_1 + 0xc4) - *(int *)(param_1 + 0xc0) >> 2 != uVar13) {
    local_108 = (void *)0x0;
    FUN_00c813d0(local_fc,uVar13,(int *)&local_108);
  }
  local_e8 = 1.0;
  bVar14 = *(char *)(*(int *)((int)this + 100) + 0x1f) == '\0';
  local_64 = local_50;
  local_5c = local_10;
  local_58 = "Terrain/TempBlendTextureList";
  local_60 = local_64;
  local_54 = local_64;
  if (bVar14) {
    Terrain_UpdateBlendMaskTextures(this,param_1,'\0',(int)local_e0,(uint)local_ec,'\0');
    FUN_0044fd10(&local_64,uVar13);
    uVar5 = 0;
    if (uVar13 != 0) {
      do {
        *(undefined4 *)(local_64 + uVar5 * 4) = *(undefined4 *)(*local_fc + uVar5 * 4);
        uVar5 = uVar5 + 1;
      } while (uVar5 < uVar13);
    }
  }
  uVar8 = local_f4;
  piVar12 = local_f8;
  local_fc = (int *)FUN_00c29850(*(void **)((int)this + 100),local_f8,local_f4,local_104,local_100);
  if (local_fc == (int *)0x0) {
    iVar10 = *(int *)((int)param_2 + 0x178);
    iVar16 = *(int *)((int)param_2 + 0x174);
    pfVar6 = (float *)Lot_GetLocalToWorldPose(param_2,local_90);
    FUN_00c2b990(*(void **)((int)this + 100),(uint)piVar12,uVar8,pfVar6,iVar16,iVar10);
    local_fc = (int *)FUN_00c29850(*(void **)((int)this + 100),piVar12,uVar8,local_104,local_100);
    if (local_fc == (int *)0x0) {
      if ((local_64 != (undefined1 *)0x0) && (local_64 != local_54)) {
        Memory_FreeIfNonNull(local_64);
      }
      if (local_e0 == (void *)0x0) {
        return (undefined4 *)0x0;
      }
      Memory_FreeIfNonNull(local_e0);
      return (undefined4 *)0x0;
    }
  }
  local_f8 = (int *)*local_fc;
  if (local_f8 != local_fc) {
    do {
      uVar13 = local_f8[3];
      iVar10 = 0;
      local_c0[4] = 0;
      local_c0[5] = 0;
      local_c0[6] = 0;
      local_c0[7] = 0;
      local_c0[0] = 0;
      local_c0[1] = 0;
      local_c0[2] = 0;
      local_c0[3] = 0;
      if (uVar13 != 0) {
        pbVar7 = (byte *)(local_f8 + 4);
        uVar5 = uVar13;
        do {
          if (bVar14) {
            *(undefined4 *)((int)local_c0 + iVar10 + 0x10) =
                 *(undefined4 *)(local_64 + (uint)(*pbVar7 >> 2) * 4);
          }
          *(uint *)((int)local_c0 + iVar10) = (uint)*(byte *)((uint)*pbVar7 + (int)local_e0);
          pbVar7 = pbVar7 + 1;
          iVar10 = iVar10 + 4;
          uVar5 = uVar5 - 1;
        } while (uVar5 != 0);
      }
      puVar4 = (undefined4 *)((int)this + 0xd0);
      FUN_007996e0(puVar4);
      Terrain_AppendMappingDetailParameters(*(void **)((int)this + 0x68),puVar4,local_104,local_100)
      ;
      bVar1 = *(byte *)(local_f8 + 4);
      if (bVar14) {
        puVar17 = local_c0 + 4;
        pvVar11 = *(void **)((int)this + 0x68);
      }
      else {
        puVar17 = (uint *)0x0;
        pvVar11 = *(void **)((int)this + 0x68);
      }
      Terrain_AppendLayerTextureParameters
                (pvVar11,puVar4,local_104,local_100,(uint)(bVar1 >> 2),(int)local_c0,(int)puVar17,
                 uVar13);
      local_ec = 0.0;
      local_108 = (void *)1.0;
      if ((char)local_f8[2] == '\0') {
        local_ec = 1.0;
        local_108 = (void *)0x0;
      }
      iVar10 = 1;
      pfVar6 = &local_ec;
      uVar5 = HashLowercasedCStringFNV1("useAlphaBlending");
      FUN_007999d0(puVar4,uVar5,pfVar6,iVar10);
      iVar10 = 1;
      ppvVar18 = &local_108;
      uVar5 = HashLowercasedCStringFNV1("useZWrite");
      FUN_007999d0(puVar4,uVar5,ppvVar18,iVar10);
      if ((uVar13 < 4) && (uVar5 = 0, uVar13 != 0)) {
        do {
          local_90[1] = 0.0;
          local_90[2] = 0.0;
          local_90[3] = 0.0;
          uVar8 = (&DAT_0107b8d4)[uVar5];
          local_90[0] = 0.0;
          iVar10 = 4;
          local_90[(uint)*(byte *)((int)local_f8 + uVar5 + 0x10) + (uint)(bVar1 >> 2) * -4] = 1.0;
          FUN_007999d0((void *)((int)this + 0xd0),uVar8,local_90,iVar10);
          uVar5 = uVar5 + 1;
        } while (uVar5 < uVar13);
      }
      iVar10 = 1;
      if (bVar2) {
        pcVar15 = "bIsLotTerrainBB";
      }
      else {
        pcVar15 = "bIsLotTerrain";
      }
      pfVar6 = &local_e8;
      uVar13 = HashLowercasedCStringFNV1(pcVar15);
      piVar12 = (int *)((int)this + 0xd0);
      FUN_007999d0(piVar12,uVar13,pfVar6,iVar10);
      uVar8 = FUN_00624bc0((int)param_2);
      if ((char)uVar8 != '\0') {
        iVar10 = 1;
        pfVar6 = &local_e8;
        uVar13 = HashLowercasedCStringFNV1("bIsDivingLot");
        FUN_007999d0(piVar12,uVar13,pfVar6,iVar10);
      }
      puVar4 = local_e4;
      piVar9 = (int *)local_e4[1];
      if (piVar9 < (int *)local_e4[2]) {
        local_e4[1] = piVar9 + 4;
        if (piVar9 != (int *)0x0) {
          *piVar9 = 0;
          piVar9[1] = 0;
          piVar9[2] = 0;
          piVar9[3] = 0;
        }
      }
      else {
        local_d0 = (int *)0x0;
        local_cc = (int *)0x0;
        local_c8 = 0;
        local_c4 = 0;
        FUN_00c80a10(local_e4,piVar9,(int *)&local_d0);
        if (local_cc != (int *)0x0) {
          (**(code **)(*local_cc + 4))();
        }
        if (local_d0 != (int *)0x0) {
          (**(code **)(*local_d0 + 4))();
        }
      }
      iVar10 = puVar4[1];
      puVar4 = (undefined4 *)FUN_004e4520(0x40,8,0,"Terrain/LotMaterialDef",0);
      if (puVar4 == (undefined4 *)0x0) {
        piVar9 = (int *)0x0;
      }
      else {
        piVar9 = (int *)FUN_006cb210(puVar4);
        if (piVar9 != (int *)0x0) {
          (**(code **)*piVar9)();
        }
      }
      uVar8 = FUN_006cb120(piVar9,piVar12);
      if ((char)uVar8 != '\0') {
        uVar13 = HashLowercasedCStringFNV1("LotTerrain");
        FUN_009de9b0(piVar9,uVar13);
        piVar12 = *(int **)(iVar10 + -0x10);
        if (piVar9 != piVar12) {
          if (piVar9 != (int *)0x0) {
            (**(code **)*piVar9)();
          }
          *(int **)(iVar10 + -0x10) = piVar9;
          if (piVar12 != (int *)0x0) {
            (**(code **)(*piVar12 + 4))();
          }
        }
      }
      if (piVar9 != (int *)0x0) {
        (**(code **)(*piVar9 + 4))();
      }
      local_f8 = (int *)*local_f8;
    } while (local_f8 != local_fc);
    puVar4 = local_e4;
  }
  if ((local_64 != (undefined1 *)0x0) && (local_64 != local_54)) {
    Memory_FreeIfNonNull(local_64);
  }
  if (local_e0 != (void *)0x0) {
    Memory_FreeIfNonNull(local_e0);
  }
  return puVar4;
}

