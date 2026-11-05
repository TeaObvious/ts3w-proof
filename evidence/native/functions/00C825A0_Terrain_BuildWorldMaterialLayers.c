/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67: World layer producer stores opposite scalar0/1 useAlphaBlending/useZWrite,
   constructs staticTerrain materials and separate TerrainVisualization path. Preserve layer
   identity/order; blended extra layers can intentionally disable writes. Exact doghouse material
   identity and observed symptom unresolved. */

void __thiscall Terrain_BuildWorldMaterialLayers(void *this,int param_1,char param_2,char param_3)

{
  char *pcVar1;
  uint *this_00;
  byte bVar2;
  int iVar3;
  bool bVar4;
  undefined1 *puVar5;
  char cVar6;
  int *piVar7;
  int iVar8;
  uint uVar9;
  int iVar10;
  undefined4 *puVar11;
  int *piVar12;
  undefined4 uVar13;
  byte *pbVar14;
  uint uVar15;
  uint uVar16;
  char *apcStackY_454 [220];
  undefined4 uVar17;
  undefined4 uVar18;
  float *pfVar19;
  char **ppcVar20;
  void *pvVar21;
  undefined4 uVar22;
  undefined4 uVar23;
  int *local_b0;
  int *local_ac;
  uint local_a4;
  float local_9c;
  int local_98;
  int *local_94;
  float local_90;
  float local_8c;
  char *local_88 [5];
  float local_74;
  int local_70;
  int iStack_6c;
  int local_68;
  float local_64 [4];
  undefined1 *local_54;
  undefined1 *local_50;
  undefined1 local_40 [64];
  
  piVar7 = (int *)FUN_008c2c70(*(int *)((int)this + 100));
  local_94 = piVar7;
  FUN_00c85c10(param_1);
  if ((*(int *)(param_1 + 0x7c) != 0) || (*(int *)(param_1 + 0x84) != 0)) {
    iVar10 = *(int *)(param_1 + 4);
    local_8c = *(float *)(param_1 + 8);
    local_98 = *(int *)(param_1 + 0xc);
    iVar3 = *(int *)(param_1 + 0x10);
    if ((piVar7 != (int *)0x0) && ((*(byte *)((int)this + 0x140) & 6) == 0)) {
      FUN_00c216e0(piVar7,1);
    }
    uVar15 = *(int *)(param_1 + 0x124) - *(int *)(param_1 + 0x120);
    uVar16 = uVar15 + 3 >> 2;
    if ((param_2 != '\0') || (*(int *)(param_1 + 0xc4) - *(int *)(param_1 + 0xc0) >> 2 != uVar16)) {
      this_00 = (uint *)(param_1 + 0xc0);
      FUN_006ae2c0(this_00);
      piVar7 = *(int **)(param_1 + 0xc4);
      uVar9 = *this_00;
      local_90 = 0.0;
      if ((uint)((int)((int)piVar7 - uVar9) >> 2) < uVar16) {
        FUN_00aebd30(this_00,piVar7,(int *)(uVar16 - ((int)((int)piVar7 - uVar9) >> 2)),
                     (int *)&local_90);
      }
      else {
        FUN_00aebb30(this_00,(int *)(uVar9 + uVar16 * 4),piVar7);
      }
    }
    local_9c = 1.0;
    bVar4 = false;
    if (*(char *)(*(int *)((int)this + 100) + 0x1f) == '\0') {
      bVar4 = true;
      if ((*(char *)(*(int *)((int)this + 100) + 0x1c) == '\0') && (param_3 == '\0')) {
        cVar6 = '\x01';
      }
      else {
        cVar6 = '\0';
      }
      Terrain_UpdateBlendMaskTextures(this,param_1,param_2,*(int *)(param_1 + 0x120),uVar15,cVar6);
    }
    if ((((*(char *)(*(int *)((int)this + 100) + 0x1c) != '\0') ||
         (*(char *)(*(int *)((int)this + 100) + 0x1d) != '\0')) && (*(int *)(param_1 + 0xd8) == 0))
       && (iVar8 = FUN_00722ed0(param_1 + 0xa8), iVar8 == 0)) {
      TerrainKey_MakeAuxiliary((longlong *)&local_74,iVar10,(int)local_8c,5);
      TextureProxy_SubmitKey((void *)(param_1 + 0xa8),(uint *)&local_74,0,0,0);
    }
    local_54 = local_40;
    local_50 = local_40;
    FUN_0044fd10(&local_54,uVar15);
    uVar9 = 0;
    if (uVar16 != 0) {
      do {
        *(undefined4 *)(local_54 + uVar9 * 4) =
             *(undefined4 *)(*(int *)(param_1 + 0xc0) + uVar9 * 4);
        uVar9 = uVar9 + 1;
      } while (uVar9 < uVar16);
    }
    local_b0 = *(int **)(param_1 + 0x8c);
    local_88[4] = *(char **)(param_1 + 0x90);
    if (local_b0 != (int *)local_88[4]) {
      do {
        puVar5 = local_54;
        iVar10 = 0;
        pbVar14 = (byte *)((int)local_b0 + 0xc);
        if (*(char *)((int)local_b0 + 3) == '\0') {
          uVar16 = *(uint *)((int)local_b0 + 8);
          local_64[0] = 0.0;
          local_64[1] = 0.0;
          local_64[2] = 0.0;
          local_64[3] = 0.0;
          local_88[0] = (char *)0x0;
          local_88[1] = (char *)0x0;
          local_88[2] = (char *)0x0;
          local_88[3] = (char *)0x0;
          if (uVar16 != 0) {
            local_a4 = uVar16;
            do {
              bVar2 = *pbVar14;
              *(undefined4 *)((int)local_64 + iVar10) =
                   *(undefined4 *)(puVar5 + (uint)(bVar2 >> 2) * 4);
              *(uint *)((int)local_88 + iVar10) =
                   (uint)*(byte *)((uint)bVar2 + *(int *)(param_1 + 0x120));
              pbVar14 = pbVar14 + 1;
              iVar10 = iVar10 + 4;
              local_a4 = local_a4 - 1;
            } while (local_a4 != 0);
          }
          if (*(char *)((int)local_b0 + 4) == '\0') {
            piVar7 = (int *)((int)this + 0xd0);
            FUN_007996e0(piVar7);
            Terrain_AppendMappingDetailParameters
                      (*(void **)((int)this + 0x68),piVar7,local_98,iVar3);
            bVar2 = *(byte *)((int)local_b0 + 0xc);
            if (bVar4) {
              pfVar19 = local_64;
            }
            else {
              pfVar19 = (float *)0x0;
            }
            Terrain_AppendLayerTextureParameters
                      (*(void **)((int)this + 0x68),piVar7,local_98,iVar3,(uint)(bVar2 >> 2),
                       (int)local_88,(int)pfVar19,uVar16);
            local_8c = 0.0;
            local_90 = 1.0;
            if ((char)*local_b0 == '\0') {
              local_8c = 1.0;
              local_90 = 0.0;
            }
            iVar10 = 1;
            pfVar19 = &local_8c;
            uVar9 = HashLowercasedCStringFNV1("useAlphaBlending");
            FUN_007999d0(piVar7,uVar9,pfVar19,iVar10);
            iVar10 = 1;
            pfVar19 = &local_90;
            uVar9 = HashLowercasedCStringFNV1("useZWrite");
            FUN_007999d0(piVar7,uVar9,pfVar19,iVar10);
            if ((uVar16 < 4) && (uVar9 = 0, uVar16 != 0)) {
              do {
                uVar13 = (&DAT_0107b8d4)[uVar9];
                local_70 = 0;
                iStack_6c = 0;
                local_68 = 0;
                iVar10 = 4;
                pfVar19 = &local_74;
                local_74 = 0.0;
                local_88[(uint)*(byte *)((int)local_b0 + uVar9 + 0xc) + (uint)(bVar2 >> 2) * -4 + 5]
                     = (char *)1.0;
                FUN_007999d0(piVar7,uVar13,pfVar19,iVar10);
                uVar9 = uVar9 + 1;
              } while (uVar9 < uVar16);
            }
            if (*(char *)((int)local_b0 + 2) != '\0') {
              iVar10 = 1;
              pfVar19 = &local_9c;
              uVar16 = HashLowercasedCStringFNV1("lightAndFog");
              FUN_007999d0(piVar7,uVar16,pfVar19,iVar10);
              FUN_00c235b0(*(void **)((int)this + 0x68),piVar7,local_98,iVar3,
                           *(int *)(param_1 + 0x74),*(int *)(param_1 + 0xd8));
            }
            FUN_00c23780(*(void **)((int)this + 0x68),piVar7,local_98,iVar3,*(int *)(param_1 + 0xdc)
                        );
            puVar11 = (undefined4 *)FUN_004e4520(0x40,8,0,"Terrain/MaterialDef",0);
            if (puVar11 == (undefined4 *)0x0) {
              piVar12 = (int *)0x0;
            }
            else {
              piVar12 = (int *)FUN_006cb210(puVar11);
              if (piVar12 != (int *)0x0) {
                (**(code **)*piVar12)();
              }
            }
            uVar13 = FUN_006cb120(piVar12,piVar7);
            if ((char)uVar13 == '\0') {
              piVar7 = *(int **)((int)local_b0 + 0x44);
              if (piVar7 != (int *)0x0) {
                pcVar1 = (char *)((int)local_b0 + 0x44);
                pcVar1[0] = '\0';
                pcVar1[1] = '\0';
                pcVar1[2] = '\0';
                pcVar1[3] = '\0';
                iVar10 = *piVar7;
LAB_00c82a8a:
                (**(code **)(iVar10 + 4))();
              }
            }
            else {
              uVar16 = HashLowercasedCStringFNV1("staticTerrain");
              FUN_009de9b0(piVar12,uVar16);
              piVar7 = *(int **)((int)local_b0 + 0x44);
              if (piVar12 != piVar7) {
                if (piVar12 != (int *)0x0) {
                  (**(code **)*piVar12)();
                }
                *(int **)((int)local_b0 + 0x44) = piVar12;
                if (piVar7 != (int *)0x0) {
                  iVar10 = *piVar7;
                  goto LAB_00c82a8a;
                }
              }
            }
            if (piVar12 != (int *)0x0) {
              (**(code **)(*piVar12 + 4))();
            }
          }
          else {
            piVar7 = *(int **)((int)local_b0 + 0x44);
            pcVar1 = (char *)((int)local_b0 + 0x44);
            if (piVar7 != (int *)0x0) {
              pcVar1[0] = '\0';
              pcVar1[1] = '\0';
              pcVar1[2] = '\0';
              pcVar1[3] = '\0';
              (**(code **)(*piVar7 + 4))();
            }
            FUN_00c7f6b0(this,param_1,'\0',(undefined4 *)pcVar1);
          }
          piVar7 = *(int **)((int)local_b0 + 0x48);
          if (piVar7 != (int *)0x0) {
            pcVar1 = (char *)((int)local_b0 + 0x48);
            pcVar1[0] = '\0';
            pcVar1[1] = '\0';
            pcVar1[2] = '\0';
            pcVar1[3] = '\0';
            (**(code **)(*piVar7 + 4))();
          }
        }
        local_b0 = (int *)((int)local_b0 + 0x50);
      } while (local_b0 != (int *)local_88[4]);
    }
    if (local_94 != (int *)0x0) {
      local_74 = *(float *)(param_1 + 4);
      local_70 = *(int *)(param_1 + 8);
      iStack_6c = *(int *)(param_1 + 0x14) + (int)local_74;
      local_68 = *(int *)(param_1 + 0x18) + local_70;
      local_88[0] = (char *)0x0;
      local_88[1] = (char *)0x0;
      local_88[2] = (char *)0x0;
      local_88[3] = "Terrain/TerrainBlendMap/worldBuilderBlendLayerIds";
      FUN_00c22190(local_94,(int *)&local_74,local_88);
      piVar7 = (int *)((int)this + 0xd0);
      bVar4 = false;
      FUN_007996e0(piVar7);
      local_b0 = (int *)0x0;
      local_ac = (int *)0x0;
      if ((*(byte *)((int)this + 0x140) & 0x10) != 0) {
        iVar10 = 1;
        pfVar19 = &local_9c;
        uVar16 = HashLowercasedCStringFNV1("bIsWorldChunkBoundaries");
        FUN_007999d0(piVar7,uVar16,pfVar19,iVar10);
        if (8 < uVar15) {
          local_64[0] = 1.0;
          iVar10 = 4;
          pfVar19 = local_64;
          local_64[1] = 0.0;
          local_64[2] = 0.0;
          local_64[3] = 0.5;
          uVar15 = HashLowercasedCStringFNV1("WorldBuilderBoundaryColor");
          FUN_007999d0(piVar7,uVar15,pfVar19,iVar10);
        }
        bVar4 = true;
      }
      if ((*(byte *)((int)this + 0x140) & 1) != 0) {
        iVar10 = 1;
        pfVar19 = &local_9c;
        uVar15 = HashLowercasedCStringFNV1("bIsWorldGrid");
        FUN_007999d0(piVar7,uVar15,pfVar19,iVar10);
        bVar4 = true;
      }
      if ((*(byte *)((int)this + 0x140) & 8) != 0) {
        iVar10 = 1;
        pfVar19 = &local_9c;
        uVar15 = HashLowercasedCStringFNV1("bIsWorldBrush");
        FUN_007999d0(piVar7,uVar15,pfVar19,iVar10);
        bVar4 = true;
      }
      pcVar1 = local_88[0];
      if ((*(byte *)((int)this + 0x140) & 6) != 0) {
        for (; pcVar1 != local_88[1]; pcVar1 = pcVar1 + 1) {
          if (*pcVar1 == '\x01') {
            if (pcVar1 != local_88[1]) {
              iVar10 = 1;
              pfVar19 = &local_9c;
              uVar15 = HashLowercasedCStringFNV1("bIsWorldMask");
              FUN_007999d0(piVar7,uVar15,pfVar19,iVar10);
              bVar4 = true;
              puVar11 = (undefined4 *)FUN_004e4500(0x34,"Terrain/MaskTexture",0);
              if ((puVar11 != (undefined4 *)0x0) &&
                 (piVar12 = Texture_Construct(puVar11), piVar12 != (int *)0x0)) {
                (**(code **)(*piVar12 + 4))();
                local_b0 = piVar12;
              }
              FUN_00c231d0(*(void **)((int)this + 0x68),local_b0,*(int *)(param_1 + 0xc),
                           *(int *)(param_1 + 0x10),1,'\x01');
              uVar15 = HashLowercasedCStringFNV1("blendMap");
              FUN_00799ab0(piVar7,uVar15);
            }
            break;
          }
        }
      }
      pcVar1 = local_88[0];
      if (((*(byte *)((int)this + 0x140) & 0x40) == 0) ||
         (cVar6 = FUN_00c204c0((int)local_94), pcVar1 = local_88[0], cVar6 == '\0')) {
        for (; pcVar1 != local_88[1]; pcVar1 = pcVar1 + 1) {
          if (*pcVar1 == '\0') {
            if (pcVar1 != local_88[1]) goto LAB_00c82d0f;
            break;
          }
        }
      }
      else {
LAB_00c82d0f:
        iVar10 = 1;
        pfVar19 = &local_9c;
        uVar15 = HashLowercasedCStringFNV1("bIsWorldRoutable");
        FUN_007999d0(piVar7,uVar15,pfVar19,iVar10);
        bVar4 = true;
        puVar11 = (undefined4 *)FUN_004e4500(0x34,"Terrain/MaskTexture",0);
        if ((puVar11 != (undefined4 *)0x0) &&
           (piVar12 = Texture_Construct(puVar11), piVar12 != (int *)0x0)) {
          (**(code **)(*piVar12 + 4))();
          local_ac = piVar12;
        }
        FUN_00c231d0(*(void **)((int)this + 0x68),local_ac,*(int *)(param_1 + 0xc),
                     *(int *)(param_1 + 0x10),0,'\x01');
        uVar15 = HashLowercasedCStringFNV1("routingMap");
        FUN_00799ab0(piVar7,uVar15);
        iVar10 = 1;
        ppcVar20 = local_88 + 4;
        local_88[4] = (char *)(float)(*(byte *)((int)this + 0x140) >> 6 & 1);
        uVar15 = HashLowercasedCStringFNV1("ShowPhysicallyUnroutableTerrain");
        FUN_007999d0(piVar7,uVar15,ppcVar20,iVar10);
        iVar10 = 1;
        pvVar21 = (void *)((int)this + 0x144);
        uVar15 = HashLowercasedCStringFNV1("RoutableSurfaceOpacity");
        FUN_007999d0(piVar7,uVar15,pvVar21,iVar10);
        if ((*(byte *)((int)this + 0x140) & 0x40) != 0) {
          if (*(int *)(*(int *)((int)this + 0x14) + 0x1b4) == 0) {
            uVar15 = HashLowercasedCStringFNV1("normalMap");
            FUN_00799ab0(piVar7,uVar15);
          }
          else {
            puVar11 = (undefined4 *)FUN_00c30c80((longlong *)local_64,local_98,iVar3,'\x01');
            uVar13 = *puVar11;
            uVar23 = 0;
            uVar17 = puVar11[1];
            uVar18 = puVar11[2];
            uVar22 = puVar11[3];
            uVar15 = HashLowercasedCStringFNV1("normalMap");
            MaterialParams_AppendTextureKey(piVar7,uVar15,uVar13,uVar17,uVar18,uVar22,uVar23);
          }
        }
      }
      iVar10 = FUN_00c85400(param_1);
      if (iVar10 != 0) {
        piVar12 = *(int **)(iVar10 + 0x48);
        if (piVar12 != (int *)0x0) {
          *(undefined4 *)(iVar10 + 0x48) = 0;
          (**(code **)(*piVar12 + 4))();
        }
        piVar12 = *(int **)(iVar10 + 0x44);
        if (piVar12 != (int *)0x0) {
          *(undefined4 *)(iVar10 + 0x44) = 0;
          (**(code **)(*piVar12 + 4))();
        }
        if (bVar4) {
          Terrain_AppendMappingDetailParameters
                    (*(void **)((int)this + 0x68),piVar7,*(int *)(param_1 + 0xc),
                     *(int *)(param_1 + 0x10));
          puVar11 = (undefined4 *)FUN_004e4520(0x40,8,0,"Terrain/MaterialDef",0);
          if (puVar11 == (undefined4 *)0x0) {
            piVar12 = (int *)0x0;
          }
          else {
            piVar12 = (int *)FUN_006cb210(puVar11);
            if (piVar12 != (int *)0x0) {
              (**(code **)*piVar12)();
            }
          }
          uVar13 = FUN_006cb120(piVar12,piVar7);
          if ((char)uVar13 != '\0') {
            uVar15 = HashLowercasedCStringFNV1("TerrainVisualization");
            FUN_009de9b0(piVar12,uVar15);
            piVar7 = *(int **)(iVar10 + 0x44);
            if (piVar12 != piVar7) {
              if (piVar12 != (int *)0x0) {
                (**(code **)*piVar12)();
              }
              *(int **)(iVar10 + 0x44) = piVar12;
              if (piVar7 != (int *)0x0) {
                (**(code **)(*piVar7 + 4))();
              }
            }
          }
          if (piVar12 != (int *)0x0) {
            (**(code **)(*piVar12 + 4))();
          }
        }
      }
      if (local_ac != (int *)0x0) {
        (**(code **)(*local_ac + 8))();
      }
      if (local_b0 != (int *)0x0) {
        (**(code **)(*local_b0 + 8))();
      }
      if (local_88[0] != (char *)0x0) {
        Memory_FreeIfNonNull(local_88[0]);
      }
    }
    local_94 = (int *)0x0;
    FUN_00c7f6b0(this,param_1,'\x01',&local_94);
    piVar7 = *(int **)(param_1 + 0x108);
    if (piVar7 != (int *)0x0) {
      *(void **)(param_1 + 0x108) = (void *)0x0;
      (**(code **)(*piVar7 + 4))();
    }
    uVar15 = FUN_006caf60();
    piVar7 = local_94;
    MaterialDef_AcquireMaterial(local_94,(void **)(param_1 + 0x108),uVar15);
    FUN_00c81050(param_1);
    if (piVar7 != (int *)0x0) {
      (**(code **)(*piVar7 + 4))();
    }
    if ((local_54 != (undefined1 *)0x0) && (local_54 != local_40)) {
      Memory_FreeIfNonNull(local_54);
    }
  }
  return;
}

